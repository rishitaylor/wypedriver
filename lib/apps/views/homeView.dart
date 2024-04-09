import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wypedriver/apps/services/location_services.dart';
import 'package:wypedriver/apps/utils/utils.dart';
import 'package:wypedriver/common_widgets/common_button.dart';

class HomeView extends StatefulWidget {
  var userData;
  HomeView({super.key, required this.userData});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 23),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 86.w,
                    // height: 3.h,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          Color.fromRGBO(217, 217, 217, 1),
                          Color.fromRGBO(0, 188, 234, 1),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          offset: Offset(5, 5),
                          blurRadius: 10,
                        )
                      ],
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          'Home',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                CommonButton(
                  text: 'Upcoming',
                  onTap: () async {
                    LocationService().getCurrentLocation();
                  },
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
