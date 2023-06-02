import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lango/Dashboard/Dashboard.dart';

class SuccessPaymentScreen extends StatefulWidget {
  const SuccessPaymentScreen({super.key});

  @override
  State<SuccessPaymentScreen> createState() => _SuccessPaymentScreenState();
}

class _SuccessPaymentScreenState extends State<SuccessPaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF50af95),
        body: Align(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 50, bottom: 10),
                child: Text(
                  "Successfull payment!",
                  style: TextStyle(
                    fontFamily: "Product Sans",
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Text(
                "You have 1000 coins",
                style: TextStyle(
                  fontFamily: "Product Sans Medium",
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Stack(
                fit: StackFit.passthrough,
                children: [
                  SvgPicture.asset('assets/images/img_success_back.svg'),
                  Positioned(
                    top: 175,
                    left: 85,
                    child: Align(
                      alignment: Alignment.center,
                      child: RotationTransition(
                        turns: AlwaysStoppedAnimation(18 / 360),
                        child: Container(
                          height: 150,
                          width: 225,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20, left: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SvgPicture.asset('assets/images/img_coin.svg'),
                                SizedBox(height: 10),
                                RichText(
                                  text: const TextSpan(
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: "1000",
                                        style: TextStyle(
                                          fontFamily: "Product Sans",
                                          fontSize: 40,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ),
                                      TextSpan(
                                        text: " coin",
                                        style: TextStyle(
                                          fontFamily: "Product Sans",
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF141416),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  "Start learning!",
                                  style: TextStyle(
                                      fontFamily: "Product Sans Medium",
                                      fontSize: 15,
                                      color: Color(0xFF777E90)),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Dashboard()),
                  );
                },
                child: Text("Get Started"),
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: Color(0xFF84C7B5),
                  minimumSize: Size(200, 60),
                  textStyle: const TextStyle(
                    fontFamily: "DM Sans",
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
