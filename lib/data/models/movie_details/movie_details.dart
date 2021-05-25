import 'package:movie_search/data/models/movie_search/movie_search_results.dart';

class MovieDetails {
  MovieDetails({
    this.adult,
    this.backdropPath,
    this.belongsToCollection,
    this.budget,
    this.genres,
    this.homepage,
    this.id,
    this.imdbId,
    //this.originalLanguage,
    this.originalTitle,
    this.overview,
    this.popularity,
    this.posterPath,
    this.productionCompanies,
    this.productionCountries,
    this.releaseDate,
    this.revenue,
    this.runtime,
    this.spokenLanguages,
    this.status,
    this.tagline,
    this.title,
    this.video,
    this.voteAverage,
    this.voteCount,
    //Appended responses (credits and recommendations (MovieSearchResult is used for Recommendations))
    this.credits,
    this.movieSearchResults,
    //Adding String errorMessage to know if successful conversion, if the errorMessage is empty, then the operation was a success
    this.errorMessage,
    this.videos,
  });

  final bool adult;
  final String backdropPath;
  final BelongsToCollection belongsToCollection;
  final int budget;
  final List<Genre> genres;
  final String homepage;
  final int id;
  final String imdbId;
  //final OriginalLanguage originalLanguage;
  final String originalTitle;
  final String overview;
  final num popularity;
  final String posterPath;
  final List<ProductionCompany> productionCompanies;
  final List<ProductionCountry> productionCountries;
  final String releaseDate;
  final int revenue;
  final int runtime;
  final List<SpokenLanguage> spokenLanguages;
  final String status;
  final String tagline;
  final String title;
  final bool video;
  final num voteAverage;
  final int voteCount;
  //Appended responses
  final Credits credits;
  final MovieSearchResults movieSearchResults;
  //Added errorMessage to check for errors
  final String errorMessage;
  //Appended video for trailers
  final MovieVideos videos;

  factory MovieDetails.fromJson(Map<String, dynamic> json) => MovieDetails(
        adult: json["adult"] as bool ?? false,
        backdropPath: json["backdrop_path"] as String ?? '',
        //if the movie is not belonging to a Collection, then set it to an empty collection
        belongsToCollection: json["belongs_to_collection"] != null
            ? BelongsToCollection.fromJson(json["belongs_to_collection"])
            : BelongsToCollection(name: ""),
        budget: json["budget"] as int ?? 0,
        genres: json["genres"] != null
            ? List<Genre>.from(
                json["genres"].map((x) => Genre.fromJson(x)),
              )
            : <Genre>[],
        homepage: json["homepage"] as String ?? '',
        id: json["id"] as int ?? 0,
        imdbId: json["imdb_id"] as String ?? '',
        //originalLanguage: originalLanguageValues.map[json["original_language"]],
        originalTitle: json["original_title"] as String ?? '',
        overview: json["overview"] as String ?? 'Plot unknown',
        popularity: json["popularity"] as num ?? 0.0,
        posterPath: json["poster_path"] as String ?? '',
        productionCompanies: json["production_companies"] != null
            ? List<ProductionCompany>.from(json["production_companies"].map((x) => ProductionCompany.fromJson(x)))
            : <ProductionCompany>[],
        productionCountries: json["production_countries"] != null
            ? List<ProductionCountry>.from(json["production_countries"].map((x) => ProductionCountry.fromJson(x)))
            : <ProductionCountry>[],
        releaseDate: json["release_date"] as String ?? 'Release date unknown',
        revenue: json["revenue"] as int ?? 0,
        runtime: json["runtime"] as int ?? 0,
        spokenLanguages: json["spoken_languages"] != null
            ? List<SpokenLanguage>.from(json["spoken_languages"].map((x) => SpokenLanguage.fromJson(x)))
            : <SpokenLanguage>[],
        status: json["status"] as String ?? '',
        tagline: json["tagline"] as String ?? '',
        title: json["title"] as String ?? '',
        video: json["video"] as bool ?? false,
        voteAverage: json["vote_average"] as num ?? 0.0,
        voteCount: json["vote_count"] as int ?? 0,
        credits: json["credits"] != null
            ? Credits.fromJson(
                json["credits"],
              )
            : Credits(cast: <Cast>[], crew: <Cast>[]),
        movieSearchResults: json["recommendations"] != null
            ? MovieSearchResults.fromJson(json["recommendations"], 1)
            : MovieSearchResults(totalResults: 0, page: 1, movieSummaries: [], errorMessage: "No results found."),
        videos: json["videos"] != null
            ? MovieVideos.fromJson(
                json["videos"],
              )
            : MovieVideos(results: <VideosResult>[]),
        errorMessage: "",
      );

