import 'package:bookly_app/Core/utils/styles.dart';
import 'package:bookly_app/Core/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/Features/search/presentation/manager/search_book_cubit/search_cubit.dart';
import 'package:bookly_app/Features/search/presentation/manager/search_book_cubit/search_state.dart';
import 'package:bookly_app/Features/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:bookly_app/Features/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 40,
          ),
          CustomSearchTextField(
            onChanged: (query) {
              context.read<SearchCubit>().fetchSearchBooks(query: query);
            },
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Search Result',
            style: Style.textStyle18,
          ),
          const SizedBox(
            height: 16,
          ),
          Expanded(
            child: BlocBuilder<SearchCubit, SearchState>(
              builder: (context, state) {
                if (state is SearchLoading) {
                  return const Center(child: CustomLoadingIndicator());
                } else if (state is SearchSuccess) {
                  return const SearchResultListView();
                } else if (state is SearchFailure) {
                  return Center(child: Text(state.errMessage));
                } else if (state is SearchEmpty) {
                  return const Center(child: Text('No results found'));
                } else {
                  return const SizedBox.shrink();
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}