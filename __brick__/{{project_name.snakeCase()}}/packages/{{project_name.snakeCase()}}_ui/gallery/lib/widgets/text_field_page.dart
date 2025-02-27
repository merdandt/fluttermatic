import 'package:{{project_name.snakeCase()}}_ui/{{project_name.snakeCase()}}_ui.dart';
import 'package:flutter/material.dart';

class TextFieldPage extends StatelessWidget {
  const TextFieldPage({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(builder: (_) => const TextFieldPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Text Field',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(UISpacing.lg),
        child: const Column(
          children: [
            // UITextField.emailTextField(
            //   onChanged: (_) {},
            // ),
            // const SizedBox(height: UISpacing.sm),
            // UITextField.passwordTextField(
            //   onChanged: (_) {},
            // ),
            // const SizedBox(height: UISpacing.sm),
            // UITextField(
            //   hintText: 'Default text field',
            //   onChanged: (_) {},
            // ),
          ],
        ),
      ),
    );
  }
}
