import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:movie_search/data/models/movie_search/movie_search_results.dart';
import 'package:movie_search/data/search_db/movie_db/movie_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_search_event.dart';
part 'movie_search_state.dart';

part 'movie_search_bloc.freezed.dart';

class MovieSearchBloc extends Bloc<MovieSearchEvent, MovieSearchState> {
  final MovieRepository _movieRepository;

  MovieSearchBloc(this._movieRepository) : super(MovieSearchState.initial());

  @override
  Stream<MovieSearchState> mapEventToState(
    MovieSearchEvent event,
  ) async* {
    yield* event.map(
      searchTitleChanged: (e) async* {
        yield state.copyWith(
          title: e.title.trim(),
          errorMessage: '',
          isSearching: e.title.trim().isEmpty ? false : true,
          isSearchCompleted: false,
          searchPageNum: 1,
        );
        if (e.title.trim().isNotEmpty) {
          var _results = await _movieRepository.searchMovie(e.title.trim());
          if (_results.errorMessage == "No results found.") {
            yield state.copyWith(
              errorMessage: "No results found.",
              isSearching: false,
              isSearchCompleted: false,
            );
          } else if (_results.errorMessage.isEmpty) {
            yield state.copyWith(
              title: e.title.trim(),
              errorMessage: '',
              isSearching: false,
              isSearchCompleted: true,
              movieSearchResults: _results,
            );
          } else {
            yield state.copyWith(
              title: e.title.trim(),
              isSearching: false,
              isSearchCompleted: false,
              errorMessage: _results.errorMessage,
            );
          }
        }
      },
      deleteSearchPressed: (e) async* {
        yield state.copyWith(
          title: '',
          errorMessage: '',
          isSearching: false,
          isSearchCompleted: false,
          movieSearchResults: MovieSearchResults(totalResults: 0),
          searchPageNum: 1,
        );
      },
      nextResultPageCalled: (e) async* {
        if (state.searchPageNum < state.movieSearchResults.totalPages) {
          //increase SearchPageNum
          var newMovieResults = await _movieRepository.searchMovie(state.title, state.searchPageNum + 1);
          for (var movie in newMovieResults.movieSummaries) {
            state.movieSearchResults.movieSummaries.add(movie);
          }
          yield state.copyWith(
            searchPageNum: state.searchPageNum + 1,
          );
        }
      },
      //Show popular movies before searching for movies
      getPopularMoviesCalled: (e) async* {
        yield state.copyWith(
          isSearching: true,
        );
        var _popularMoviesResults = await _movieRepository.getPopularMovies();
        if (_popularMoviesResults.errorMessage.isNotEmpty) {
          yield state.copyWith(
            isSearching: false,
            errorMessage: _popularMoviesResults.errorMessage,
          );
        } else {
          yield state.copyWith(
            isSearching: false,
            errorMessage: '',
            popularMovies: _popularMoviesResults,
          );
        }
      },
      nextPopularMoviesPageCalled: (e) async* {
        if (state.popularPageNum < state.popularMovies.totalPages) {
          var newPopularMoviePage = await _movieRepository.getPopularMovies(state.popularPageNum + 1);
          for (var movie in newPopularMoviePage.movieSummaries) {
            state.popularMovies.movieSummaries.add(movie);
          }
          yield state.copyWith(
            popularPageNum: state.popularPageNum + 1,
          );
        }
      },
    );
  }
}
