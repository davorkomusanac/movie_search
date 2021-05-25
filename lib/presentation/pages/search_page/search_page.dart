import 'package:movie_search/application/search/movie_search/movie_search_bloc.dart';
import 'package:movie_search/presentation/pages/movie_details_page/movie_details_page.dart';
import 'package:movie_search/presentation/utilities/utilities.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> with TickerProviderStateMixin {
  TextEditingController _searchController;
  ScrollController _scrollController;
  final _debouncer = Debouncer(milliseconds: 500);

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
    _scrollController = ScrollController();
    context.read<MovieSearchBloc>().add(MovieSearchEvent.getPopularMoviesCalled());
  }

  @override
  void dispose() {
    _searchController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  //If at end of the Listview, search for more Results
  bool _handleScrollNotification(ScrollNotification notification) {
    if (notification is ScrollEndNotification && _scrollController.position.extentAfter == 0) {
      print("Calling FETCH NEXT PAGE");
      context.read<MovieSearchBloc>().add(
            MovieSearchEvent.nextResultPageCalled(),
          );
    }
    return false;
  }

  //If at end of the GridView (popular movies, tv shows...) search for more Results
  bool _handlePopularScrollNotification(ScrollNotification notification) {
    if (notification is ScrollEndNotification && _scrollController.position.extentAfter == 0) {
      context.read<MovieSearchBloc>().add(
            MovieSearchEvent.nextPopularMoviesPageCalled(),
          );
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 20.0,
                right: 20.0,
                top: 20.0,
                bottom: 5.0,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: _searchController,
                      maxLength: 100,
                      autocorrect: false,
                      decoration: InputDecoration(
                        counterText: "",
                        prefixIcon: const Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                        labelText: 'Search',
                        suffixIcon: _searchController.text.isNotEmpty
                            ? IconButton(
                                icon: const Icon(Icons.clear),
                                onPressed: () {
                                  setState(() {
                                    _searchController.clear();
                                  });
                                  context.read<MovieSearchBloc>().add(
                                        MovieSearchEvent.deleteSearchPressed(),
                                      );
                                },
                              )
                            : null,
                      ),
                      onChanged: (value) {
                        //Calling this setState so that the _searchController gets updated, the deleteSearch button doesn't show in other tabs from the start
                        setState(() {});
                        //Debouncer, so that the search gets initiated when the user stops typing (for 500 milliseconds)
                        _debouncer.run(() {
                          print(value);
                          context.read<MovieSearchBloc>().add(
                                MovieSearchEvent.searchTitleChanged(value),
                              );
                        });
                      },
                      onFieldSubmitted: (value) {
                        context.read<MovieSearchBloc>().add(
                              MovieSearchEvent.searchTitleChanged(value),
                            );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: _buildSearchMovieTabView(context),
            ),
          ],
        ),
      ),
    );
  }

  ///Build Movie Search Tab View
  Widget _buildSearchMovieTabView(BuildContext context) {
    return BlocBuilder<MovieSearchBloc, MovieSearchState>(
      builder: (context, state) {
        return Column(
          children: [
            if (!state.isSearching && state.errorMessage.isEmpty && !state.isSearchCompleted)
              //Show here popular movies? Or trending, or recommendations? Also the same for TV shows tabs?
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: NotificationListener<ScrollNotification>(
                    onNotification: _handlePopularScrollNotification,
                    child: GridView.builder(
                      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
                      controller: _scrollController,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: 0.6,
                      ),
                      itemCount: _calculatePopularMoviesItemCount(state),
                      itemBuilder: (context, index) {
                        return index >= state.popularMovies.movieSummaries.length
                            ? BuildLoaderNextPage()
                            : Padding(
                                padding: const EdgeInsets.all(8),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.of(context, rootNavigator: false).push(
                                      MaterialPageRoute(
                                        builder: (context) => MovieDetailsPage(
                                          movieId: state.popularMovies.movieSummaries[index].id,
                                          movieTitle: state.popularMovies.movieSummaries[index].title,
                                        ),
                                      ),
                                    );
                                  },
                                  child: Column(
                                    children: [
                                      AspectRatio(
                                        aspectRatio: 0.69,
                                        child: BuildPosterImage(
                                          height: 135,
                                          width: 90,
                                          imagePath: state.popularMovies.movieSummaries[index].posterPath,
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.only(top: 8.0, bottom: 4.0),
                                          child: Text(
                                            state.popularMovies.movieSummaries[index].voteCount > 100 &&
                                                    state.popularMovies.movieSummaries[index].voteAverage != 0
                                                ? "⭐ " + state.popularMovies.movieSummaries[index].voteAverage.toString()
                                                : "⭐ N/A",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.center,
                                            maxLines: 2,
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                      },
                    ),
                  ),
                ),
              ),
            if (state.isSearching) BuildSearchProgressIndicator(),
            if (state.isSearchCompleted)
              Expanded(
                child: NotificationListener<ScrollNotification>(
                  onNotification: _handleScrollNotification,
                  child: ListView.builder(
                    controller: _scrollController,
                    keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
                    itemCount: _calculateMovieListItemCount(state),
                    itemBuilder: (context, index) {
                      return index >= state.movieSearchResults.movieSummaries.length
                          ? BuildLoaderNextPage()
                          : _buildMovieCard(context, state, index);
                    },
                  ),
                ),
              ),
            if (state.errorMessage.isNotEmpty) BuildSearchErrorMessage(state.errorMessage),
          ],
        );
      },
    );
  }

  int _calculatePopularMoviesItemCount(MovieSearchState state) {
    if (state.popularPageNum < state.popularMovies.totalPages) {
      return state.popularMovies.movieSummaries.length + 1;
    } else {
      return state.popularMovies.movieSummaries.length;
    }
  }

  int _calculateMovieListItemCount(MovieSearchState state) {
    if (state.searchPageNum < state.movieSearchResults.totalPages) {
      return state.movieSearchResults.movieSummaries.length + 1;
    } else {
      return state.movieSearchResults.movieSummaries.length;
    }
  }

  Widget _buildMovieCard(BuildContext context, MovieSearchState state, int index) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context, rootNavigator: false).push(
            MaterialPageRoute(
              builder: (context) => MovieDetailsPage(
                movieId: state.movieSearchResults.movieSummaries[index].id,
                movieTitle: state.movieSearchResults.movieSummaries[index].title,
              ),
            ),
          );
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: BuildPosterImage(
                height: 190,
                width: 132,
                imagePath: state.movieSearchResults.movieSummaries[index].posterPath,
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                    child: Text(
                      state.movieSearchResults.movieSummaries[index].title,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 15.0),
                    child: Text(
                      state.movieSearchResults.movieSummaries[index].overview.isEmpty
                          ? "Plot unknown"
                          : state.movieSearchResults.movieSummaries[index].overview,
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      convertReleaseDate(state.movieSearchResults.movieSummaries[index].releaseDate),
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
