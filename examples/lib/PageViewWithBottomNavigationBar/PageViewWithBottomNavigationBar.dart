import 'package:examples/PageViewWithBottomNavigationBar/blue.dart';
import 'package:examples/PageViewWithBottomNavigationBar/red.dart';
import 'package:examples/PageViewWithBottomNavigationBar/yellow.dart';
import 'package:flutter/material.dart';

class PageViewWithBottomNavigationBar extends StatefulWidget {
  PageViewWithBottomNavigationBar({Key key}) : super(key: key);

  @override
  _PageViewWithBottomNavigationBarState createState() =>
      _PageViewWithBottomNavigationBarState();
}

class _PageViewWithBottomNavigationBarState extends State<PageViewWithBottomNavigationBar> {
  int bottomSelectedIndex = 0;

  List<BottomNavigationBarItem> buildBottomNavBarItems() {
    return [
      BottomNavigationBarItem(
          icon: new Icon(Icons.home), title: new Text('Red')),
      BottomNavigationBarItem(
        icon: new Icon(Icons.search),
        title: new Text('Blue'),
      ),
      BottomNavigationBarItem(
          icon: Icon(Icons.info_outline), title: Text('Yellow'))
    ];
  }

  PageController pageController = PageController(
  initialPage: 0,
  keepPage: true,
);


@override
void initState() {
  super.initState();
}

void pageChanged(int index) {
  setState(() {
    bottomSelectedIndex = index;
  });
}

Widget buildPageView() {
  return PageView(
    controller: pageController,
    onPageChanged: (index) {
      pageChanged(index);
    },
    children: <Widget>[
      Red(),
      Blue(),
      Yellow(),
    ],
  );
}

void bottomTapped(int index) {
  setState(() {
    bottomSelectedIndex = index;
    pageController.animateToPage(index, duration: Duration(milliseconds: 500), curve: Curves.ease);
  });
}

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text("PageViewWithBottomNavigationBar"),
    ),
    body: buildPageView(),
    bottomNavigationBar: BottomNavigationBar(
      currentIndex: bottomSelectedIndex,
      onTap: (index) {
          bottomTapped(index);
      },
      items: buildBottomNavBarItems(),
    ),
  );
}
}
