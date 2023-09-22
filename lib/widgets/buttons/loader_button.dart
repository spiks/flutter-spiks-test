import 'package:flutter_spiks_test/core/themes/theme_class.dart';
import 'package:flutter/cupertino.dart';

class LoaderButton extends StatelessWidget {
  final bool loading;
  final VoidCallback? onPressed;
  final String title;

  const LoaderButton({
    super.key,
    required this.loading,
    this.onPressed,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: CupertinoButton(
        padding: const EdgeInsets.symmetric(vertical: 16),
        borderRadius: const BorderRadius.all(Radius.circular(24)),
        onPressed: loading ? null : onPressed,
        color: context.scheme.primary,
        disabledColor: context.scheme.primaryContainer,
        child: loading
            ? const CupertinoActivityIndicator()
            : Text(
                title,
                style: context.textTheme.labelLarge?.copyWith(
                  color: context.scheme.onPrimary,
                ),
              ),
      ),
    );
  }
}
