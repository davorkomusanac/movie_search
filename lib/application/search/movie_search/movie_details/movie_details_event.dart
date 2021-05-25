part of 'movie_details_bloc.dart';

@freezed
abstract class MovieDetailsEvent with _$MovieDetailsEvent {
  const factory MovieDetailsEvent.movieDetailsPressed(int id) = _MovieDetailsPressed;
}