  Map<String, dynamic> toJson() => {
        "adult": adult,
        "backdrop_path": backdropPath,
        "belongs_to_collection": belongsToCollection.toJson(),
        "budget": budget,
        "genres": List<dynamic>.from(genres.map((x) => x.toJson())),
        "homepage": homepage,
        "id": id,
        "imdb_id": imdbId,
        // "original_language": originalLanguageValues.reverse[originalLanguage],
        "original_title": originalTitle,
        "overview": overview,
        "popularity": popularity,
        "poster_path": posterPath,
        "production_companies": List<dynamic>.from(productionCompanies.map((x) => x.toJson())),
        "production_countries": List<dynamic>.from(productionCountries.map((x) => x.toJson())),
        "release_date": releaseDate,
        "revenue": revenue,
        "runtime": runtime,
        "spoken_languages": List<dynamic>.from(spokenLanguages.map((x) => x.toJson())),
        "status": status,
        "tagline": tagline,
        "title": title,
        "video": video,
        "vote_average": voteAverage,
        "vote_count": voteCount,
        "credits": credits.toJson(),
        "movieSearchResults": movieSearchResults.toJson(),
        "videos": videos.toJson(),
      };
}

class BelongsToCollection {
  BelongsToCollection({
    this.id,
    this.name,
    this.posterPath,
    this.backdropPath,
  });

  final int id;
  final String name;
  final String posterPath;
  final String backdropPath;

  factory BelongsToCollection.fromJson(Map<String, dynamic> json) => BelongsToCollection(
        id: json["id"] as int ?? 0,
        name: json["name"] as String ?? '',
        posterPath: json["poster_path"] as String ?? '',
        backdropPath: json["backdrop_path"] as String ?? '',
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "poster_path": posterPath,
        "backdrop_path": backdropPath,
      };
}

class Credits {
  Credits({
    this.cast,
    this.crew,
  });

  final List<Cast> cast;
  final List<Cast> crew;

  factory Credits.fromJson(Map<String, dynamic> json) => Credits(
        cast: List<Cast>.from(json["cast"].map((x) => Cast.fromJson(x))) ?? <Cast>[],
        crew: List<Cast>.from(json["crew"].map((x) => Cast.fromJson(x))) ?? <Cast>[],
      );

  Map<String, dynamic> toJson() => {
        "cast": List<dynamic>.from(cast.map((x) => x.toJson())),
        "crew": List<dynamic>.from(crew.map((x) => x.toJson())),
      };
}

class Cast {
  Cast({
    this.adult,
    this.gender,
    this.id,
    this.knownForDepartment,
    this.name,
    this.originalName,
    this.popularity,
    this.profilePath,
    this.castId,
    this.character,
    this.creditId,
    this.order,
    this.department,
    this.job,
  });

  final bool adult;
  final int gender;
  final int id;
  final String knownForDepartment;
  final String name;
  final String originalName;
  final num popularity;
  final String profilePath;
  final int castId;
  final String character;
  final String creditId;
  final int order;
  final String department;
  final String job;

  factory Cast.fromJson(Map<String, dynamic> json) => Cast(
        adult: json["adult"] as bool ?? false,
        gender: json["gender"] as int ?? 0,
        id: json["id"] as int ?? 0,
        knownForDepartment: json["known_for_department"] as String ?? '',
        name: json["name"] as String ?? '',
        originalName: json["original_name"] as String ?? '',
        popularity: json["popularity"] as num ?? 0.0,
        profilePath: json["profile_path"] as String ?? '',
        castId: json["cast_id"] as int ?? 0,
        character: json["character"] as String ?? '',
        creditId: json["credit_id"] as String ?? '',
        order: json["order"] as int ?? 0,
        department: json["department"] as String ?? '',
        job: json["job"] as String ?? '',
      );

