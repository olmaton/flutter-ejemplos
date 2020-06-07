import 'package:examples/BottomNavigationBarWithTabBarView/BottomNavigationBarWithTabBarView.dart';
import 'package:examples/BottomOfNavigationInFlutter/BottomOfNavigationInFlutterPage.dart';
import 'package:examples/HideBottomNavBar/HideBottomNavBar.dart';
import 'package:examples/PageViewWithBottomNavigationBar/PageViewWithBottomNavigationBar.dart';
import 'package:examples/blocMovies/blocMovies.dart';
import 'package:examples/select-multiple/SelectMultiple.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  _btnBottomOfNavigationInFlutterPage() {
    return RaisedButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BottomOfNavigationInFlutterPage(),
              ));
        },
        child: const Text('BottomOfNavigationInFlutterPage',
            style: TextStyle(fontSize: 20)));
  }

  _btnBottomNavigationBarWithTabBarView() {
    return RaisedButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BottomNavigationBarWithTabBarView(),
              ));
        },
        child: const Text('BottomNavigationBarWithTabBarView',
            style: TextStyle(fontSize: 20)));
  }

  _btnPageViewWithBottomNavigationBar() {
    return RaisedButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PageViewWithBottomNavigationBar(),
              ));
        },
        child: const Text('Flutter — PageView with BottomNavigationBar',
            style: TextStyle(fontSize: 20)));
  }

  _btnPageBlocMovies() {
    return RaisedButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => blocMovies(),
              ));
        },
        child: const Text('Page Bloc Movies', style: TextStyle(fontSize: 20)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 30),
              RaisedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SelectMultiple(),
                        ));
                  },
                  child: const Text('Listview con select multiple',
                      style: TextStyle(fontSize: 20))),
              RaisedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HideBottomNavBar(),
                        ));
                  },
                  child: const Text(
                      'Ocultar BOTTOM NAVIGATION BAR on Scroll Down',
                      style: TextStyle(fontSize: 20))),
              _btnBottomOfNavigationInFlutterPage(),
              _btnBottomNavigationBarWithTabBarView(),
              _btnPageViewWithBottomNavigationBar(),
              _btnPageBlocMovies()
            ],
          ),
        ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
