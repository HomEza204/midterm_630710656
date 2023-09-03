import 'package:flutter/material.dart';

class Quizview extends StatelessWidget {
  final String question;
  final String qA;
  final String qB;
  final String qC;
  final String qD;
  final double sA;
  final double sB;
  final double sC;
  final double sD;
  final int qnumber;

  const Quizview({super.key,
  required this.question,
    required this.qA,
    required this.qB,
    required this.qC,
    required this.qD,
    required this.sA,
    required this.sB,
    required this.sC,
    required this.sD,
    required this.qnumber,
  });




  @override
  Widget build(BuildContext context) {
    bool bA;
    bool bB;
    bool bC;
    bool bD;
    if (sA == 1){
      bA = true;
    }else {
      bA = false;
    }

    if (sB == 1){
      bB = true;
    }else {
      bB = false;
    }

    if (sC == 1){
      bC = true;
    }else {
      bC = false;
    }

    if (sD == 1){
      bD = true;
    }else {
      bD = false;
    }

    return Center(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 24.0,horizontal: 8.0),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(width: 2.0),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          children: [
            Text('Question $qnumber of 3'),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.green,
                  border: Border.all(width: 2.0),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Text(
                        question,
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Container(
                width: 300.0,
                padding: EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                  color: bA ? Colors.indigoAccent : Colors.white,
                  border: Border.all(width: 1.0),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 16.0, left: 8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: bA ? Colors.red : Colors.white,
                              border: Border.all(width: 1.0),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 2.0, horizontal: 5.0),
                              child: Text('A'),
                            ),
                          ),
                        ),
                        Text(qA),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Opacity(
                        opacity: sA,
                        child: Container(
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(50.0),
                                border: Border.all(width: 1.0)),
                            child: Icon(
                              Icons.alarm_on,
                            )),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Container(
                width: 300.0,
                padding: EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                  color: bB ? Colors.indigoAccent : Colors.white,
                  border: Border.all(width: 1.0),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 16.0, left: 8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: bB ? Colors.red : Colors.white,
                              border: Border.all(width: 1.0),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 2.0, horizontal: 5.0),
                              child: Text('B'),
                            ),
                          ),
                        ),
                        Text(qB),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Opacity(
                        opacity: sB,
                        child: Container(
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(50.0),
                                border: Border.all(width: 1.0)),
                            child: Icon(Icons.alarm_on)),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Container(
                width: 300.0,
                padding: EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                  color: bC ? Colors.indigoAccent : Colors.white,
                  border: Border.all(width: 1.0),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 16.0, left: 8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: bC ? Colors.red : Colors.white,
                              border: Border.all(width: 1.0),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 2.0, horizontal: 5.0),
                              child: Text('A'),
                            ),
                          ),
                        ),
                        Text(qC),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Opacity(
                        opacity: sC,
                        child: Container(
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(50.0),
                                border: Border.all(width: 1.0)),
                            child: Icon(Icons.alarm_on)),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Container(
                width: 300.0,
                padding: EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                  color: bD ? Colors.indigoAccent : Colors.white,
                  border: Border.all(width: 1.0),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 16.0, left: 8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: bD ? Colors.red : Colors.white,
                              border: Border.all(width: 1.0),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 2.0, horizontal: 5.0),
                              child: Text('A'),
                            ),
                          ),
                        ),
                        Text(qD),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Opacity(
                        opacity: sD,
                        child: Container(
                            decoration: BoxDecoration(
                                color: true ? Colors.green : Colors.white,
                                borderRadius: BorderRadius.circular(50.0),
                                border: Border.all(width: 1.0)),
                            child: Icon(Icons.alarm_on)),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
