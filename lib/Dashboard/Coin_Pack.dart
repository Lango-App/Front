import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CoinPackageScreen extends StatefulWidget {
  const CoinPackageScreen({super.key});

  @override
  State<CoinPackageScreen> createState() => _CoinPackageScreenState();
}

class _CoinPackageScreenState extends State<CoinPackageScreen> {
  int index = 0;
  int _current = 0;
  final CarouselController _controller = CarouselController();

  Size size = WidgetsBinding.instance.window.physicalSize /
      WidgetsBinding.instance.window.devicePixelRatio;

  double getHorizontalSize(double px) {
    return ((px * size.width) / 390);
  }

  get height {
    num statusBar = MediaQueryData.fromWindow(WidgetsBinding.instance.window)
        .viewPadding
        .top;
    num bottomBar = MediaQueryData.fromWindow(WidgetsBinding.instance.window)
        .viewPadding
        .bottom;
    num screenHeight = size.height - statusBar - bottomBar;
    return screenHeight;
  }

  double getVerticalSize(double px) {
    return ((px * height) / 844);
  }

  double getSize(double px) {
    var height = getVerticalSize(px);
    var width = getHorizontalSize(px);
    if (height < width) {
      return height.toInt().toDouble();
    } else {
      return width.toInt().toDouble();
    }
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> widgetSliders = [
      Container(
        padding: const EdgeInsets.only(left: 10, right: 10),
        height: getVerticalSize(500),
        width: getHorizontalSize(340),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: const Color(0xFF4A3AFF),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    right: 20,
                    bottom: 20,
                  ),
                  height: getVerticalSize(100),
                  width: getHorizontalSize(100),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: SvgPicture.asset(
                      'assets/images/img_cube.svg',
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Package 01",
                      style: TextStyle(
                        fontFamily: "DM Sans",
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      "Pro",
                      style: TextStyle(
                        fontFamily: "DM Sans",
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                )
              ],
            ),
            const Text(
              "10000 coin",
              style: TextStyle(
                color: Colors.white,
                fontFamily: "DM Sans",
                fontSize: 51,
                fontWeight: FontWeight.bold,
              ),
            ),
            RichText(
              text: const TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: "\$100",
                    style: TextStyle(
                      fontFamily: "DM Sans",
                      fontSize: 54,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: "/",
                    style: TextStyle(
                      fontFamily: "DM Sans",
                      fontSize: 20,
                    ),
                  ),
                  TextSpan(
                    text: "\$250",
                    style: TextStyle(
                      fontFamily: "DM Sans",
                      fontSize: 20,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
            Row(
              children: [
                SvgPicture.asset(
                  "assets/images/img_tick.svg",
                ),
                Flexible(
                  child: Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: const Text(
                      "Returning 10% of the cost of completed courses",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "DM Sans",
                        fontSize: 18,
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 25),
            Row(
              children: [
                SvgPicture.asset(
                  "assets/images/img_tick.svg",
                ),
                Flexible(
                  child: Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: const Text(
                      "100 coins as a gift",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "DM Sans",
                        fontSize: 18,
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
      Container(
        padding: const EdgeInsets.only(left: 10, right: 10),
        height: getVerticalSize(500),
        width: getHorizontalSize(340),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: const Color(0xFF9389E5),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    right: 20,
                    bottom: 20,
                  ),
                  height: getVerticalSize(100),
                  width: getHorizontalSize(100),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: SvgPicture.asset(
                      'assets/images/img_cube.svg',
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Package 02",
                      style: TextStyle(
                        fontFamily: "DM Sans",
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      "Pro",
                      style: TextStyle(
                        fontFamily: "DM Sans",
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                )
              ],
            ),
            const Text(
              "5000 coin",
              style: TextStyle(
                color: Colors.white,
                fontFamily: "DM Sans",
                fontSize: 51,
                fontWeight: FontWeight.bold,
              ),
            ),
            RichText(
              text: const TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: "\$60",
                    style: TextStyle(
                      fontFamily: "DM Sans",
                      fontSize: 54,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: "/",
                    style: TextStyle(
                      fontFamily: "DM Sans",
                      fontSize: 20,
                    ),
                  ),
                  TextSpan(
                    text: "\$180",
                    style: TextStyle(
                      fontFamily: "DM Sans",
                      fontSize: 20,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
            Row(
              children: [
                SvgPicture.asset(
                  "assets/images/img_tick.svg",
                ),
                Flexible(
                  child: Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: const Text(
                      "Returning 5% of the cost of completed courses",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "DM Sans",
                        fontSize: 18,
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 25),
            Row(
              children: [
                SvgPicture.asset(
                  "assets/images/img_tick.svg",
                ),
                Flexible(
                  child: Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: const Text(
                      "40 coins as a gift",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "DM Sans",
                        fontSize: 18,
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
      Container(
        padding: const EdgeInsets.only(left: 10, right: 10),
        height: getVerticalSize(500),
        width: getHorizontalSize(340),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: const Color(0xFFB8B1FF),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    right: 20,
                    bottom: 20,
                  ),
                  height: getVerticalSize(100),
                  width: getHorizontalSize(100),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: SvgPicture.asset(
                      'assets/images/img_cube.svg',
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Package 03",
                      style: TextStyle(
                        fontFamily: "DM Sans",
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      "Pro",
                      style: TextStyle(
                        fontFamily: "DM Sans",
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                )
              ],
            ),
            const Text(
              "1000 coin",
              style: TextStyle(
                color: Colors.white,
                fontFamily: "DM Sans",
                fontSize: 51,
                fontWeight: FontWeight.bold,
              ),
            ),
            RichText(
              text: const TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: "\$15",
                    style: TextStyle(
                      fontFamily: "DM Sans",
                      fontSize: 54,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: "/",
                    style: TextStyle(
                      fontFamily: "DM Sans",
                      fontSize: 20,
                    ),
                  ),
                  TextSpan(
                    text: "\$25",
                    style: TextStyle(
                      fontFamily: "DM Sans",
                      fontSize: 20,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
            Row(
              children: [
                SvgPicture.asset(
                  "assets/images/img_tick.svg",
                ),
                Flexible(
                  child: Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: const Text(
                      "Returning 1% of the cost of completed courses",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "DM Sans",
                        fontSize: 18,
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 25),
            Row(
              children: [
                SvgPicture.asset(
                  "assets/images/img_tick.svg",
                ),
                Flexible(
                  child: Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: const Text(
                      "10 coins as a gift",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "DM Sans",
                        fontSize: 18,
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    ];
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFffffff),
        appBar: AppBar(
          title: const Text(
            "Package",
            style: TextStyle(
              color: Colors.black,
              fontFamily: "Product Sans",
            ),
          ),
          elevation: 0,
          toolbarHeight: getVerticalSize(104),
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          flexibleSpace: Container(
            height: getVerticalSize(
              104,
            ),
            width: double.maxFinite,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment(
                  0.8,
                  1,
                ),
                end: Alignment(
                  0.8,
                  0,
                ),
                colors: [
                  Color(0x00ffffff),
                  Color(0xb2ffffff),
                  Color(0xFFffffff),
                ],
              ),
            ),
          ),
          leadingWidth: 72,
          leading: Container(
            margin: const EdgeInsets.only(
              left: 24,
              top: 30,
              bottom: 24,
            ),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: SvgPicture.asset(
                  'assets/images/img_arrowleft_gray_900_24x24.svg'),
            ),
          ),
          titleSpacing: 0,
          centerTitle: true,
        ),
        body: Align(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CarouselSlider(
                items: widgetSliders,
                carouselController: _controller,
                options: CarouselOptions(
                    height: getVerticalSize(500),
                    enlargeCenterPage: true,
                    enableInfiniteScroll: false,
                    aspectRatio: 2.0,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _current = index;
                      });
                    }),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: widgetSliders.asMap().entries.map((entry) {
                  return GestureDetector(
                    onTap: () => _controller.animateToPage(entry.key),
                    child: Container(
                      width: 12.0,
                      height: 12.0,
                      margin:
                      EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: (const Color(0xFF8B98B1))
                              .withOpacity(_current == entry.key ? 0.9 : 0.4)),
                    ),
                  );
                }).toList(),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  showModalBottomSheet<dynamic>(
                    backgroundColor: const Color(0xFFF4F5F6),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    context: context,
                    builder: (context) {
                      return StatefulBuilder(
                        builder: (BuildContext context, StateSetter setState) {
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 20),
                                child: const Text(
                                  "Buy",
                                  style: TextStyle(
                                    fontFamily: "Product Sans",
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 59),
                                child: Padding(
                                  padding: EdgeInsets.all(8),
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                    children: <Widget>[
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            index = 0;
                                          });
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                            BorderRadius.circular(10),
                                            border: index == 0
                                                ? Border.all(
                                              color: Color(0xFF298FC2),
                                              width: 2,
                                            )
                                                : null,
                                          ),
                                          height: getVerticalSize(100),
                                          width: getHorizontalSize(100),
                                          child: SvgPicture.asset(
                                            'assets/images/img_tether.svg',
                                          ),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            index = 1;
                                          });
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                            BorderRadius.circular(10),
                                            border: index == 1
                                                ? Border.all(
                                              color: Color(0xFF298FC2),
                                              width: 2,
                                            )
                                                : null,
                                          ),
                                          height: getVerticalSize(100),
                                          width: getHorizontalSize(100),
                                          child: SvgPicture.asset(
                                            'assets/images/img_paypal.svg',
                                          ),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            index = 2;
                                          });
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            border: index == 2
                                                ? Border.all(
                                              color: Color(0xFF298FC2),
                                              width: 2,
                                            )
                                                : null,
                                            borderRadius:
                                            BorderRadius.circular(10),
                                          ),
                                          height: getVerticalSize(100),
                                          width: getHorizontalSize(100),
                                          child: Padding(
                                            padding: const EdgeInsets.all(10),
                                            child: Image.asset(
                                                'assets/images/img_shaparak.png'),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 50),
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text("Buy"),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFFFFC02D),
                                    minimumSize: Size(90, 50),
                                    textStyle: const TextStyle(
                                      fontFamily: "DM Sans",
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      );
                    },
                  );
                },
                child: Text("Get Started"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFFC02D),
                  minimumSize: Size(300, 60),
                  textStyle: const TextStyle(
                    fontFamily: "DM Sans",
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
