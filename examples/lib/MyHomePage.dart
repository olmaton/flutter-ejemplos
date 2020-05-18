import 'package:examples/select-multiple/SelectMultiple.dart';
import 'package:flutter/material.dart';
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 

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
            child: const Text('Listview con select multiple', style: TextStyle(fontSize: 20)))
          ],
        ),
      )// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
