import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spiks_test/st/src/src.dart';

class DataEditField extends StatelessWidget {
  final List<TextInputFormatter>? inputFormatters;
  final String? placeholder;
  final TextEditingController controller;
  final FocusNode? focusNode;
  final TextInputType? keyboardType;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onChanged;
  final Widget? prefix;
  final TextCapitalization textCapitalization;

  const DataEditField({
    super.key,
    this.inputFormatters,
    this.placeholder,
    required this.controller,
    this.focusNode,
    this.keyboardType,
    this.validator,
    this.onChanged,
    this.prefix,
    this.textCapitalization = TextCapitalization.none,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CupertinoTextField(
          textCapitalization: textCapitalization,
          prefix: prefix,
          prefixMode: OverlayVisibilityMode.notEditing,
          keyboardType: keyboardType,
          placeholder: placeholder,
          focusNode: focusNode,
          inputFormatters: inputFormatters,
          controller: controller,
          placeholderStyle: context.textTheme.bodyLarge?.copyWith(
            color: context.scheme.tertiary.withOpacity(.4),
          ),
          style: context.textTheme.bodyLarge,
          onChanged: onChanged,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: BoxDecoration(
            color: context.scheme.primaryContainer.withOpacity(.3),
            borderRadius: const BorderRadius.all(Radius.circular(16)),
            border: Border.all(
              color: context.scheme.outlineVariant,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Text(
            validator?.call(controller.text) ?? ' ',
            style: context.textTheme.bodySmall?.copyWith(
              color: context.scheme.error,
            ),
          ),
        ),
      ],
    );
  }
}
