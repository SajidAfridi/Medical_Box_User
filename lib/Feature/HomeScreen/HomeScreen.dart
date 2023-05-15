import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:medical_box_users/utils/app_colors.dart';
import 'package:medical_box_users/widgets/app_bar.dart';
import 'package:medical_box_users/widgets/drawer.dart';
import 'package:medical_box_users/widgets/header_of_all_screens.dart';

import '../../widgets/map_text_styles.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  static const CameraPosition _kCECOS = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(33.95631023099256, 71.43736221534408),
      zoom: 18.151926040649414);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SizedBox(
        width: ScreenUtil().setWidth(163),
        child: drawer(context),
      ),
      appBar: appBar,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: header(
              'Map',
              const Icon(
                Icons.location_on,
                color: Colours.drawerColor,
                size: 18,
              ),
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                Container(
                  color: Colors.blueGrey,
                  height: double.infinity,
                  width: double.infinity,
                  child: GoogleMap(
                    mapType: MapType.normal,
                    initialCameraPosition: _kCECOS,
                    onMapCreated: (GoogleMapController controller) {
                      _controller.complete(controller);
                    },
                  ),
                ),
                Positioned(
                    top: 10.h,
                    left: 35.w,
                    child: Container(
                      height: 120.h,
                      width: 156.w,
                      padding: EdgeInsets.all(8.0.r),
                      decoration: ShapeDecoration(
                        color: Colours.themeColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0.r),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Name: Sajid',
                            style: textStyle,
                          ),
                          Text(
                            'Location: Peshawar',
                            style: textStyle,
                          ),
                          Text(
                            'Box ID: 123456',
                            style: textStyle,
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.colorize_outlined,
                                color: Colors.white,
                              ),
                              SizedBox(width: 5.w,),
                              Text(':     25`C',style: textStyle,)
                            ],
                          ),
                        ],
                      ),
                    ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
