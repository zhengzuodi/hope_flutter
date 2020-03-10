import 'package:flutter/material.dart';
import 'package:hope_flutter/demo/basic_demo.dart';
import 'demo/bottom_navigation_bar_demo.dart';
import 'demo/drawer_demo.dart';
import 'demo/listview_demo.dart';

<<<<<<< HEAD
import 'model/post.dart';

void main() => runApp(App());



class App extends StatelessWidget {

  Widget _listItemBuilder(BuildContext context, int index) {
    return Container (
      color: Colors.white,
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Image.network(posts[index].imageUrl),
          SizedBox(height: 16.0),

          Text(
            posts[index].title,
            style: Theme.of(context).textTheme.title,
          ),

          Text(
            posts[index].title,
            style: Theme.of(context).textTheme.subtitle,
          ),
          SizedBox(height: 16.0)
        ],
      ),
    );
  }
=======
void main() => runApp(App());

class App extends StatelessWidget {
>>>>>>> structure-and-navigation

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
<<<<<<< HEAD
      home: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: Text('HOPE'),
          elevation: 0.0,
        ),
        body: ListView.builder(
          itemCount: posts.length,
          itemBuilder: _listItemBuilder,
        )
      ),
      theme: ThemeData(
        primarySwatch: Colors.yellow
=======
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        highlightColor: Color.fromRGBO(255, 225, 255, 0.5),
        splashColor: Colors.white70,
>>>>>>> structure-and-navigation
      ),
    );
  }
}

<<<<<<< HEAD
class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Text(
        'hello',
        textDirection: TextDirection.rtl,
        style: TextStyle(
            fontSize: 40.0,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
=======
class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: Text('HOPE'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              tooltip: 'Search',
              onPressed: () => debugPrint('Search button is pressed.'),
            ),
          ],
          elevation: 0.0,
          bottom: TabBar(
            unselectedLabelColor: Colors.black38,
            indicatorColor: Colors.black54,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 1.0,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.local_florist)),
              Tab(icon: Icon(Icons.change_history)),
              Tab(icon: Icon(Icons.directions_bike)),
            ],
          ),
>>>>>>> structure-and-navigation
        ),
        body: TabBarView(
          children: <Widget>[
            ListViewDemo(),
            BasicDemo(),
            Icon(Icons.directions_bike, size: 128.0, color: Colors.black12),
          ],
        ),
        drawer: DrawerDemo(),
        bottomNavigationBar: BottomNavigationBarDemo()
      ),
    );
  }
<<<<<<< HEAD
}
=======
}


















>>>>>>> structure-and-navigation
