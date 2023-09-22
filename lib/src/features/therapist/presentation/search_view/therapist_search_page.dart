import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spiks_test/generated/l10n.dart';
import 'package:flutter_spiks_test/src/core/core.dart';
import 'package:flutter_spiks_test/src/core/shared_widgets/buttons/ink_well_m3.dart';
import 'package:flutter_spiks_test/src/features/therapist/internal/bloc_modules/search_module.dart';
import 'package:flutter_spiks_test/src/features/therapist/presentation/search_view/widgets/therapist_search_item.dart';
import 'package:flutter_spiks_test/src/navigation/auto_router.dart';

import '../../domain/bloc/search_bloc/search_bloc.dart';

@RoutePage()
class TherapistSearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<SearchBloc>(
      create: (_) => SearchModule.makeSearchBloc(),
      child: SearchView(),
    );
  }
}

class SearchView extends StatefulWidget {
  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  FocusNode searchFocusNode = FocusNode();
  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) => Future.delayed(
        const Duration(milliseconds: 500),
        () => searchFocusNode.requestFocus(),
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    searchFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: SearchAppBar(
        heroTag: 'search_tag',
        controller: controller,
        focusNode: searchFocusNode,
        onSearch: (String query) => context
            .read<SearchBloc>()
            .add(SearchEvent.search(query: controller.text)),
      ),
      body: GestureDetector(
        onTap: () =>
            searchFocusNode.hasFocus ? searchFocusNode.unfocus() : null,
        child: BlocBuilder<SearchBloc, SearchState>(
          builder: (context, state) => state.when(
            error: (_) => TryAgainWidget(
              onTryAgain: () => context.read<SearchBloc>().add(
                    SearchEvent.search(query: controller.text),
                  ),
            ),
            searched: (list, status) => PaginatedList(
              padding: const EdgeInsets.only(bottom: 16,),
              paginationStatus: status,
              itemCount: list.length,
              itemBuilder: (_, index) => TherapistSearchItem(
                therapist: list[index],
              ),
              separatorBuilder: (_, __) => const Divider(height: 0,),
              paginationCallback: () =>
                  context.read<SearchBloc>().add(const SearchEvent.fetchMore()),
            ),
            unSearched: () => Center(
              child: Text(L10n.of(context).search_results_hint),
            ),
            loading: () => const Center(child: CupertinoActivityIndicator()),
            empty: () => Center(
              child: Text(L10n.of(context).nothing_found),
            ),
          ),
        ),
      ),
    );
  }
}
