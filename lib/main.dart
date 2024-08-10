// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:navigation_one/container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _rotationTween;
  double end = 0;
  Color color = Colors.blueGrey.shade100;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1))
          ..addListener(() {
            setState(() {});
          });

    _rotationTween =
        Tween<double>(begin: 0, end: end).animate(_animationController);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size(:height, :width) = MediaQuery.sizeOf(context);
    _rotationTween = Tween<double>(begin: _rotationTween.value, end: end)
        .animate(_animationController);
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(children: [
          Positioned(
            bottom: height * 0.7,
            left: width * 0.05,
            child: Transform.rotate(
              angle: _rotationTween.value,
              child: ClipOval(
                child: Container(
                  width: 400,
                  height: 400,
                  decoration: BoxDecoration(color: Colors.purple.shade100),
                  child: Stack(
                    children: [
                      Positioned(
                          top: height * 0.435,
                          left: width * 0.18,
                          child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  end = -7;
                                  _animationController.forward();
                                });
                              },
                              child: const MyText(text: '1'))),
                      Positioned(
                          top: height * 0.47,
                          left: width * 0.4,
                          child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  end = -6.3;
                                  _animationController.forward();
                                });
                              },
                              child: const MyText(text: '2'))),
                      Positioned(
                        top: height * 0.44,
                        left: width * 0.65,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              end = -5.7;
                              _animationController.forward();
                            });
                          },
                          child: const MyText(text: '3'),
                        ),
                      ),
                      Positioned(
                        top: height * 0.335,
                        left: width * 0.82,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              // end = -130.2;
                              end = -5;
                              _animationController.forward();
                            });
                          },
                          child: const MyText(text: '4'),
                        ),
                      ),
                      Positioned(
                        top: height * 0.15,
                        left: width * 0.79,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              end = -4.2;
                              _animationController.forward();
                            });
                          },
                          child: const MyText(text: '5'),
                        ),
                      ),
                      Positioned(
                        top: height * 0.03,
                        left: width * 0.57,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              end = -9.5;
                              _animationController.forward();
                            });
                          },
                          child: const MyText(text: '6'),
                        ),
                      ),
                      Positioned(
                        top: height * 0.04,
                        left: width * 0.23,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              end = -15.1;
                              _animationController.forward();
                            });
                          },
                          child: const MyText(text: '7'),
                        ),
                      ),
                      Positioned(
                        top: height * 0.16,
                        left: width * 0.05,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              end = -14.7;
                              _animationController.forward();
                            });
                          },
                          child: const MyText(text: '8'),
                        ),
                      ),
                      Positioned(
                        top: height * 0.33,
                        left: width * 0.05,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              end = -14;
                              _animationController.forward();
                            });
                          },
                          child: const MyText(text: '9'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
              top: height * 0.42,
              left: width * 0.07,
              child: Container(
                height: height * 0.2,
                width: width * 0.4,
                decoration: BoxDecoration(
                    color: color, borderRadius: BorderRadius.circular(20)),
              )),
          Positioned(
              top: height * 0.42,
              left: width * 0.55,
              child: Container(
                height: height * 0.2,
                width: width * 0.4,
                decoration: BoxDecoration(
                    color: color, borderRadius: BorderRadius.circular(20)),
              )),
          Positioned(
            top: height * 0.33,
            left: width * 0.1,
            child: SizedBox(
              height: height * 0.18,
              child: const Image(
                  image: NetworkImage(
                      'https://img.lovepik.com/element/45012/8521.png_860.png')),
            ),
          ),
          Positioned(
              left: width * 0.13,
              top: height * 0.52,
              child: Text(
                'Laptop with red',
                style: TextStyle(fontSize: height * 0.015),
              )),
          Positioned(
              left: width * 0.3,
              top: height * 0.1,
              child: Text(
                'Catagories',
                style: TextStyle(fontSize: height * 0.040),
              )),
          Positioned(
              left: width * 0.17,
              top: height * 0.56,
              child: Container(
                height: height * 0.04,
                width: width * 0.17,
                decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(30)),
                child: Center(
                  child: Text(
                    'MORE',
                    style: TextStyle(
                        color: Colors.white, fontSize: height * 0.012),
                  ),
                ),
              )),
          Positioned(
              top: height * 0.77,
              left: width * 0.07,
              child: Container(
                height: height * 0.2,
                width: width * 0.4,
                decoration: BoxDecoration(
                    color: color, borderRadius: BorderRadius.circular(20)),
              )),
          Positioned(
              top: height * 0.77,
              left: width * 0.55,
              child: Container(
                height: height * 0.2,
                width: width * 0.4,
                decoration: BoxDecoration(
                    color: Colors.blueGrey.shade100,
                    borderRadius: BorderRadius.circular(20)),
              ))
        ]));
  }
}
