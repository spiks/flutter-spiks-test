import 'package:flutter/material.dart';
import 'package:flutter_spiks_test/core/themes/theme_class.dart';


void wrappedModalBottomSheet(
  BuildContext context, {
  required Widget child,
  bool isScrollControlled = true,
  bool isDismissible = true,

  /// стоит учитывать факт того, чтобы не было кнопок под handle
  bool showDragHandle = false,
  EdgeInsets padding = const EdgeInsets.only(top: 24),
}) =>
    showModalBottomSheet(
      enableDrag: isDismissible,
      isDismissible: isDismissible,
      isScrollControlled: isScrollControlled,
      elevation: 0,
      useSafeArea: true,
      context: context,
      builder: (context) => Padding(
        padding: padding,
        child: Stack(
          children: [
            child,

            /// чёрточка aka dragHandle
            /// (модалку не закрыть, потому что нет статичных элементов)
            if (showDragHandle)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 4,
                    width: 32,
                    margin: const EdgeInsets.only(top: 16),
                    decoration: BoxDecoration(
                      color: context.scheme.primaryContainer,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(16),
                      ),
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
