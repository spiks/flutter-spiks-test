import 'package:flutter/material.dart';
import 'package:flutter_spiks_test/core/themes/theme_class.dart';
import 'package:flutter_spiks_test/data/repositories/models/therapists_models/therapists_models.dart';
import 'package:flutter_spiks_test/features/therapists/presentation/widgets/bottom_nav_bar.dart';
import 'package:flutter_spiks_test/features/therapists/presentation/widgets/therapist_item.dart';
import 'package:flutter_spiks_test/generated/l10n.dart';
import 'package:flutter_spiks_test/widgets/scroll_views/paginated_list/paginated_sliver_list.dart';
import 'package:flutter_spiks_test/widgets/scroll_views/paginated_list/values/pagination_status.dart';

/// Страница просмотра списка терапевтов
/// @TODO реализовать
class TherapistsListPage extends StatelessWidget {
  const TherapistsListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Therapist> list = [
      Therapist(id: '1', name: 'Эмилия', surname: 'Кларк', experience: 8, avatar: 'i.pravatar.cc/150?img=1'),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).therapists),
        automaticallyImplyLeading: false,
      ),
      body: CustomScrollView(slivers: [
        PaginatedSliverList(
          paginationStatus: PaginationStatus.lastPage,
          builder: (context, index) =>
              TherapistListItem(
                therapist: list[index],
              ),
          childCount: list.length,
          separatorBuilder:
              (BuildContext context, int index,) =>  const Divider(height: 0),
        ),
      ],
      ),
      bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            splashColor: Colors.transparent,
            highlightColor: context.scheme.primary.withOpacity(.2),
          ),
          child: const BottomNavBar(bottomNav: BottomNav.therapists),
      ),
    );
  }
}
