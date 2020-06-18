import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xffFBB034),
       primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _number = 0;
  

  void _incrementCounter() {
    setState(() {
   
      _number++;
    });
  }

  void _decrementCounter(){
    setState(() {
     if(_number!=0){
       _number--;
     }
    });
  }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
      centerTitle: true,
        title: Text("Startwithgenesis-CounterApp"),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Press + for incrementing the value & - for decrementing the value',
            ),
            Text(
              '$_number',
              style: Theme.of(context).textTheme.headline4,
            ),
            SizedBox(height: 100),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
         children: [
           FloatingActionButton(
             onPressed: _incrementCounter,
             tooltip: 'Increment',
             child: Icon(Icons.add),
      ),
      SizedBox(width: 30,),
      FloatingActionButton(
             onPressed: _decrementCounter,
             tooltip: 'Decrement',
             child: Icon(Icons.remove),
      ),
         ],
       ),
          ],
        ),
      ),
       );
  }
}
