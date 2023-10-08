import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spiks_test/core/spacings/app_spacing.dart';
import 'package:flutter_spiks_test/core/themes/theme_class.dart';
import 'package:flutter_spiks_test/features/app/bloc/app_bloc.dart';
import 'package:flutter_spiks_test/features/therapists/presentation/widgets/bottom_nav_bar.dart';
import 'package:flutter_spiks_test/generated/l10n.dart';

/// Страница настройки приложения: смена языка и темы оформления
class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).setting),
      ),
      body: const Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            _LangRow(),
            AppSpacing.verticalSpacing24,
            _DarkModeRow(),
          ],
        ),
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          splashColor: Colors.transparent,
          highlightColor: context.scheme.primary.withOpacity(.2),
        ),
        child: const BottomNavBar(bottomNav: BottomNav.setting),
      ),
    );
  }
}

class _LangRow extends StatelessWidget {
  const _LangRow();

  @override
  Widget build(BuildContext context) {
    final String locale = context.select((AppBloc bloc) => bloc.state.locale);
    return Column(
      children: [
        RadioListTile<String>(
          value: 'en',
          groupValue: locale,
          onChanged: (value) {
            context
                .read<AppBloc>()
                .add(const AppEvent.localeChanged(locale: 'en'));
          },
          title: Text(S.current.english),
        ),
        RadioListTile<String>(
          value: 'ru',
          groupValue: locale,
          onChanged: (value) {
            context
                .read<AppBloc>()
                .add(const AppEvent.localeChanged(locale: 'ru'));
          },
          title: Text(S.current.russian),
        ),
      ],
    );
  }
}

class _DarkModeRow extends StatelessWidget {
  const _DarkModeRow();

  @override
  Widget build(BuildContext context) {
    final bool darkMode =
        context.select((AppBloc bloc) => bloc.state.isDarkMode);
    return SwitchListTile(
      value: darkMode,
      onChanged: (value) {
        context.read<AppBloc>().add(const AppEvent.darkModeChanged());
      },
      title: Text(S.of(context).dark_mode),
    );
  }
}
