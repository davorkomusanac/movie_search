import 'dart:io';
import 'package:movie_search/api_key.dart';
import 'package:movie_search/data/models/movie_details/movie_details.dart';
import 'package:movie_search/data/models/movie_search/movie_search_results.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

const String _baseSearchMovieUrl = "https://api.themoviedb.org/3/search/movie?api_key=$API_KEY&language=en-US&query=";
const String _baseMovieDetailsUrl = "https://api.themoviedb.org/3/movie/";
const String _basePopularMoviesUrl = "https://api.themoviedb.org/3/movie/popular?api_key=$API_KEY&language=en-US&page=";

class MovieRepository {
  final http.Client client;

  MovieRepository(this.client);

  Future<MovieSearchResults> searchMovie(String title, [int page = 1]) async {
    try {
      final response = await client.get(Uri.parse(_buildSearchUrl(title, page)));
      print(_buildSearchUrl(title, page));

      if (response.statusCode != 200) throw Exception('There was an error searching');

      return MovieSearchResults.fromJson(
        json.decode(response.body) as Map<String, dynamic>,
        page,
      );
    } on SocketException {
      print("Movie Search ERROR: " + "No internet connection found / SocketException");
      return MovieSearchResults(
        totalResults: 0,
        errorMessage: "Network issues, check your internet connection.",
        movieSummaries: [],
      );
    } catch (e) {
      print("Movie Search ERROR: " + e.toString());
      return MovieSearchResults(
        totalResults: 0,
        errorMessage: e.toString(),
        movieSummaries: [],
      );
    }
  }

  String _buildSearchUrl(String title, int page) {
    String returnString = _baseSearchMovieUrl;
    List<String> queryWords = title.split(" ");

    for (int i = 0; i < queryWords.length; i++) {
      if (i != queryWords.length - 1) {
        returnString += queryWords[i] + "%20";
      } else {
        returnString += queryWords[i];
      }
    }

    if (page != 1) {
      returnString += "&page=$page&include_adult=false";
    } else {
      returnString += "&page=1&include_adult=false";
    }

    return returnString;
  }

  Future<MovieDetails> getMovieDetails(int id) async {
    try {
      final response = await client.get(Uri.parse(_buildMovieDetailsUrl(id)));
      print(_buildMovieDetailsUrl(id));

      if (response.statusCode != 200) throw Exception('There was an error getting movie details');

      return MovieDetails.fromJson(json.decode(response.body) as Map<String, dynamic>);
    } on SocketException {
      print("Movie Details ERROR: " + "No internet connection found / SocketException");
      return MovieDetails(
        errorMessage: "Network issues, check your internet connection.",
      );
    } catch (e) {
      print("Movie Details ERROR: " + e.toString());
      return MovieDetails(
        errorMessage: e.toString(),
      );
    }
  }

  String _buildMovieDetailsUrl(int id) {
    String returnString =
        _baseMovieDetailsUrl + id.toString() + "?api_key=$API_KEY" + "&append_to_response=credits,recommendations,videos";
    return returnString;
  }

  Future<MovieSearchResults> getPopularMovies([int page = 1]) async {
    try {
      final response = await client.get(Uri.parse(_basePopularMoviesUrl + page.toString()));
      print(_basePopularMoviesUrl + page.toString());

      if (response.statusCode != 200) throw Exception('There was an error searching');

      return MovieSearchResults.fromJson(
        json.decode(response.body) as Map<String, dynamic>,
        page,
      );
    } on SocketException {
      print("Popular Movies Search ERROR: " + "No internet connection found / SocketException");
      return MovieSearchResults(
        totalResults: 0,
        errorMessage: "Network issues, check your internet connection.",
        movieSummaries: [],
      );
    } catch (e) {
      print("Popular Movies Search ERROR: " + e.toString());
      return MovieSearchResults(
        totalResults: 0,
        errorMessage: e.toString(),
        movieSummaries: [],
      );
    }
  }
}
