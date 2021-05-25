import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:movie_search/data/models/movie_details/movie_details.dart';
import 'package:movie_search/data/search_db/movie_db/movie_repository.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_details_event.dart';
part 'movie_details_state.dart';

part 'movie_details_bloc.freezed.dart';

class MovieDetailsBloc extends Bloc<MovieDetailsEvent, MovieDetailsState> {
  final MovieRepository _movieRepository;

  MovieDetailsBloc(this._movieRepository) : super(MovieDetailsState.initial());

  @override
  Stream<MovieDetailsState> mapEventToState(
    MovieDetailsEvent event,
  ) async* {
    yield* event.map(
      movieDetailsPressed: (e) async* {
        yield state.copyWith(
          isSearching: true,
          errorMessage: "",
          isTrailerAvailable: false,
        );
        var movieDetailsResult = await _movieRepository.getMovieDetails(e.id);
        if (movieDetailsResult.errorMessage.isNotEmpty) {
          yield state.copyWith(
            isSearching: false,
            errorMessage: movieDetailsResult.errorMessage,
          );
        } else {
          yield state.copyWith(
            isSearching: false,
            errorMessage: "",
            movieDetails: movieDetailsResult,
            isTrailerAvailable: _isTrailerAvailable(movieDetailsResult),
          );
        }
      },
    );
  }

  bool _isTrailerAvailable(MovieDetails movieDetails) {
    bool returnValue = false;
    if (movieDetails.videos.results.isNotEmpty) {
      for (var video in movieDetails.videos.results) if (video.type == "Trailer") returnValue = true;
    }
    return returnValue;
  }
}
