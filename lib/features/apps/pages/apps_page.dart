import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:futurstore/features/apps/controllers/providers/apps_categories_provider.dart';
import 'package:futurstore/features/apps/pages/apps_view.dart';
import 'package:futurstore/features/commons/views/loading_error_screen_view.dart';

class AppsPage extends ConsumerWidget {
  const AppsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categories = ref.watch(appsCategoriesProvider);

    return categories.maybeWhen(
      data: (data) {
        return AppsView(
          categories: data,
        );
      },
      error: (error, _) => LoadingErrorScreenView(
        retry: () {
          // ignore: unused_result
          ref.refresh(appsCategoriesProvider);
        },
      ),
      loading: () => const Center(
        child: CircularProgressIndicator.adaptive(),
      ),
      orElse: () => const SizedBox.shrink(),
    );
  }
}
