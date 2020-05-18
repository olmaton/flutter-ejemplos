import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HideBottomNavBar extends StatefulWidget {
  @override
  HideBottomNavBarState createState() {
    return new HideBottomNavBarState();
  }
}

class HideBottomNavBarState extends State<HideBottomNavBar> {
  String text = 'Home';
  ScrollController _scrollController;
  bool _visible = true;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(() {
      if (_scrollController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        setState(() => _visible = false);
      }

      if (_scrollController.position.userScrollDirection ==
          ScrollDirection.forward) {
        setState(() => _visible = true);
      }
    });
  }

  _onTap(int index) {
    switch (index) {
      case 0:
        setState(() => text = 'Home');
        break;
      case 1:
        setState(() => text = 'Favorite');
        break;
      case 2:
        setState(() => text = 'Profile');
        break;
      case 3:
        setState(() => text = 'Settings');
        break;
      default:
        setState(() => text = 'Home');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, boxScrolled) => [
              SliverAppBar(
                title: Text("Bottom Nav Bar Example"),
                pinned: true,
                floating: true,
                snap: false,
              ),
            ],
        body: ListView(
          controller: _scrollController,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 120),
              child: Text("List of Data", style: TextStyle(fontSize: 21.0)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 120),
              child: Text("List of Data", style: TextStyle(fontSize: 21.0)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 120),
              child: Text("List of Data", style: TextStyle(fontSize: 21.0)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 120),
              child: Text("List of Data", style: TextStyle(fontSize: 21.0)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 120),
              child: Text("List of Data", style: TextStyle(fontSize: 21.0)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 120),
              child: Text("List of Data", style: TextStyle(fontSize: 21.0)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 120),
              child: Text("List of Data", style: TextStyle(fontSize: 21.0)),
            ),
          ],
        ),
      ),
      bottomNavigationBar: !_visible
          ? SizedBox()
          : BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  title: Text("Home"),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.favorite),
                  title: Text("Favorite"),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  title: Text("Profile"),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  title: Text("Settings"),
                ),
              ],
              onTap: _onTap,
            ),
    );
  }
}