part of 'movie_search_bloc.dart';

@freezed
abstract class MovieSearchEvent with _$MovieSearchEvent {
  const factory MovieSearchEvent.searchTitleChanged(String title) = _SearchTitleChanged;
  const factory MovieSearchEvent.deleteSearchPressed() = _DeleteSearchPressed;
  const factory MovieSearchEvent.nextResultPageCalled() = _NextResultPageCalled;

  const factory MovieSearchEvent.getPopularMoviesCalled() = _GetPopularMoviesCalled;
  const factory MovieSearchEvent.nextPopularMoviesPageCalled() = _NextPopularMoviesPageCalled;
}
