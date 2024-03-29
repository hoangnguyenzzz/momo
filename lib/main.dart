import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
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
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        margin: const EdgeInsets.all(50),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(30)),
          border: Border.symmetric(vertical: BorderSide.none),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Lesson 4: count=$_counter',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.home,
                    size: 25,
                    color: Colors.black12),
                Image.asset('assets/images/images1.png', width: 50,height: 50,),

              ],
            ),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  child: Text('Click Button'),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> ListDemo()));
                  }
                  ,)// click next screen list demo
            ),
            IconButton(
              onPressed: _incrementCounter,
              icon: Icon(Icons.exit_to_app),),
            /*Container(
                  color: Colors.yellowAccent,
                  width: 300,
                  height: 300,
                  child: Stack(
                    children: [
                    Positioned(
                      left: 60,
                      right: 60,
                      child: Text('Lesson 4',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold
                    ),)),
                    Positioned(
                      top: 100,
                      left: 100,
                      child: Text('Lesson 5',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold
                      )),
                      )
                  ],
                  ),
                )*/
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Text('ADD'),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}