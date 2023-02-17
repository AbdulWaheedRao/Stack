import 'package:flutter/material.dart';

class Firstscreen extends StatelessWidget {
  const Firstscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      debugShowCheckedModeBanner: false,
      home: MyWidget(),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2e6dfe),
      body: Column(children: [
        // Container(
        //   width: double.infinity,
        //   height: MediaQuery.of(context).padding.top,
        //   color: Colors.blue,
        // ),
        Expanded(
            flex: 6,
            child: Container(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assest/images/beta.png',
                          width: 40,
                          color: Colors.white,
                        ),
                        Text(
                          'Skip',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )
                      ],
                    ),
                    Container(
                      width: 300,
                      height: 300,
                      child: Padding(
                        padding: const EdgeInsets.all(50),
                        child: Stack(
                          children: [
                            Container(
                              width: 200,
                              height: 160,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xff1046b3),
                              ),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.camera_alt_outlined,
                                          color: Colors.white,
                                        )
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Icon(
                                          Icons.airline_stops_outlined,
                                          color: Colors.white,
                                        ),
                                        Icon(
                                          Icons.car_crash_sharp,
                                          color: Colors.white,
                                        )
                                      ],
                                    )
                                  ]),
                            ),
                            Positioned(
                              top: 85,
                              left: 20,
                              child: Container(
                                width: 160,
                                height: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xff4985ff),
                                ),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      CircleAvatar(
                                        radius: 15,
                                        child: Icon(
                                          Icons.person,
                                          size: 20,
                                        ),
                                      ),
                                      CircleAvatar(
                                        radius: 20,
                                        child: Icon(
                                          Icons.person,
                                          size: 20,
                                        ),
                                      ),
                                      CircleAvatar(
                                        radius: 15,
                                        child: Icon(
                                          Icons.person,
                                          size: 20,
                                        ),
                                      )
                                    ]),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ]),
            )),
        Expanded(
            flex: 4,
            child: Container(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Community\nLorem ipsum dolor sit consetetur\nsadipscing elitr,sed diam',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 50),
                      child: ElevatedButton(
                          onPressed: () {},
                          child: Icon(Icons.arrow_circle_right)),
                    )
                  ]),
            )),
      ]),
    );
  }
}
