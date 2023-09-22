import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../domain/bloc/network_handle_bloc.dart';

@RoutePage()
class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    return WillPopScope(
      onWillPop: () {
        return showConfirmationPopup(
          context,
          L10n.of(context).exit_warning,
        );
      },
      child: const MainPageNavigator(),
    );
  }
}

class MainPageNavigator extends StatefulWidget {
  const MainPageNavigator({super.key});

  @override
  _MainPageNavigatorState createState() => _MainPageNavigatorState();
}

class _MainPageNavigatorState extends State<MainPageNavigator> {
  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      duration: Duration.zero,
      routes: const [
       TherapistListRoute(),
      ],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);

        return Scaffold(
          body: child,
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
              splashColor: Colors.transparent
            ),
            child: BottomNavigationBar(
              showUnselectedLabels: false,
              showSelectedLabels: false,
              elevation: 0,
              type: BottomNavigationBarType.fixed,
              selectedIconTheme: const IconThemeData(
                color: Colors.black,
              ),
              backgroundColor: context.scheme.background,
              selectedLabelStyle: context.textTheme.labelSmall,
              unselectedLabelStyle: context.textTheme.labelSmall,
              unselectedItemColor: context.scheme.outline,
              // unselectedLabelStyle: ,
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  label: L10n.of(context).blog,
                  icon: _NavItem(
                    icon: OutlineIcons.newspaper,
                    text: L10n.of(context).blog,
                  ),
                  activeIcon: GradientMask(
                    gradient: GradientResources.primary3,
                    child: _NavItem(
                      icon: SolidIcons.newspaper,
                      text: L10n.of(context).blog,
                    ),
                  ),
                ),
                BottomNavigationBarItem(
                  label: L10n.of(context).therapists,
                  icon: _NavItem(
                    icon: OutlineIcons.percongroup,
                    text: L10n.of(context).therapists,
                  ),
                  activeIcon: GradientMask(
                    gradient: GradientResources.primary3,
                    child: _NavItem(
                      icon: SolidIcons.percongroup,
                      text: L10n.of(context).therapists,
                    ),
                  ),
                ),
              ],
              currentIndex: tabsRouter.activeIndex,
              onTap: (value) {
                tabsRouter.setActiveIndex(value);
              },
            ),
          ),
        );
      },
    );
  }
}

class _NavItem extends StatelessWidget {
  const _NavItem({
    required this.icon,
    required this.text,
  });

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 28),
        Text(
          text,
          style: context.textTheme.labelSmall?.copyWith(
            color: context.scheme.outline,
          ),
        ),
      ],
    );
  }
}
