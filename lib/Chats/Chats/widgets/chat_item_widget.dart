import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: must_be_immutable
class ChatItemWidget extends StatelessWidget {
  ChatItemWidget();

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
    return Container(
      padding: EdgeInsets.only(
        left: 18,
        top: 17,
        right: 18,
        bottom: 17,
      ),
      decoration: BoxDecoration(
        color: Color(0xFFffffff),
      ).copyWith(
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            6,
          ),
        ),
      ),
      child: Row(
        children: [
          Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: EdgeInsets.all(0),
            color: Color(0xFFffffff),
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: Color(0xFFffffff),
                width: getHorizontalSize(
                  1,
                ),
              ),
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  20,
                ),
              ),
            ),
            child: Container(
              height: getVerticalSize(40),
              width: getHorizontalSize(40),
              decoration: BoxDecoration(
                color: Color(0xFFffffff),
                border: Border.all(
                  color: Color(0xFFffffff),
                  width: getHorizontalSize(
                    1,
                  ),
                  // strokeAlign: StrokeAlign.,
                ),
              ).copyWith(
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(
                    19,
                  ),
                ),
              ),
              child: Stack(
                children: [
                  IconButton(
                    visualDensity: VisualDensity(
                      vertical: -4,
                      horizontal: -4,
                    ),
                    iconSize: 46,
                    padding: EdgeInsets.all(0),
                    icon: Container(
                      alignment: Alignment.center,
                      width: 48,
                      height: 48,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: getHorizontalSize(
                            1.00,
                          ),
                        ),
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            24.00,
                          ),
                        ),
                      ),
                      child: SvgPicture.asset(
                        'assets/images/img_user_gray_200_48x48.svg',
                      ),
                    ),
                    onPressed: () {},
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16,
              bottom: 3,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Classroom 09",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color(0xFF141416),
                    fontSize: getSize(14),
                    fontFamily: 'Product Sans',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 5,
                  ),
                  child: Text(
                    "Tanks!",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color(0xFF777e90),
                      fontSize: getSize(12),
                      fontFamily: 'Product Sans',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
