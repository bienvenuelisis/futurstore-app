import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:futurstore/core/data/models/item_category.dart';
import 'package:futurstore/core/features/l10n/l10n.dart';
import 'package:futurstore/core/presentation/views/loading_error_screen_view.dart';
import 'package:futurstore/features/apps/widgets/categories_tab_bar.dart';
import 'package:futurstore/features/apps/widgets/category_tab.dart';
import 'package:futurstore/features/games/controllers/providers/games_state_provider.dart';
import 'package:futurstore/features/games/controllers/providers/selected_category_provider.dart';

import 'games_grid_view.dart';

class GamesView extends ConsumerStatefulWidget {
  const GamesView({
    required this.categories,
    super.key,
    this.selectedCategory,
  });

  final List<ItemCategory> categories;
  final ItemCategory? selectedCategory;

  @override
  ConsumerState<GamesView> createState() => _GamesViewState();
}

class _GamesViewState extends ConsumerState<GamesView>
    with SingleTickerProviderStateMixin, WidgetsBindingObserver {
  static const _categoryScrollToTopDuration = Duration(milliseconds: 300);
  late ProviderSubscription<ItemCategory?> _onTabChangedSubs;

  final Map<ItemCategory?, ScrollController> _controllers =
      <ItemCategory?, ScrollController>{};

  late final TabController _tabController;

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      // ignore: discarded_futures
      ref.read(gamesStateProvider).onResumed(
            widget.categories[_tabController.index],
          );
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _controllers.forEach((_, controller) => controller.dispose());
    _tabController
      ..removeListener(_onTabChanged)
      ..dispose();
    _onTabChangedSubs.close();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _tabController = TabController(
      length: widget.categories.length,
      vsync: this,
    )..addListener(_onTabChanged);
    for (final category in widget.categories) {
      _controllers[category] = ScrollController();
    }
    if (widget.categories.isNotEmpty) {
      Future.delayed(Duration.zero, _onTabChanged);
    }
    _onTabChangedSubs = ref.listenManual(
      selectedGameCategoryProvider,
      (previous, next) {
        final selectedCategory = next;

        if (selectedCategory != previous && selectedCategory != null) {
          final index = widget.categories.indexOf(selectedCategory);
          if (index != -1 && index != _tabController.index) {
            _tabController.animateTo(
              widget.categories.indexOf(selectedCategory),
              duration: _categoryScrollToTopDuration,
            );
          }
        }
      },
    );
  }

  void _onTabChanged() {
    ref.read(selectedGameCategoryProvider.notifier).state =
        widget.categories[_tabController.index];
    // ignore: discarded_futures
    ref.read(gamesStateProvider).onAppsRequested(
          widget.categories[_tabController.index],
        );
  }

  @override
  Widget build(BuildContext context) {
    final appsState = ref.watch(gamesStateProvider);

    return Column(
      children: [
        CategoriesTabBar(
          controller: _tabController,
          tabs: widget.categories
              .map(
                (category) => CategoryTab(
                  categoryName: category.label,
                  onDoubleTap: () async {
                    await _controllers[category]?.animateTo(
                      0,
                      duration: _categoryScrollToTopDuration,
                      curve: Curves.ease,
                    );
                  },
                ),
              )
              .toList(),
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: widget.categories.map(
              (category) {
                if (appsState.state.status == AppsStatus.loading) {
                  return const Center(
                    child: CircularProgressIndicator.adaptive(),
                  );
                }

                if (appsState.state.apps[category]?.isEmpty ?? false) {
                  return LoadingErrorScreenView(
                    error: context.l10n.noGamesFoundInThisCategory,
                    retry: _onTabChanged,
                  );
                }

                return GamesGridView(
                  controller: _controllers[category],
                  games: appsState.state.apps[category] ?? [],
                );
              },
            ).toList(),
          ),
        ),
      ],
    );
  }
}
