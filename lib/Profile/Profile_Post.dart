import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lango/Constance/Theme.dart';
import 'package:lango/Constance/Constance.dart';


class Profile_Post extends StatefulWidget {
  Profile_Post({Key? key}) : super(key: key);

  @override
  State<Profile_Post> createState() => _ProfilePostState();
}

class _ProfilePostState extends State<Profile_Post> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
            left: 18,
            right: 18,
            top: MediaQuery.of(context).padding.top + 16,
            bottom: MediaQuery.of(context).padding.bottom),
        child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Row(
            children: [
              Image.asset(
                AppTheme.isLightTheme
                    ? ConstanceData.fe_av
                    : ConstanceData.fe_av,
                height: 50,
              ),
              SizedBox(
                width: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "User 02",
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "18:20, 22/10/2021",
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(
                        fontSize: 10,
                        color: HexColor("#777E90"),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              Spacer(),
              Container(
                height: 35,
                width: 80,
                decoration: BoxDecoration(
                  color: AppTheme.isLightTheme
                      ? HexColor("#E6E8EC")
                      : HexColor("#B1B5C3"),
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                child: Center(
                  child: Text(
                    "+    Follow",
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(
                        fontSize: 10, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              // Navigator.push(
              //   //context,
              //   // MaterialPageRoute(
              //   //   //builder: (_) => ,
              //   // ),
              // );
            },
            child: Image.asset(
              ConstanceData.fe_p,
              fit: BoxFit.cover,
              // width: MediaQuery.of(context).size.width,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
            style: Theme.of(context)
                .textTheme
                .bodyText1!
                .copyWith(fontSize: 10, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            children: [
              Image.asset(
                AppTheme.isLightTheme
                    ? ConstanceData.fe_li
                    : ConstanceData.fe_li_d,
                height: 25,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "24",
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    fontSize: 10, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 15,
              ),
              Image.asset(
                AppTheme.isLightTheme
                    ? ConstanceData.fe_com
                    : ConstanceData.fe_com_d,
                height: 25,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "24",
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    fontSize: 10, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 15,
              ),
              Image.asset(
                AppTheme.isLightTheme
                    ? ConstanceData.fe_com
                    : ConstanceData.fe_com_d,
                height: 25,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "24",
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    fontSize: 10, fontWeight: FontWeight.bold),
              ),
              Spacer(),
              SizedBox(
                width: 15,
              ),
              Image.asset(
                AppTheme.isLightTheme
                    ? ConstanceData.fe_com
                    : ConstanceData.fe_com_d,
                height: 24,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "24",
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    fontSize: 10, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Divider(),
        ],
      ),
      ),
    );
  }
}
