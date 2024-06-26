import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:futurstore/core/features/l10n/l10n.dart';
import 'package:futurstore/core/presentation/views/loading_error_screen_view.dart';

import '../controllers/providers/apps_state_provider.dart';
import 'apps_grid_view.dart';

class AppsView extends ConsumerStatefulWidget {
  const AppsView({
    super.key,
  });

  @override
  ConsumerState<AppsView> createState() => _AppsViewState();
}

class _AppsViewState extends ConsumerState<AppsView>
    with SingleTickerProviderStateMixin, WidgetsBindingObserver {
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      // ignore: discarded_futures
      ref.read(appsStateProvider).onResumed();
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);

    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance
      ..addObserver(this)
      ..addPostFrameCallback(
        (_) async {
          ref.read(appsStateProvider).onAppsRefreshRequested();
        },
      );
  }

  @override
  Widget build(BuildContext context) {
    final appsState = ref.watch(appsStateProvider);

    if (appsState.state.status == AppsStatus.loading) {
      return const Center(
        child: CircularProgressIndicator.adaptive(),
      );
    }

    if (appsState.state.status == AppsStatus.failure ||
        appsState.state.apps.isEmpty) {
      return LoadingErrorScreenView(
        error: appsState.state.error ?? context.l10n.noAppsFound,
        retry: () async {
          ref.read(appsStateProvider).onAppsRefreshRequested();
        },
      );
    }

    return AppsGridView(
      apps: appsState.state.apps,
    );
  }
}
