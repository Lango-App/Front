import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: must_be_immutable
class GroupItemWidget extends StatelessWidget {
  GroupItemWidget();

  Size size = WidgetsBinding.instance.window.physicalSize /
      WidgetsBinding.instance.window.devicePixelRatio;

  double getHorizontalSize(double px) {
    return ((px * size.width) / 390);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(18),
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
          Padding(
            padding: EdgeInsets.zero,
            child: IconButton(
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
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Color(0xFF3657ff),
                  border: Border.all(
                    color: Color(0xFF3657ff),
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
                  'assets/images/img_user_white_a700_48x48.svg',
                ),
              ),
              onPressed: () {},
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16,
              top: 2,
              bottom: 2,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "IELTS 8",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color(0xFF141416),
                    fontSize: 15,
                    fontFamily: 'Product Sans',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(top: 8),
                    child: Text(
                      "5 member",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color(0xFF777e90),
                        fontSize: 11,
                        fontFamily: 'Product Sans',
                        fontWeight: FontWeight.w400,
                      ),
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
