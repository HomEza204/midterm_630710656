// ignore_for_file: avoid_unnecessary_containers

import 'package:cpsu_midterm_1_2023_starter/widgets/quizviewWidget.dart';
import 'package:flutter/material.dart';


// TODO: ใส่รหัสนักศึกษาที่ค่าสตริงนี้
const studentId = '630710656';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const List<String> question = [
    "What is the longest river in the world?",
    "What is the capital of France?",
    "What is red",
  ];

  static const List<String> qA = [
    "Amazon River",
    "Berlin",
    "Blue",
  ];

  static const List<String> qB = [
    "Nile River",
    "London",
    "Green",
  ];

  static const List<String> qC = [
    "Missisppi River",
    "Madrid",
    "Red",
  ];

  static const List<String> qD = [
    "Yangtze River",
    "Paris",
    "Yellow",
  ];

  static const List<double> sA = [0,0,0];
  static const List<double> sB = [1,0,0];
  static const List<double> sC = [0,0,1];
  static const List<double> sD = [0,1,0];
  static const List<int> qnumber = [1,2,3];

  int num = 0;
  var _question = question[0];
  var _qA = qA[0];
  var _qB = qB[0];
  var _qC = qC[0];
  var _qD = qD[0];
  var _sA = sA[0];
  var _sB = sB[0];
  var _sC = sC[0];
  var _sD = sD[0];
  var _qnumber = qnumber[0];

  void _handleClickback () {
    if (num <= 0){
      num = 0;
    }else {
      num--;
    }
    setState((){
      _question = question[num];
      _qA = qA[num];
      _qB = qB[num];
      _qC = qC[num];
      _qD = qD[num];
      _sA = sA[num];
      _sB = sB[num];
      _sC = sC[num];
      _sD = sD[num];
      _qnumber = qnumber[num];
    });
  }

  void _handleClicknext () {
    if(num >= 2){
      num = 2;
    }else {
      num++;
    }
    setState((){
      _question = question[num];
      _qA = qA[num];
      _qB = qB[num];
      _qC = qC[num];
      _qD = qD[num];
      _sA = sA[num];
      _sB = sB[num];
      _sC = sC[num];
      _sD = sD[num];
      _qnumber = qnumber[num];
    });
  }


  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 20.0,
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg_colorful.jpg"),
              opacity: 0.6,
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('Good Morning',
                  textAlign: TextAlign.center, style: textTheme.headlineMedium),
              Text(studentId,
                  textAlign: TextAlign.center,
                  style: textTheme.headlineSmall!.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.black87)),
              Spacer(),
              _buildQuizView(),
              Spacer(),
              _buildButtonPanel(),
              SizedBox(height: 16.0),
            ],
          ),
        ),
      ),
    );
  }

  _buildQuizView() {
    // TODO: build UI
    return Quizview(question: _question,qA: _qA,qB: _qB,qC: _qC,qD: _qD,sA: _sA,sB: _sB,sC: _sC,sD: _sD,qnumber: _qnumber,);
  }

  _buildButtonPanel() {
    // TODO: build UI
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: _handleClickback,
            child: Container(
              width: 180.0,
              height: 45.0,
              decoration: BoxDecoration(
                color: Colors.red,
                border: Border.all(width: 2.0),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Text(
                '<',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30.0,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          TextButton(
            onPressed: _handleClicknext,
            child: Container(
              width: 180.0,
              height: 45.0,
              decoration: BoxDecoration(
                color: Colors.green,
                border: Border.all(width: 2.0),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Text(
                '>',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30.0,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
