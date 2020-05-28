import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Control',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: 35,
            color: Theme.of(context).accentColor,
          ),
          Positioned(
            right: 0,
            child: Text(
              '6',
              style: TextStyle(fontSize: 200.0, color: Color(0x10000000)),
            ),
          ),
          _mainContent(context),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.settings),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.more_vert),
                onPressed: () {},
              ),
            ],
          )),
    );
  }

  Column _mainContent(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 80,
        ),
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: Text(
            'Monday',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: _button(context),
        ),
        _TaskUncomplete("Call Abdo to ask about flutter"),
        _TaskUncomplete("Finish todo list application"),
        _TaskUncomplete("Continue Max's course"),
        _TaskUncomplete("Continue Angela's course"),
        Divider(),
        SizedBox(
          height: 16,
        ),
        _Taskcomplete('I did sleep early'),
        _Taskcomplete('i did use dribble'),
      ],
    );
  }

  Widget _TaskUncomplete(String Task) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, bottom: 24.0),
      child: Row(
        children: <Widget>[
          Icon(
            Icons.radio_button_unchecked,
            color: Theme.of(context).accentColor,
            size: 20,
          ),
          SizedBox(
            width: 28,
          ),
          Text(Task)
        ],
      ),
    );
  }

  Widget _Taskcomplete(String Task) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, bottom: 24.0),
      child: Row(
        children: <Widget>[
          Icon(
            Icons.radio_button_checked,
            color: Theme.of(context).accentColor,
            size: 20,
          ),
          SizedBox(
            width: 28,
          ),
          Text(Task)
        ],
      ),
    );
  }

  //right click on row - refactor - extract -method
  Widget _button(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: MaterialButton(
            onPressed: () {},
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            color: Theme.of(context).accentColor,
            textColor: Colors.white,
            padding: const EdgeInsets.all(14),
            child: Text("Tasks"),
          ),
        ),
        SizedBox(
          width: 32,
        ),
        Expanded(
          child: MaterialButton(
            onPressed: () {},
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            color: Colors.white,
            textColor: Theme.of(context).accentColor,
            padding: const EdgeInsets.all(14),
            child: Text("Tasks"),
          ),
        )
      ],
    );
  }
}