  Map<String, dynamic> toJson() => {
        "adult": adult,
        "gender": gender,
        "id": id,
        "known_for_department": knownForDepartment,
        "name": name,
        "original_name": originalName,
        "popularity": popularity,
        "profile_path": profilePath,
        "cast_id": castId,
        "character": character,
        "credit_id": creditId,
        "order": order,
        "department": department,
        "job": job
      };
}

class Genre {
  Genre({
    this.id,
    this.name,
  });

  final int id;
  final String name;

  factory Genre.fromJson(Map<String, dynamic> json) => Genre(
        id: json["id"] as int ?? 0,
        name: json["name"] as String ?? '',
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}

///Currently removed originalLanguage property from the model, if needed, will be added back
// enum OriginalLanguage { EN }
//
// final originalLanguageValues = EnumValues({"en": OriginalLanguage.EN});

class ProductionCompany {
  ProductionCompany({
    this.id,
    this.logoPath,
    this.name,
    this.originCountry,
  });

  final int id;
  final String logoPath;
  final String name;
  final String originCountry;

  factory ProductionCompany.fromJson(Map<String, dynamic> json) => ProductionCompany(
        id: json["id"] as int ?? 0,
        logoPath: json["logo_path"] as String ?? '',
        name: json["name"] as String ?? '',
        originCountry: json["origin_country"] as String ?? '',
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "logo_path": logoPath == null ? null : logoPath,
        "name": name,
        "origin_country": originCountry,
      };
}

class ProductionCountry {
  ProductionCountry({
    this.iso31661,
    this.name,
  });

  final String iso31661;
  final String name;

  factory ProductionCountry.fromJson(Map<String, dynamic> json) => ProductionCountry(
        iso31661: json["iso_3166_1"] as String ?? '',
        name: json["name"] as String ?? '',
      );

  Map<String, dynamic> toJson() => {
        "iso_3166_1": iso31661,
        "name": name,
      };
}

class SpokenLanguage {
  SpokenLanguage({
    this.englishName,
    //  this.iso6391,
    this.name,
  });

  final String englishName;
  //final OriginalLanguage iso6391;
  final String name;

  factory SpokenLanguage.fromJson(Map<String, dynamic> json) => SpokenLanguage(
        englishName: json["english_name"] as String ?? '',
        //iso6391: originalLanguageValues.map[json["iso_639_1"]],
        name: json["name"] as String ?? '',
      );

  Map<String, dynamic> toJson() => {
        "english_name": englishName,
        //"iso_639_1": originalLanguageValues.reverse[iso6391],
        "name": name,
      };
}

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}

class MovieVideos {
  MovieVideos({
    this.results,
  });

  final List<VideosResult> results;

  factory MovieVideos.fromJson(Map<String, dynamic> json) => MovieVideos(
        results: List<VideosResult>.from(json["results"].map((x) => VideosResult.fromJson(x))) ?? <VideosResult>[],
      );

  Map<String, dynamic> toJson() => {
        "results": List<dynamic>.from(results.map((x) => x.toJson())),
      };
}

class VideosResult {
  VideosResult({
    this.id,
    this.iso6391,
    this.iso31661,
    this.key,
    this.name,
    this.site,
    this.size,
    this.type,
  });

  final String id;
  final String iso6391;
  final String iso31661;
  final String key;
  final String name;
  final String site;
  final int size;
  final String type;

  factory VideosResult.fromJson(Map<String, dynamic> json) => VideosResult(
        id: json["id"] as String ?? '',
        iso6391: json["iso_639_1"] as String ?? '',
        iso31661: json["iso_3166_1"] as String ?? '',
        key: json["key"] as String ?? '',
        name: json["name"] as String ?? '',
        site: json["site"] as String ?? '',
        size: json["size"] as int ?? 0,
        type: json["type"] as String ?? '',
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "iso_639_1": iso6391,
        "iso_3166_1": iso31661,
        "key": key,
        "name": name,
        "site": site,
        "size": size,
        "type": type,
      };
}
