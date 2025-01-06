import '../../{{project_name.snakeCase()}}_ui.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class UIModals {
  UIModals.of(this.context);

  final BuildContext context;

  showToast({
    required String message,
    required Widget content,
    Color? color,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: const Duration(seconds: 2),
        shape: const RoundedRectangleBorder(
          borderRadius: UIRadiuses.maximum,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        behavior: SnackBarBehavior.floating,
        content: content,
      ),
    );
  }

  Future<T?> showCustomBottomSheet<T>({
    required final WidgetBuilder builder,
    final bool useRoot = true,
  }) =>
      showModalBottomSheet<T>(
        context: context,
        isScrollControlled: true,
        useSafeArea: true,
        useRootNavigator: useRoot,
        backgroundColor: context.theme.scaffoldBackgroundColor,
        builder: (final context) => Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.viewInsetsOf(context).bottom,
          ),
          child: builder(context),
        ),
      );
}

Future<T?> showActionDialog<T>({
  required final BuildContext context,
  required final String title,
  required final Widget? child,
}) =>
    showAdaptiveDialog<T>(
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) => _ActionDialogBody(
            title: title,
            child: child,
          ),
        );
      },
    );

class _ActionDialogBody extends StatelessWidget {
  const _ActionDialogBody({
    this.title,
    this.child,
  });

  final String? title;

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: context.colorScheme.surface,
      contentPadding: const EdgeInsets.symmetric(
        horizontal: UISpacing.spaceUnit,
        vertical: UISpacing.xxs,
      ),
      title: Text(
        title ?? '',
        textAlign: TextAlign.center,
        style: context.textTheme.displaySmall,
      ),
      content: CustomScrollView(slivers: [SliverToBoxAdapter(child: child)]),
    );
  }
}

Future<T?> showInfoDialog<T>({
  required final BuildContext context,
  required final String confirmationText,
  final String? content,
  final String? title,
}) =>
    showAdaptiveDialog<T>(
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) => _InfoDialogBody(
            content: content,
            confirmationText: confirmationText,
            title: title,
          ),
        );
      },
    );

class _InfoDialogBody extends StatelessWidget {
  const _InfoDialogBody({
    this.content,
    this.title,
    required this.confirmationText,
  });

  final String? content;
  final String? title;
  final String confirmationText;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(UISpacing.spaceUnit),
      ),
      backgroundColor: context.colorScheme.surface,
      actionsPadding: const EdgeInsets.all(UISpacing.xxxs),
      title: title != null
          ? Text(
              title!,
              style: context.textTheme.bodyLarge,
            )
          : null,
      titlePadding: const EdgeInsets.all(UISpacing.xs),
      contentPadding: const EdgeInsets.all(UISpacing.xs),
      content: content != null
          ? Text(
              content!,
              style: context.textTheme.bodyLarge,
            )
          : null,
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(
            confirmationText,
            style: context.textTheme.bodyLarge?.copyWith(
              color: context.colorScheme.primary,
            ),
          ),
        ),
      ],
    );
  }
}

Future<T?> showYesNoDialog<T>({
  required final BuildContext context,
  required AsyncCallback onAgree,
  required final String title,
  required final String agreeText,
  required final String disagreeText,
}) =>
    showAdaptiveDialog<T>(
      context: context,
      builder: (context) {
        final navigator = Navigator.of(context);
        bool isLoading = false;

        return StatefulBuilder(
          builder: (context, setState) => _StatefullDialogBody(
            isLoading: isLoading,
            onAgree: () async {
              setState(() {
                isLoading = true;
              });
              await onAgree();
              navigator.pop(true);
            },
            title: title,
            agreeText: agreeText,
            disagreeText: disagreeText,
          ),
        );
      },
    );

class _StatefullDialogBody extends StatelessWidget {
  const _StatefullDialogBody({
    required this.onAgree,
    required this.title,
    required this.isLoading,
    required this.agreeText,
    required this.disagreeText,
  });
  final VoidCallback onAgree;
  final String title;
  final String agreeText;
  final String disagreeText;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: context.colorScheme.surface,
      title: Text(
        title,
        textAlign: TextAlign.center,
      ),
      actionsAlignment: MainAxisAlignment.center,
      alignment: Alignment.center,
      actions: [
        if (isLoading)
          CircularProgressIndicator(
            color: context.colorScheme.primary,
          )
        else
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                onPressed: () async {
                  Navigator.of(context).pop();
                },
                child: Text(
                  disagreeText,
                  style: context.textTheme.bodyLarge?.copyWith(
                    color: context.colorScheme.primary,
                  ),
                ),
              ),

              // else
              TextButton(
                onPressed: () async {
                  onAgree();
                },
                child: Text(
                  agreeText,
                  style: context.textTheme.bodyLarge?.copyWith(
                    color: context.colorScheme.primary,
                  ),
                ),
              ),
            ],
          ),
      ],
    );
  }
}
