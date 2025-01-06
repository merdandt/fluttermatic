import 'package:{{project_name.snakeCase()}}_ui/{{project_name.snakeCase()}}_ui.dart';
import 'package:flutter/material.dart';

class SpacingPage extends StatelessWidget {
  const SpacingPage({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(builder: (_) => const SpacingPage());
  }

  @override
  Widget build(BuildContext context) {
    const spacingList = [
      _SpacingItem(spacing: {{short_name.upperCase()}}Spacing.xxxs, name: 'xxxs'),
      _SpacingItem(spacing: {{short_name.upperCase()}}Spacing.xxs, name: 'xxs'),
      _SpacingItem(spacing: {{short_name.upperCase()}}Spacing.xs, name: 'xs'),
      _SpacingItem(spacing: {{short_name.upperCase()}}Spacing.sm, name: 'sm'),
      _SpacingItem(spacing: {{short_name.upperCase()}}Spacing.md, name: 'md'),
      _SpacingItem(spacing: {{short_name.upperCase()}}Spacing.lg, name: 'lg'),
      _SpacingItem(spacing: {{short_name.upperCase()}}Spacing.xlg, name: 'xlg'),
      _SpacingItem(spacing: {{short_name.upperCase()}}Spacing.xxlg, name: 'xxlg'),
      _SpacingItem(spacing: {{short_name.upperCase()}}Spacing.xxxlg, name: 'xxxlg'),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Spacing')),
      body: ListView.builder(
        itemCount: spacingList.length,
        itemBuilder: (_, index) => spacingList[index],
      ),
    );
  }
}

class _SpacingItem extends StatelessWidget {
  const _SpacingItem({required this.spacing, required this.name});

  final double spacing;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all({{short_name.upperCase()}}Spacing.sm),
      child: Row(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                color: context.theme.colorScheme.primary,
                width: {{short_name.upperCase()}}Spacing.xxs,
                height: {{short_name.upperCase()}}Spacing.lg,
              ),
              Container(
                width: spacing,
                height: {{short_name.upperCase()}}Spacing.lg,
                color: context.theme.colorScheme.secondary,
              ),
              Container(
                color: context.theme.colorScheme.primary,
                width: {{short_name.upperCase()}}Spacing.xxs,
                height: {{short_name.upperCase()}}Spacing.lg,
              ),
            ],
          ),
          const SizedBox(width: {{short_name.upperCase()}}Spacing.sm),
          Text(name),
        ],
      ),
    );
  }
}
