// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'movie_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$MovieDetailsEventTearOff {
  const _$MovieDetailsEventTearOff();

// ignore: unused_element
  _MovieDetailsPressed movieDetailsPressed(int id) {
    return _MovieDetailsPressed(
      id,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $MovieDetailsEvent = _$MovieDetailsEventTearOff();

/// @nodoc
mixin _$MovieDetailsEvent {
  int get id;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult movieDetailsPressed(int id),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult movieDetailsPressed(int id),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult movieDetailsPressed(_MovieDetailsPressed value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult movieDetailsPressed(_MovieDetailsPressed value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $MovieDetailsEventCopyWith<MovieDetailsEvent> get copyWith;
}

/// @nodoc
abstract class $MovieDetailsEventCopyWith<$Res> {
  factory $MovieDetailsEventCopyWith(
          MovieDetailsEvent value, $Res Function(MovieDetailsEvent) then) =
      _$MovieDetailsEventCopyWithImpl<$Res>;
  $Res call({int id});
}

/// @nodoc
class _$MovieDetailsEventCopyWithImpl<$Res>
    implements $MovieDetailsEventCopyWith<$Res> {
  _$MovieDetailsEventCopyWithImpl(this._value, this._then);

  final MovieDetailsEvent _value;
  // ignore: unused_field
  final $Res Function(MovieDetailsEvent) _then;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
    ));
  }
}

/// @nodoc
abstract class _$MovieDetailsPressedCopyWith<$Res>
    implements $MovieDetailsEventCopyWith<$Res> {
  factory _$MovieDetailsPressedCopyWith(_MovieDetailsPressed value,
          $Res Function(_MovieDetailsPressed) then) =
      __$MovieDetailsPressedCopyWithImpl<$Res>;
  @override
  $Res call({int id});
}

/// @nodoc
class __$MovieDetailsPressedCopyWithImpl<$Res>
    extends _$MovieDetailsEventCopyWithImpl<$Res>
    implements _$MovieDetailsPressedCopyWith<$Res> {
  __$MovieDetailsPressedCopyWithImpl(
      _MovieDetailsPressed _value, $Res Function(_MovieDetailsPressed) _then)
      : super(_value, (v) => _then(v as _MovieDetailsPressed));

  @override
  _MovieDetailsPressed get _value => super._value as _MovieDetailsPressed;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(_MovieDetailsPressed(
      id == freezed ? _value.id : id as int,
    ));
  }
}

/// @nodoc
class _$_MovieDetailsPressed implements _MovieDetailsPressed {
  const _$_MovieDetailsPressed(this.id) : assert(id != null);

  @override
  final int id;

