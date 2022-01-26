import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Animator(),
    );
  }
}
class Animator extends StatefulWidget {
  const Animator({Key? key}) : super(key: key);

  @override
  _AnimatorState createState() => _AnimatorState();
}

class _AnimatorState extends State<Animator> {
  bool _value= false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow,size: 55,color: Colors.black,),
        onPressed: (){
          setState(() {
            _value=!_value;
          });
        },
      ),
      body: Center(
        child: AnimatedContainer(
          height: _value==false? 50:600,
          width: _value==false?  30:500,
          color: Colors.black,
          child: CircleAvatar(
            backgroundImage: AssetImage('images/1.jpg'),
          ),
          duration: Duration(seconds: 20),
        ),
      ),
    );
  }
}

