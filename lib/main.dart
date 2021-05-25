import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_search/application/search/movie_search/movie_details/movie_details_bloc.dart';
import 'package:movie_search/application/search/movie_search/movie_search_bloc.dart';
import 'package:movie_search/data/search_db/movie_db/movie_repository.dart';
import 'package:http/http.dart' as http;
import 'package:movie_search/presentation/pages/search_page/search_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  MovieRepository _movieRepository;
  http.Client client;

  @override
  void initState() {
    super.initState();
    client = http.Client();
    _movieRepository = MovieRepository(client);
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => MovieSearchBloc(
            _movieRepository,
          ),
        ),
        BlocProvider(
          create: (context) => MovieDetailsBloc(
            _movieRepository,
          ),
        ),
      ],
      child: MaterialApp(
        title: 'Movie Search',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: Colors.blueGrey[900],
          inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
            ),
          ),
        ),
        home: SearchPage(),
      ),
    );
  }
}