  @override
  String toString() {
    return 'MovieDetailsEvent.movieDetailsPressed(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MovieDetailsPressed &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$MovieDetailsPressedCopyWith<_MovieDetailsPressed> get copyWith =>
      __$MovieDetailsPressedCopyWithImpl<_MovieDetailsPressed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult movieDetailsPressed(int id),
  }) {
    assert(movieDetailsPressed != null);
    return movieDetailsPressed(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult movieDetailsPressed(int id),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (movieDetailsPressed != null) {
      return movieDetailsPressed(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult movieDetailsPressed(_MovieDetailsPressed value),
  }) {
    assert(movieDetailsPressed != null);
    return movieDetailsPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult movieDetailsPressed(_MovieDetailsPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (movieDetailsPressed != null) {
      return movieDetailsPressed(this);
    }
    return orElse();
  }
}

abstract class _MovieDetailsPressed implements MovieDetailsEvent {
  const factory _MovieDetailsPressed(int id) = _$_MovieDetailsPressed;

  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$MovieDetailsPressedCopyWith<_MovieDetailsPressed> get copyWith;
}

/// @nodoc
class _$MovieDetailsStateTearOff {
  const _$MovieDetailsStateTearOff();

// ignore: unused_element
  _MovieDetailsState call(
      {@required String errorMessage,
      @required bool isSearching,
      @required MovieDetails movieDetails,
      @required bool isTrailerAvailable}) {
    return _MovieDetailsState(
      errorMessage: errorMessage,
      isSearching: isSearching,
      movieDetails: movieDetails,
      isTrailerAvailable: isTrailerAvailable,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $MovieDetailsState = _$MovieDetailsStateTearOff();

/// @nodoc
mixin _$MovieDetailsState {
  String get errorMessage;
  bool get isSearching;
  MovieDetails get movieDetails;
  bool get isTrailerAvailable;

  @JsonKey(ignore: true)
  $MovieDetailsStateCopyWith<MovieDetailsState> get copyWith;
}

/// @nodoc
abstract class $MovieDetailsStateCopyWith<$Res> {
  factory $MovieDetailsStateCopyWith(
          MovieDetailsState value, $Res Function(MovieDetailsState) then) =
      _$MovieDetailsStateCopyWithImpl<$Res>;
  $Res call(
      {String errorMessage,
      bool isSearching,
      MovieDetails movieDetails,
      bool isTrailerAvailable});
}

/// @nodoc
class _$MovieDetailsStateCopyWithImpl<$Res>
    implements $MovieDetailsStateCopyWith<$Res> {
  _$MovieDetailsStateCopyWithImpl(this._value, this._then);

  final MovieDetailsState _value;
  // ignore: unused_field
  final $Res Function(MovieDetailsState) _then;

  @override
  $Res call({
    Object errorMessage = freezed,
    Object isSearching = freezed,
    Object movieDetails = freezed,
    Object isTrailerAvailable = freezed,
  }) {
    return _then(_value.copyWith(
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage as String,
      isSearching:
          isSearching == freezed ? _value.isSearching : isSearching as bool,
      movieDetails: movieDetails == freezed
          ? _value.movieDetails
          : movieDetails as MovieDetails,
      isTrailerAvailable: isTrailerAvailable == freezed
          ? _value.isTrailerAvailable
          : isTrailerAvailable as bool,
    ));
  }
}

/// @nodoc
abstract class _$MovieDetailsStateCopyWith<$Res>
    implements $MovieDetailsStateCopyWith<$Res> {
  factory _$MovieDetailsStateCopyWith(
          _MovieDetailsState value, $Res Function(_MovieDetailsState) then) =
      __$MovieDetailsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String errorMessage,
      bool isSearching,
      MovieDetails movieDetails,
      bool isTrailerAvailable});
}

/// @nodoc
class __$MovieDetailsStateCopyWithImpl<$Res>
    extends _$MovieDetailsStateCopyWithImpl<$Res>
    implements _$MovieDetailsStateCopyWith<$Res> {
  __$MovieDetailsStateCopyWithImpl(
      _MovieDetailsState _value, $Res Function(_MovieDetailsState) _then)
      : super(_value, (v) => _then(v as _MovieDetailsState));

  @override
  _MovieDetailsState get _value => super._value as _MovieDetailsState;

  @override
  $Res call({
    Object errorMessage = freezed,
    Object isSearching = freezed,
    Object movieDetails = freezed,
    Object isTrailerAvailable = freezed,
  }) {
    return _then(_MovieDetailsState(
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage as String,
      isSearching:
          isSearching == freezed ? _value.isSearching : isSearching as bool,
      movieDetails: movieDetails == freezed
          ? _value.movieDetails
          : movieDetails as MovieDetails,
      isTrailerAvailable: isTrailerAvailable == freezed
          ? _value.isTrailerAvailable
          : isTrailerAvailable as bool,
    ));
  }
}

/// @nodoc
class _$_MovieDetailsState implements _MovieDetailsState {
  const _$_MovieDetailsState(
      {@required this.errorMessage,
      @required this.isSearching,
      @required this.movieDetails,
      @required this.isTrailerAvailable})
      : assert(errorMessage != null),
        assert(isSearching != null),
        assert(movieDetails != null),
        assert(isTrailerAvailable != null);

  @override
  final String errorMessage;
  @override
  final bool isSearching;
  @override
  final MovieDetails movieDetails;
  @override
  final bool isTrailerAvailable;

  @override
  String toString() {
    return 'MovieDetailsState(errorMessage: $errorMessage, isSearching: $isSearching, movieDetails: $movieDetails, isTrailerAvailable: $isTrailerAvailable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MovieDetailsState &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)) &&
            (identical(other.isSearching, isSearching) ||
                const DeepCollectionEquality()
                    .equals(other.isSearching, isSearching)) &&
            (identical(other.movieDetails, movieDetails) ||
                const DeepCollectionEquality()
                    .equals(other.movieDetails, movieDetails)) &&
            (identical(other.isTrailerAvailable, isTrailerAvailable) ||
                const DeepCollectionEquality()
                    .equals(other.isTrailerAvailable, isTrailerAvailable)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(errorMessage) ^
      const DeepCollectionEquality().hash(isSearching) ^
      const DeepCollectionEquality().hash(movieDetails) ^
      const DeepCollectionEquality().hash(isTrailerAvailable);

  @JsonKey(ignore: true)
  @override
  _$MovieDetailsStateCopyWith<_MovieDetailsState> get copyWith =>
      __$MovieDetailsStateCopyWithImpl<_MovieDetailsState>(this, _$identity);
}

abstract class _MovieDetailsState implements MovieDetailsState {
  const factory _MovieDetailsState(
      {@required String errorMessage,
      @required bool isSearching,
      @required MovieDetails movieDetails,
      @required bool isTrailerAvailable}) = _$_MovieDetailsState;

  @override
  String get errorMessage;
  @override
  bool get isSearching;
  @override
  MovieDetails get movieDetails;
  @override
  bool get isTrailerAvailable;
  @override
  @JsonKey(ignore: true)
  _$MovieDetailsStateCopyWith<_MovieDetailsState> get copyWith;
}
