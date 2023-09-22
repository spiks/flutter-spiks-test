import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spiks_test/src/core/core.dart';
import 'package:flutter_spiks_test/src/features/therapist/domain/bloc/bloc.dart';
import 'package:flutter_spiks_test/src/features/therapist/domain/models/models.dart';
import 'package:flutter_spiks_test/src/src.dart';
import 'package:flutter_spiks_test/src/values/icons/outline_icons.dart';

class TherapistAppBar extends StatefulWidget implements PreferredSizeWidget {
  const TherapistAppBar({required this.controller});

  final DraggableScrollableController controller;

  @override
  State<TherapistAppBar> createState() => _TherapistAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(200);
}

class _TherapistAppBarState extends State<TherapistAppBar>
    with SingleTickerProviderStateMixin {
  late bool onTherapistBody;
  late final AnimationController animationController;

  @override
  void initState() {
    onTherapistBody = false;
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    widget.controller.addListener(() {
      if (widget.controller.isAttached) {
        if (widget.controller.pixels >= (MediaQuery.of(context).size.height) &&
            onTherapistBody == false) {
          animationController.forward();
          setState(() {
            onTherapistBody = true;
          });
        } else if (widget.controller.pixels <
                (MediaQuery.of(context).size.height) &&
            onTherapistBody == true) {
          animationController.reverse();
          setState(() {
            onTherapistBody = false;
          });
        }
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: onTherapistBody ? context.scheme.background : null,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: SafeArea(
        child: BlocSelector<TherapistDetailsBloc, TherapistDetailsState,
            TherapistDetail?>(
          selector: (state) => state.maybeWhen(
              orElse: () => null, fetched: (therapist) => therapist),
          builder: (context, therapist) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: context.router.pop,
                  icon: Icon(
                    OutlineIcons.arrowleft,
                    color:
                        onTherapistBody ? context.scheme.inverseSurface : null,
                    size: 24,
                  ),
                ),
                const Gap(8),
                if (therapist != null && onTherapistBody)
                  Expanded(
                    child: FadeTransition(
                      opacity: animationController,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Expanded(
                            child: Text(
                              '${therapist.name} ${therapist.surname}',
                              style: context.textTheme.bodyLarge,
                              textAlign: TextAlign.end,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          const Gap(8),
                          RoundedAvatar(
                            therapist.avatar,
                            size: 40,
                          ),
                        ],
                      ),
                    ),
                  ),
                // const Gap(8),
                // if (therapist != null)
                //   IconButton(
                //     onPressed: () {},
                //     icon: Icon(
                //       OutlineIcons.message,
                //       color: onTherapistBody
                //           ? context.scheme.primary
                //           : context.scheme.onBackground,
                //       size: 24,
                //     ),
                //   ),
              ],
            );
          },
        ),
      ),
    );
  }
}
