import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.result});
  final double result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1b2034),
      appBar: AppBar(
        backgroundColor: Color(0xff24263B),
        title: Text(
          'BMI Calculator',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(23.5),
        child: Column(
          spacing: 25,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Your Result',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: Colors.white,
                fontSize: 40,
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 58, bottom: 213, right: 34, left: 34),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xff333244),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  Text(
                    result < 18.5 || result > 24.9 ? 'Abnormal' : 'Normal',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color:
                          result < 18.5 || result > 24.9
                              ? Color(0xffE83D67)
                              : Color(0xff21BF73),
                    ),
                  ),
                  SizedBox(height: 33),
                  Text(
                    result.round().toString(),
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 64,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 60),
                  Text(
                    'You Have ${result < 18.5 || result > 24.9 ? 'an abnormal' : 'a normal'} Body Weight, Good Job.',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Color(
                    0xff8B8C9E
                  )),textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
        bottomNavigationBar: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            height: 100,
            color: Color(0xffE83D67),
            child: Center(child: Text('Re - Calculate', style: TextStyle(fontSize: 32,
                fontWeight: FontWeight.w600, color: Colors.white)),
            ),
          ),
        )
    );
  }
}
