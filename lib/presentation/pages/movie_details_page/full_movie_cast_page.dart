import 'package:movie_search/data/models/movie_details/movie_details.dart';
import 'package:movie_search/presentation/utilities/utilities.dart';
import 'package:flutter/material.dart';

class FullMovieCastPage extends StatefulWidget {
  final Credits credits;
  final String title;

  FullMovieCastPage({this.credits, this.title});

  @override
  _FullMovieCastPageState createState() => _FullMovieCastPageState();
}

class _FullMovieCastPageState extends State<FullMovieCastPage> with TickerProviderStateMixin {
  TabController _tabController;
  final List<Tab> _myTabs = <Tab>[
    const Tab(text: "Cast"),
    const Tab(text: "Crew"),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(initialIndex: 0, vsync: this, length: _myTabs.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  List<Widget> _tabViews(BuildContext context) {
    List<Widget> views = <Widget>[
      _buildCastTabView(context),
      _buildCrewTabView(context),
    ];
    return views;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[900],
          title: Text(
            widget.title,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        body: Column(
          children: [
            TabBar(
              controller: _tabController,
              tabs: _myTabs,
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: _tabViews(context),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCastTabView(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 8.0,
        right: 8.0,
        top: 16.0,
      ),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 0.50,
        ),
        itemCount: widget.credits.cast.length,
        itemBuilder: (context, index) {
          return _buildGridViewItem(context, index, true);
        },
      ),
    );
  }

  Widget _buildCrewTabView(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 8.0,
        right: 8.0,
        top: 16.0,
      ),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 0.50,
        ),
        itemCount: widget.credits.crew.length,
        itemBuilder: (context, index) {
          return _buildGridViewItem(context, index, false);
        },
      ),
    );
  }

  //Added bool value isCast, so the same widget can be used for crew and cast, and doesn't need more redundant code
  Widget _buildGridViewItem(BuildContext context, int index, bool isCast) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 0.69,
            child: BuildPosterImage(
              height: 135,
              width: 90,
              imagePath: isCast ? widget.credits.cast[index].profilePath : widget.credits.crew[index].profilePath,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 4.0),
            child: Text(
              isCast ? widget.credits.cast[index].name : widget.credits.crew[index].name,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              maxLines: 2,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Expanded(
            child: Text(
              isCast ? widget.credits.cast[index].character : widget.credits.crew[index].job,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              maxLines: 2,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
