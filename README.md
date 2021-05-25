# movie_search

A simple movie search application, made for the course "XML programming"

# About
This is a simple Flutter app which I made for the purpose of a university course called "XML programming".
You can see popular movies, and also search for specific movies and see details about the one you are most interested in.

I used BLoC with Freezed for state management and implemented basic layer separation 
The app uses TMDB API for searching, so you need an API key if you wish to use the application yourself.

When you have the API key, create a new file inside the main folder as "api_key.dart" and inside of it create a new line:
"const API_KEY = "PUT_KEY_HERE";"

![](movie_search.gif)