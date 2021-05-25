// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'movie_search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$MovieSearchEventTearOff {
  const _$MovieSearchEventTearOff();

// ignore: unused_element
  _SearchTitleChanged searchTitleChanged(String title) {
    return _SearchTitleChanged(
      title,
    );
  }

// ignore: unused_element
  _DeleteSearchPressed deleteSearchPressed() {
    return const _DeleteSearchPressed();
  }

// ignore: unused_element
  _NextResultPageCalled nextResultPageCalled() {
    return const _NextResultPageCalled();
  }

// ignore: unused_element
  _GetPopularMoviesCalled getPopularMoviesCalled() {
    return const _GetPopularMoviesCalled();
  }

// ignore: unused_element
  _NextPopularMoviesPageCalled nextPopularMoviesPageCalled() {
    return const _NextPopularMoviesPageCalled();
  }
}

/// @nodoc
// ignore: unused_element
const $MovieSearchEvent = _$MovieSearchEventTearOff();

/// @nodoc
mixin _$MovieSearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult searchTitleChanged(String title),
    @required TResult deleteSearchPressed(),
    @required TResult nextResultPageCalled(),
    @required TResult getPopularMoviesCalled(),
    @required TResult nextPopularMoviesPageCalled(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult searchTitleChanged(String title),
    TResult deleteSearchPressed(),
    TResult nextResultPageCalled(),
    TResult getPopularMoviesCalled(),
    TResult nextPopularMoviesPageCalled(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult searchTitleChanged(_SearchTitleChanged value),
    @required TResult deleteSearchPressed(_DeleteSearchPressed value),
    @required TResult nextResultPageCalled(_NextResultPageCalled value),
    @required TResult getPopularMoviesCalled(_GetPopularMoviesCalled value),
    @required
        TResult nextPopularMoviesPageCalled(_NextPopularMoviesPageCalled value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult searchTitleChanged(_SearchTitleChanged value),
    TResult deleteSearchPressed(_DeleteSearchPressed value),
    TResult nextResultPageCalled(_NextResultPageCalled value),
    TResult getPopularMoviesCalled(_GetPopularMoviesCalled value),
    TResult nextPopularMoviesPageCalled(_NextPopularMoviesPageCalled value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $MovieSearchEventCopyWith<$Res> {
  factory $MovieSearchEventCopyWith(
          MovieSearchEvent value, $Res Function(MovieSearchEvent) then) =
      _$MovieSearchEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MovieSearchEventCopyWithImpl<$Res>
    implements $MovieSearchEventCopyWith<$Res> {
  _$MovieSearchEventCopyWithImpl(this._value, this._then);

  final MovieSearchEvent _value;
  // ignore: unused_field
  final $Res Function(MovieSearchEvent) _then;
}

/// @nodoc
abstract class _$SearchTitleChangedCopyWith<$Res> {
  factory _$SearchTitleChangedCopyWith(
          _SearchTitleChanged value, $Res Function(_SearchTitleChanged) then) =
      __$SearchTitleChangedCopyWithImpl<$Res>;
  $Res call({String title});
}

/// @nodoc
class __$SearchTitleChangedCopyWithImpl<$Res>
    extends _$MovieSearchEventCopyWithImpl<$Res>
    implements _$SearchTitleChangedCopyWith<$Res> {
  __$SearchTitleChangedCopyWithImpl(
      _SearchTitleChanged _value, $Res Function(_SearchTitleChanged) _then)
      : super(_value, (v) => _then(v as _SearchTitleChanged));

  @override
  _SearchTitleChanged get _value => super._value as _SearchTitleChanged;

  @override
  $Res call({
    Object title = freezed,
  }) {
    return _then(_SearchTitleChanged(
      title == freezed ? _value.title : title as String,
    ));
  }
}

/// @nodoc
class _$_SearchTitleChanged implements _SearchTitleChanged {
  const _$_SearchTitleChanged(this.title) : assert(title != null);

  @override
  final String title;

  @override
  String toString() {
    return 'MovieSearchEvent.searchTitleChanged(title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchTitleChanged &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(title);

  @JsonKey(ignore: true)
  @override
  _$SearchTitleChangedCopyWith<_SearchTitleChanged> get copyWith =>
      __$SearchTitleChangedCopyWithImpl<_SearchTitleChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult searchTitleChanged(String title),
    @required TResult deleteSearchPressed(),
    @required TResult nextResultPageCalled(),
    @required TResult getPopularMoviesCalled(),
    @required TResult nextPopularMoviesPageCalled(),
  }) {
    assert(searchTitleChanged != null);
    assert(deleteSearchPressed != null);
    assert(nextResultPageCalled != null);
    assert(getPopularMoviesCalled != null);
    assert(nextPopularMoviesPageCalled != null);
    return searchTitleChanged(title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult searchTitleChanged(String title),
    TResult deleteSearchPressed(),
    TResult nextResultPageCalled(),
    TResult getPopularMoviesCalled(),
    TResult nextPopularMoviesPageCalled(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (searchTitleChanged != null) {
      return searchTitleChanged(title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult searchTitleChanged(_SearchTitleChanged value),
    @required TResult deleteSearchPressed(_DeleteSearchPressed value),
    @required TResult nextResultPageCalled(_NextResultPageCalled value),
    @required TResult getPopularMoviesCalled(_GetPopularMoviesCalled value),
    @required
        TResult nextPopularMoviesPageCalled(_NextPopularMoviesPageCalled value),
  }) {
    assert(searchTitleChanged != null);
    assert(deleteSearchPressed != null);
    assert(nextResultPageCalled != null);
    assert(getPopularMoviesCalled != null);
    assert(nextPopularMoviesPageCalled != null);
    return searchTitleChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult searchTitleChanged(_SearchTitleChanged value),
    TResult deleteSearchPressed(_DeleteSearchPressed value),
    TResult nextResultPageCalled(_NextResultPageCalled value),
    TResult getPopularMoviesCalled(_GetPopularMoviesCalled value),
    TResult nextPopularMoviesPageCalled(_NextPopularMoviesPageCalled value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (searchTitleChanged != null) {
      return searchTitleChanged(this);
    }
    return orElse();
  }
}

abstract class _SearchTitleChanged implements MovieSearchEvent {
  const factory _SearchTitleChanged(String title) = _$_SearchTitleChanged;

  String get title;
  @JsonKey(ignore: true)
  _$SearchTitleChangedCopyWith<_SearchTitleChanged> get copyWith;
}

/// @nodoc
abstract class _$DeleteSearchPressedCopyWith<$Res> {
  factory _$DeleteSearchPressedCopyWith(_DeleteSearchPressed value,
          $Res Function(_DeleteSearchPressed) then) =
      __$DeleteSearchPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$DeleteSearchPressedCopyWithImpl<$Res>
    extends _$MovieSearchEventCopyWithImpl<$Res>
    implements _$DeleteSearchPressedCopyWith<$Res> {
  __$DeleteSearchPressedCopyWithImpl(
      _DeleteSearchPressed _value, $Res Function(_DeleteSearchPressed) _then)
      : super(_value, (v) => _then(v as _DeleteSearchPressed));

  @override
  _DeleteSearchPressed get _value => super._value as _DeleteSearchPressed;
}

/// @nodoc
class _$_DeleteSearchPressed implements _DeleteSearchPressed {
  const _$_DeleteSearchPressed();

  @override
  String toString() {
    return 'MovieSearchEvent.deleteSearchPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _DeleteSearchPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult searchTitleChanged(String title),
    @required TResult deleteSearchPressed(),
    @required TResult nextResultPageCalled(),
    @required TResult getPopularMoviesCalled(),
    @required TResult nextPopularMoviesPageCalled(),
  }) {
    assert(searchTitleChanged != null);
    assert(deleteSearchPressed != null);
    assert(nextResultPageCalled != null);
    assert(getPopularMoviesCalled != null);
    assert(nextPopularMoviesPageCalled != null);
    return deleteSearchPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult searchTitleChanged(String title),
    TResult deleteSearchPressed(),
    TResult nextResultPageCalled(),
    TResult getPopularMoviesCalled(),
    TResult nextPopularMoviesPageCalled(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deleteSearchPressed != null) {
      return deleteSearchPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult searchTitleChanged(_SearchTitleChanged value),
    @required TResult deleteSearchPressed(_DeleteSearchPressed value),
    @required TResult nextResultPageCalled(_NextResultPageCalled value),
    @required TResult getPopularMoviesCalled(_GetPopularMoviesCalled value),
    @required
        TResult nextPopularMoviesPageCalled(_NextPopularMoviesPageCalled value),
  }) {
    assert(searchTitleChanged != null);
    assert(deleteSearchPressed != null);
    assert(nextResultPageCalled != null);
    assert(getPopularMoviesCalled != null);
    assert(nextPopularMoviesPageCalled != null);
    return deleteSearchPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult searchTitleChanged(_SearchTitleChanged value),
    TResult deleteSearchPressed(_DeleteSearchPressed value),
    TResult nextResultPageCalled(_NextResultPageCalled value),
    TResult getPopularMoviesCalled(_GetPopularMoviesCalled value),
    TResult nextPopularMoviesPageCalled(_NextPopularMoviesPageCalled value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deleteSearchPressed != null) {
      return deleteSearchPressed(this);
    }
    return orElse();
  }
}

abstract class _DeleteSearchPressed implements MovieSearchEvent {
  const factory _DeleteSearchPressed() = _$_DeleteSearchPressed;
}

/// @nodoc
abstract class _$NextResultPageCalledCopyWith<$Res> {
  factory _$NextResultPageCalledCopyWith(_NextResultPageCalled value,
          $Res Function(_NextResultPageCalled) then) =
      __$NextResultPageCalledCopyWithImpl<$Res>;
}

/// @nodoc
class __$NextResultPageCalledCopyWithImpl<$Res>
    extends _$MovieSearchEventCopyWithImpl<$Res>
    implements _$NextResultPageCalledCopyWith<$Res> {
  __$NextResultPageCalledCopyWithImpl(
      _NextResultPageCalled _value, $Res Function(_NextResultPageCalled) _then)
      : super(_value, (v) => _then(v as _NextResultPageCalled));

  @override
  _NextResultPageCalled get _value => super._value as _NextResultPageCalled;
}

/// @nodoc
class _$_NextResultPageCalled implements _NextResultPageCalled {
  const _$_NextResultPageCalled();

  @override
  String toString() {
    return 'MovieSearchEvent.nextResultPageCalled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NextResultPageCalled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult searchTitleChanged(String title),
    @required TResult deleteSearchPressed(),
    @required TResult nextResultPageCalled(),
    @required TResult getPopularMoviesCalled(),
    @required TResult nextPopularMoviesPageCalled(),
  }) {
    assert(searchTitleChanged != null);
    assert(deleteSearchPressed != null);
    assert(nextResultPageCalled != null);
    assert(getPopularMoviesCalled != null);
    assert(nextPopularMoviesPageCalled != null);
    return nextResultPageCalled();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult searchTitleChanged(String title),
    TResult deleteSearchPressed(),
    TResult nextResultPageCalled(),
    TResult getPopularMoviesCalled(),
    TResult nextPopularMoviesPageCalled(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (nextResultPageCalled != null) {
      return nextResultPageCalled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult searchTitleChanged(_SearchTitleChanged value),
    @required TResult deleteSearchPressed(_DeleteSearchPressed value),
    @required TResult nextResultPageCalled(_NextResultPageCalled value),
    @required TResult getPopularMoviesCalled(_GetPopularMoviesCalled value),
    @required
        TResult nextPopularMoviesPageCalled(_NextPopularMoviesPageCalled value),
  }) {
    assert(searchTitleChanged != null);
    assert(deleteSearchPressed != null);
    assert(nextResultPageCalled != null);
    assert(getPopularMoviesCalled != null);
    assert(nextPopularMoviesPageCalled != null);
    return nextResultPageCalled(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult searchTitleChanged(_SearchTitleChanged value),
    TResult deleteSearchPressed(_DeleteSearchPressed value),
    TResult nextResultPageCalled(_NextResultPageCalled value),
    TResult getPopularMoviesCalled(_GetPopularMoviesCalled value),
    TResult nextPopularMoviesPageCalled(_NextPopularMoviesPageCalled value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (nextResultPageCalled != null) {
      return nextResultPageCalled(this);
    }
    return orElse();
  }
}

abstract class _NextResultPageCalled implements MovieSearchEvent {
  const factory _NextResultPageCalled() = _$_NextResultPageCalled;
}

/// @nodoc
abstract class _$GetPopularMoviesCalledCopyWith<$Res> {
  factory _$GetPopularMoviesCalledCopyWith(_GetPopularMoviesCalled value,
          $Res Function(_GetPopularMoviesCalled) then) =
      __$GetPopularMoviesCalledCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetPopularMoviesCalledCopyWithImpl<$Res>
    extends _$MovieSearchEventCopyWithImpl<$Res>
    implements _$GetPopularMoviesCalledCopyWith<$Res> {
  __$GetPopularMoviesCalledCopyWithImpl(_GetPopularMoviesCalled _value,
      $Res Function(_GetPopularMoviesCalled) _then)
      : super(_value, (v) => _then(v as _GetPopularMoviesCalled));

  @override
  _GetPopularMoviesCalled get _value => super._value as _GetPopularMoviesCalled;
}

/// @nodoc
class _$_GetPopularMoviesCalled implements _GetPopularMoviesCalled {
  const _$_GetPopularMoviesCalled();

  @override
  String toString() {
    return 'MovieSearchEvent.getPopularMoviesCalled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetPopularMoviesCalled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult searchTitleChanged(String title),
    @required TResult deleteSearchPressed(),
    @required TResult nextResultPageCalled(),
    @required TResult getPopularMoviesCalled(),
    @required TResult nextPopularMoviesPageCalled(),
  }) {
    assert(searchTitleChanged != null);
    assert(deleteSearchPressed != null);
    assert(nextResultPageCalled != null);
    assert(getPopularMoviesCalled != null);
    assert(nextPopularMoviesPageCalled != null);
    return getPopularMoviesCalled();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult searchTitleChanged(String title),
    TResult deleteSearchPressed(),
    TResult nextResultPageCalled(),
    TResult getPopularMoviesCalled(),
    TResult nextPopularMoviesPageCalled(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getPopularMoviesCalled != null) {
      return getPopularMoviesCalled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult searchTitleChanged(_SearchTitleChanged value),
    @required TResult deleteSearchPressed(_DeleteSearchPressed value),
    @required TResult nextResultPageCalled(_NextResultPageCalled value),
    @required TResult getPopularMoviesCalled(_GetPopularMoviesCalled value),
    @required
        TResult nextPopularMoviesPageCalled(_NextPopularMoviesPageCalled value),
  }) {
    assert(searchTitleChanged != null);
    assert(deleteSearchPressed != null);
    assert(nextResultPageCalled != null);
    assert(getPopularMoviesCalled != null);
    assert(nextPopularMoviesPageCalled != null);
    return getPopularMoviesCalled(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult searchTitleChanged(_SearchTitleChanged value),
    TResult deleteSearchPressed(_DeleteSearchPressed value),
    TResult nextResultPageCalled(_NextResultPageCalled value),
    TResult getPopularMoviesCalled(_GetPopularMoviesCalled value),
    TResult nextPopularMoviesPageCalled(_NextPopularMoviesPageCalled value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getPopularMoviesCalled != null) {
      return getPopularMoviesCalled(this);
    }
    return orElse();
  }
}

abstract class _GetPopularMoviesCalled implements MovieSearchEvent {
  const factory _GetPopularMoviesCalled() = _$_GetPopularMoviesCalled;
}

/// @nodoc
abstract class _$NextPopularMoviesPageCalledCopyWith<$Res> {
  factory _$NextPopularMoviesPageCalledCopyWith(
          _NextPopularMoviesPageCalled value,
          $Res Function(_NextPopularMoviesPageCalled) then) =
      __$NextPopularMoviesPageCalledCopyWithImpl<$Res>;
}

/// @nodoc
class __$NextPopularMoviesPageCalledCopyWithImpl<$Res>
    extends _$MovieSearchEventCopyWithImpl<$Res>
    implements _$NextPopularMoviesPageCalledCopyWith<$Res> {
  __$NextPopularMoviesPageCalledCopyWithImpl(
      _NextPopularMoviesPageCalled _value,
      $Res Function(_NextPopularMoviesPageCalled) _then)
      : super(_value, (v) => _then(v as _NextPopularMoviesPageCalled));

  @override
  _NextPopularMoviesPageCalled get _value =>
      super._value as _NextPopularMoviesPageCalled;
}

/// @nodoc
class _$_NextPopularMoviesPageCalled implements _NextPopularMoviesPageCalled {
  const _$_NextPopularMoviesPageCalled();

  @override
  String toString() {
    return 'MovieSearchEvent.nextPopularMoviesPageCalled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NextPopularMoviesPageCalled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult searchTitleChanged(String title),
    @required TResult deleteSearchPressed(),
    @required TResult nextResultPageCalled(),
    @required TResult getPopularMoviesCalled(),
    @required TResult nextPopularMoviesPageCalled(),
  }) {
    assert(searchTitleChanged != null);
    assert(deleteSearchPressed != null);
    assert(nextResultPageCalled != null);
    assert(getPopularMoviesCalled != null);
    assert(nextPopularMoviesPageCalled != null);
    return nextPopularMoviesPageCalled();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult searchTitleChanged(String title),
    TResult deleteSearchPressed(),
    TResult nextResultPageCalled(),
    TResult getPopularMoviesCalled(),
    TResult nextPopularMoviesPageCalled(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (nextPopularMoviesPageCalled != null) {
      return nextPopularMoviesPageCalled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult searchTitleChanged(_SearchTitleChanged value),
    @required TResult deleteSearchPressed(_DeleteSearchPressed value),
    @required TResult nextResultPageCalled(_NextResultPageCalled value),
    @required TResult getPopularMoviesCalled(_GetPopularMoviesCalled value),
    @required
        TResult nextPopularMoviesPageCalled(_NextPopularMoviesPageCalled value),
  }) {
    assert(searchTitleChanged != null);
    assert(deleteSearchPressed != null);
    assert(nextResultPageCalled != null);
    assert(getPopularMoviesCalled != null);
    assert(nextPopularMoviesPageCalled != null);
    return nextPopularMoviesPageCalled(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult searchTitleChanged(_SearchTitleChanged value),
    TResult deleteSearchPressed(_DeleteSearchPressed value),
    TResult nextResultPageCalled(_NextResultPageCalled value),
    TResult getPopularMoviesCalled(_GetPopularMoviesCalled value),
    TResult nextPopularMoviesPageCalled(_NextPopularMoviesPageCalled value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (nextPopularMoviesPageCalled != null) {
      return nextPopularMoviesPageCalled(this);
    }
    return orElse();
  }
}

abstract class _NextPopularMoviesPageCalled implements MovieSearchEvent {
  const factory _NextPopularMoviesPageCalled() = _$_NextPopularMoviesPageCalled;
}

/// @nodoc
class _$MovieSearchStateTearOff {
  const _$MovieSearchStateTearOff();

// ignore: unused_element
  _MovieSearchState call(
      {@required String title,
      @required String errorMessage,
      @required bool isSearching,
      @required bool isSearchCompleted,
      @required MovieSearchResults movieSearchResults,
      @required int searchPageNum,
      @required MovieSearchResults popularMovies,
      @required int popularPageNum}) {
    return _MovieSearchState(
      title: title,
      errorMessage: errorMessage,
      isSearching: isSearching,
      isSearchCompleted: isSearchCompleted,
      movieSearchResults: movieSearchResults,
      searchPageNum: searchPageNum,
      popularMovies: popularMovies,
      popularPageNum: popularPageNum,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $MovieSearchState = _$MovieSearchStateTearOff();

/// @nodoc
mixin _$MovieSearchState {
  String get title;
  String get errorMessage;
  bool get isSearching;
  bool get isSearchCompleted;
  MovieSearchResults get movieSearchResults;
  int get searchPageNum;
  MovieSearchResults get popularMovies;
  int get popularPageNum;

  @JsonKey(ignore: true)
  $MovieSearchStateCopyWith<MovieSearchState> get copyWith;
}

/// @nodoc
abstract class $MovieSearchStateCopyWith<$Res> {
  factory $MovieSearchStateCopyWith(
          MovieSearchState value, $Res Function(MovieSearchState) then) =
      _$MovieSearchStateCopyWithImpl<$Res>;
  $Res call(
      {String title,
      String errorMessage,
      bool isSearching,
      bool isSearchCompleted,
      MovieSearchResults movieSearchResults,
      int searchPageNum,
      MovieSearchResults popularMovies,
      int popularPageNum});
}

/// @nodoc
class _$MovieSearchStateCopyWithImpl<$Res>
    implements $MovieSearchStateCopyWith<$Res> {
  _$MovieSearchStateCopyWithImpl(this._value, this._then);

  final MovieSearchState _value;
  // ignore: unused_field
  final $Res Function(MovieSearchState) _then;

  @override
  $Res call({
    Object title = freezed,
    Object errorMessage = freezed,
    Object isSearching = freezed,
    Object isSearchCompleted = freezed,
    Object movieSearchResults = freezed,
    Object searchPageNum = freezed,
    Object popularMovies = freezed,
    Object popularPageNum = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed ? _value.title : title as String,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage as String,
      isSearching:
          isSearching == freezed ? _value.isSearching : isSearching as bool,
      isSearchCompleted: isSearchCompleted == freezed
          ? _value.isSearchCompleted
          : isSearchCompleted as bool,
      movieSearchResults: movieSearchResults == freezed
          ? _value.movieSearchResults
          : movieSearchResults as MovieSearchResults,
      searchPageNum: searchPageNum == freezed
          ? _value.searchPageNum
          : searchPageNum as int,
      popularMovies: popularMovies == freezed
          ? _value.popularMovies
          : popularMovies as MovieSearchResults,
      popularPageNum: popularPageNum == freezed
          ? _value.popularPageNum
          : popularPageNum as int,
    ));
  }
}

/// @nodoc
abstract class _$MovieSearchStateCopyWith<$Res>
    implements $MovieSearchStateCopyWith<$Res> {
  factory _$MovieSearchStateCopyWith(
          _MovieSearchState value, $Res Function(_MovieSearchState) then) =
      __$MovieSearchStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      String errorMessage,
      bool isSearching,
      bool isSearchCompleted,
      MovieSearchResults movieSearchResults,
      int searchPageNum,
      MovieSearchResults popularMovies,
      int popularPageNum});
}

/// @nodoc
class __$MovieSearchStateCopyWithImpl<$Res>
    extends _$MovieSearchStateCopyWithImpl<$Res>
    implements _$MovieSearchStateCopyWith<$Res> {
  __$MovieSearchStateCopyWithImpl(
      _MovieSearchState _value, $Res Function(_MovieSearchState) _then)
      : super(_value, (v) => _then(v as _MovieSearchState));

  @override
  _MovieSearchState get _value => super._value as _MovieSearchState;

  @override
  $Res call({
    Object title = freezed,
    Object errorMessage = freezed,
    Object isSearching = freezed,
    Object isSearchCompleted = freezed,
    Object movieSearchResults = freezed,
    Object searchPageNum = freezed,
    Object popularMovies = freezed,
    Object popularPageNum = freezed,
  }) {
    return _then(_MovieSearchState(
      title: title == freezed ? _value.title : title as String,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage as String,
      isSearching:
          isSearching == freezed ? _value.isSearching : isSearching as bool,
      isSearchCompleted: isSearchCompleted == freezed
          ? _value.isSearchCompleted
          : isSearchCompleted as bool,
      movieSearchResults: movieSearchResults == freezed
          ? _value.movieSearchResults
          : movieSearchResults as MovieSearchResults,
      searchPageNum: searchPageNum == freezed
          ? _value.searchPageNum
          : searchPageNum as int,
      popularMovies: popularMovies == freezed
          ? _value.popularMovies
          : popularMovies as MovieSearchResults,
      popularPageNum: popularPageNum == freezed
          ? _value.popularPageNum
          : popularPageNum as int,
    ));
  }
}

/// @nodoc
class _$_MovieSearchState implements _MovieSearchState {
  const _$_MovieSearchState(
      {@required this.title,
      @required this.errorMessage,
      @required this.isSearching,
      @required this.isSearchCompleted,
      @required this.movieSearchResults,
      @required this.searchPageNum,
      @required this.popularMovies,
      @required this.popularPageNum})
      : assert(title != null),
        assert(errorMessage != null),
        assert(isSearching != null),
        assert(isSearchCompleted != null),
        assert(movieSearchResults != null),
        assert(searchPageNum != null),
        assert(popularMovies != null),
        assert(popularPageNum != null);

  @override
  final String title;
  @override
  final String errorMessage;
  @override
  final bool isSearching;
  @override
  final bool isSearchCompleted;
  @override
  final MovieSearchResults movieSearchResults;
  @override
  final int searchPageNum;
  @override
  final MovieSearchResults popularMovies;
  @override
  final int popularPageNum;

  @override
  String toString() {
    return 'MovieSearchState(title: $title, errorMessage: $errorMessage, isSearching: $isSearching, isSearchCompleted: $isSearchCompleted, movieSearchResults: $movieSearchResults, searchPageNum: $searchPageNum, popularMovies: $popularMovies, popularPageNum: $popularPageNum)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MovieSearchState &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)) &&
            (identical(other.isSearching, isSearching) ||
                const DeepCollectionEquality()
                    .equals(other.isSearching, isSearching)) &&
            (identical(other.isSearchCompleted, isSearchCompleted) ||
                const DeepCollectionEquality()
                    .equals(other.isSearchCompleted, isSearchCompleted)) &&
            (identical(other.movieSearchResults, movieSearchResults) ||
                const DeepCollectionEquality()
                    .equals(other.movieSearchResults, movieSearchResults)) &&
            (identical(other.searchPageNum, searchPageNum) ||
                const DeepCollectionEquality()
                    .equals(other.searchPageNum, searchPageNum)) &&
            (identical(other.popularMovies, popularMovies) ||
                const DeepCollectionEquality()
                    .equals(other.popularMovies, popularMovies)) &&
            (identical(other.popularPageNum, popularPageNum) ||
                const DeepCollectionEquality()
                    .equals(other.popularPageNum, popularPageNum)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(errorMessage) ^
      const DeepCollectionEquality().hash(isSearching) ^
      const DeepCollectionEquality().hash(isSearchCompleted) ^
      const DeepCollectionEquality().hash(movieSearchResults) ^
      const DeepCollectionEquality().hash(searchPageNum) ^
      const DeepCollectionEquality().hash(popularMovies) ^
      const DeepCollectionEquality().hash(popularPageNum);

  @JsonKey(ignore: true)
  @override
  _$MovieSearchStateCopyWith<_MovieSearchState> get copyWith =>
      __$MovieSearchStateCopyWithImpl<_MovieSearchState>(this, _$identity);
}

abstract class _MovieSearchState implements MovieSearchState {
  const factory _MovieSearchState(
      {@required String title,
      @required String errorMessage,
      @required bool isSearching,
      @required bool isSearchCompleted,
      @required MovieSearchResults movieSearchResults,
      @required int searchPageNum,
      @required MovieSearchResults popularMovies,
      @required int popularPageNum}) = _$_MovieSearchState;

  @override
  String get title;
  @override
  String get errorMessage;
  @override
  bool get isSearching;
  @override
  bool get isSearchCompleted;
  @override
  MovieSearchResults get movieSearchResults;
  @override
  int get searchPageNum;
  @override
  MovieSearchResults get popularMovies;
  @override
  int get popularPageNum;
  @override
  @JsonKey(ignore: true)
  _$MovieSearchStateCopyWith<_MovieSearchState> get copyWith;
}
