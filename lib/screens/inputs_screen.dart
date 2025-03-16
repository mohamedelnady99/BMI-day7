import 'package:bmi_calculator/screens/result_screen.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class InputsScreen extends StatefulWidget {
  const InputsScreen({super.key});

  @override
  State<InputsScreen> createState() => _InputsScreenState();
}

class _InputsScreenState extends State<InputsScreen> {
  bool? isMale, isFemale;
  double personHeight = 150;
  int weight = 60, age = 26;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xff1b2034),
      appBar: AppBar(
        backgroundColor: Color(0xff30324C),
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
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap:
                      () => setState(() {
                        isMale == true ? isMale = false : isMale = true;
                        isFemale = false;
                      }),
                  child: Container(
                    decoration: BoxDecoration(
                      color:
                          isMale == true
                              ? Color(0xff333244)
                              : Color(0xff24263B),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        Image.asset('images/male.png'),
                        Text(
                          'Male',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff8B8C9E),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap:
                      () => setState(() {
                        isFemale == true ? isFemale = false : isFemale = true;
                        isMale = false;
                      }),
                  child: Container(
                    decoration: BoxDecoration(
                      color:
                          isFemale == true
                              ? Color(0xff333244)
                              : Color(0xff24263B),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        Image.asset('images/female.png'),
                        Text(
                          'Female',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff8B8C9E),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 25),
            Container(
              decoration: BoxDecoration(
                color: Color(0xff333244),
                borderRadius: BorderRadius.circular(12),
              ),
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 27),
              child: Column(
                children: [
                  Text(
                    'Height',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                      color: Color(0xff8B8C9E),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        personHeight.round().toString(),
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 40,
                          color: Colors.white,
                        ),
                      ),
                      Text('cm',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),)
                    ],
                  ),
                  SfSlider(
                    min: 0,
                    max: 300,
                    value: personHeight,
                    interval: 10,
                    minorTicksPerInterval: 1,
                    onChanged: (dynamic value) {
                      setState(() {
                        personHeight = value;
                      });
                    },
                    activeColor: Color(0xffE83D67),
                  ),
                ],
              ),
            ),
            SizedBox(height: 29,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xff24263B),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 25),
                  width: width /2.5,
                  child: Column(
                    children: [
                      Text(
                        'Weight',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff8B8C9E),
                        ),
                      ),
                      Text(weight.toString(), style: TextStyle(fontSize: 40,
                      fontWeight: FontWeight.w700, color: Colors.white)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () => setState(() {
                              weight--;
                            }),
                            child: Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xff8B8C9E)
                              ),
                              child: Text('-', style: TextStyle(fontWeight: FontWeight.w600,
                              fontSize: 32, color: Colors.white),),
                            ),
                          ),
                          InkWell(
                            onTap: () => setState(() {
                              weight++;
                            }),
                            child: Container(
                              padding: EdgeInsets.all(7),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xff8B8C9E)
                              ),
                              child: Text('+', style: TextStyle(fontWeight: FontWeight.w600,
                              fontSize: 32, color: Colors.white),),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xff24263B),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 25),
                  width: width /2.5,
                  child: Column(
                    children: [
                      Text(
                        'Age',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff8B8C9E),
                        ),
                      ),
                      Text(age.toString(), style: TextStyle(fontSize: 40,
                      fontWeight: FontWeight.w700, color: Colors.white)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () => setState(() {
                              age--;
                            }),
                            child: Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xff8B8C9E)
                              ),
                              child: Text('-', style: TextStyle(fontWeight: FontWeight.w600,
                              fontSize: 32, color: Colors.white),),
                            ),
                          ),
                          InkWell(
                            onTap: () => setState(() {
                              age++;
                            }),
                            child: Container(
                              padding: EdgeInsets.all(7),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xff8B8C9E)
                              ),
                              child: Text('+', style: TextStyle(fontWeight: FontWeight.w600,
                              fontSize: 32, color: Colors.white),),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: InkWell(
        onTap: () {
          double result = weight / ((personHeight / 100) * (personHeight / 100));
          Navigator.push(context, MaterialPageRoute(builder: (_) => ResultScreen(result: result)));
        },
        child: Container(
          height: 100,
          color: Color(0xffE83D67),
          child: Center(child: Text('Calculate', style: TextStyle(fontSize: 32,
            fontWeight: FontWeight.w600, color: Colors.white)),
        ),
            ),
      ));
  }
}
