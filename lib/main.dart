import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
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
      ),
    );
  }
}

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
        ),
      ),
    );
  }
}