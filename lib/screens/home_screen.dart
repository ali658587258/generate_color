import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  Color cone = Colors.blueAccent;
  String name='Color(0xff448aff)';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: cone
              ),
              child: Text(name,style: TextStyle(fontSize: 18),),
            ),
            ElevatedButton(
                onPressed: (){
                  Random random = Random();
                  Color tempcol = Color.fromRGBO(
                    random.nextInt(255),
                    random.nextInt(255),
                    random.nextInt(255),
                    1,
                  );
                  setState(() {
                    name=('${tempcol}');
                    cone=tempcol;
                  });
                },
                child: Text('Random Color'))
          ],
        ),
      ),

    );
  }
}
