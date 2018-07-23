import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:cupnav10/pages/pages.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'BUTTON NAV CAM '),
//        initialRoute: "/",
//        routes: {
////        '/First': (context) => FirstScreen(),
//          '/Second': (Context) => new Second()
//        }
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
//      appBar: new AppBar(
//        title: new Text(widget.title),
//      ),
      body: new Center(
        child: new Stack(
          children: <Widget>[
            BackGround(),
            P01Overlay(),
            new Container(
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  new Column(
                    children: <Widget>[




                      //new Spacer(),
                      //  loosing everything here.



//                      Column(
//                        children: <Widget>[
//                          new Text(
//                            "TIM CANOVA",
//                            style: TextStyle(
//                              fontWeight: FontWeight.bold,
//                              fontSize: 40.0,
//                            ),
//                          ),
//                          new Text(
//                            "  FOR CONGRESS",
//                            style: TextStyle(
//                              fontWeight: FontWeight.bold,
//                              fontSize: 20.0,
//                            ),
//                          ),
//                        ],
//                      ),




                      CUPBUT_01(context),


//                      new FlatButton(
//                          color: Colors.red.withOpacity(0.5),
//                          onPressed: (){
//                            mbNav001(context);
//                          },
//                          child: Text("FlatButton 01")
//                      ),



//                      mbNav001(context),





                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: new Icon(Icons.all_inclusive),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }


//========================================================
//==========   CupButton 01     ===================
//========================================================
  CupertinoButton CUPBUT_01(BuildContext context) {
    return new CupertinoButton(
                      color: Colors.blue.withOpacity(0.5),
                      //minSize: double.infinity,

                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Column(
                          children: <Widget>[
                            Text("TIM CANOVA",
                              style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30.0,
                            ),
                            ),
                            Text("For Congress",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      onPressed: () {
                        //  PUT NAVIGATION HERE
                        print('click mb001');
                        //Navigator.pushNamed(context, '/Second');
                        Navigator.push(
                          context,
                          //MaterialPageRoute(builder: (context) => Second()),
                          CupertinoPageRoute(builder: (context) => Second()),
                        );
                      },
                    );
  }
//========================================================
//==========   Material Button 001     ===================
//========================================================






//========================================================
//==========   Material Button 001     ===================
//========================================================
  Padding mbNav001(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(28.0),
      child: new MaterialButton(
          height: 20.0,
          padding: EdgeInsets.all(10.0),
          minWidth: double.infinity,
          color: Theme.of(context).primaryColor,
          textColor: Colors.white,
          child: new Text(
            "material button a",
            style: new TextStyle(
              fontSize: 20.0,
              color: Colors.yellow,
            ),
          ),
          splashColor: Colors.redAccent,
          // -----    This line is giving me error...
          onPressed: () {
            //  PUT NAVIGATION HERE
            print('click mb001');
            //Navigator.pushNamed(context, '/Second');

            Navigator.push(
              context,
              //MaterialPageRoute(builder: (context) => Second()),
              CupertinoPageRoute(builder: (context) => Second()),
            );
          }
          //  expecting to find...  :

          ),
    );
  }
//========================================================
//==========   Material Button 001     ===================
//========================================================

}

//========================================================
//==========   SECOND     ================================
class Second extends StatefulWidget {
  Second({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _Second createState() => new _Second();
}

class _Second extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Second Screen"),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //mbNav001(context),
            new Text(
              'page 2',
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
//========================================================
//==========   SECOND     ================================
//========================================================

//========================================================
//==========   BACKGROUND ================================
//========================================================

//========================================================
//==========   BACKGROUND ================================
//========================================================
