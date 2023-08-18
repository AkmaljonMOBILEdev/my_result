import 'dart:async';
import 'package:exam_repo_n8/ui/map_screen/widgets/bottom_sheet.dart';
import 'package:exam_repo_n8/ui/map_screen/widgets/initial_gps.dart';
import 'package:exam_repo_n8/ui/map_screen/widgets/list_button.dart';
import 'package:exam_repo_n8/ui/map_screen/widgets/map_types_row.dart';
import 'package:exam_repo_n8/ui/map_screen/widgets/save_button.dart';
import 'package:exam_repo_n8/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';
import '../../providers/map_providers/address_call_provider.dart';
import '../../providers/map_providers/location_provider.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  late CameraPosition initialCameraPosition;
  late CameraPosition currentCameraPosition;
  bool onCameraMoveStarted = false;
  final Completer<GoogleMapController> _controller =
  Completer<GoogleMapController>();

  @override
  void initState() {
    LocationProvider locationProvider =
    Provider.of<LocationProvider>(context, listen: false);

    initialCameraPosition = CameraPosition(
      target: locationProvider.latLong!,
      zoom: 13,
    );

    currentCameraPosition = CameraPosition(
      target: locationProvider.latLong!,
      zoom: 13,
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            GoogleMap(
              onCameraMove: (CameraPosition cameraPosition) {
                currentCameraPosition = cameraPosition;
              },
              onCameraIdle: () {
                debugPrint("CURRENT CAMERA POSITION: ${currentCameraPosition.target.latitude}");

                context
                    .read<CallAddressProvider>()
                    .getAddressByLatLong(latLng: currentCameraPosition.target);

                setState(() {
                  onCameraMoveStarted = false;
                });

                debugPrint("MOVE FINISHED");
              },
              liteModeEnabled: false,
              myLocationEnabled: false,
              padding: const EdgeInsets.all(12),
              zoomGesturesEnabled: true,
              zoomControlsEnabled: true,
              mapType: context.watch<CallAddressProvider>().type,
              onCameraMoveStarted: () {
                setState(() {
                  onCameraMoveStarted = true;
                });
                debugPrint("MOVE STARTED");
              },
              onMapCreated: (GoogleMapController controller) {
                _controller.complete(controller);
              },
              initialCameraPosition: initialCameraPosition,
            ),
            Positioned(top: 8.h, left: 50.w, right: 50.w, child: MapTypesRow()),
            Align(
                child: Icon(
                  Icons.location_pin,
                  color: Colors.red,
                  size: onCameraMoveStarted ? 45 : 35,
                )),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 70),
                child: Text(
                  context.watch<CallAddressProvider>().scrolledAddressText,
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  style: TextStyle(
                    fontSize: 22,
                    shadows: [
                      Shadow(
                        offset: Offset(2.0, 2.0),
                        blurRadius: 4.0,
                        color: context.watch<CallAddressProvider>().type ==
                            MapType.satellite
                            ? Colors.indigoAccent: Colors.green
                      )
                    ],
                    color: context.watch<CallAddressProvider>().type ==
                        MapType.satellite
                        ? Colors.white
                        : Colors.indigoAccent,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Positioned(
                bottom: 50.h,
                left: 10.w,
                child: ListButton(onTap: (){
              Navigator.pushNamed(context, RouteNames.savedMaps);
            })),
            Positioned(
              bottom: 8.h,
              left: 90.w,
              child: Visibility(
                visible: context.watch<CallAddressProvider>().canSaveAddress(),
                child: SaveButton(onTap: () {
                  CallAddressProvider adp =
                  Provider.of<CallAddressProvider>(context, listen: false);
                  showMapBottomSheet(context, currentCameraPosition.target.latitude, currentCameraPosition.target.longitude, adp.scrolledAddressText);
                }),
              ),
            ),
            Positioned(
                right: 14.w,
                bottom: 116.h,
                child: InitialGps(onTap: (){
              _followMe(cameraPosition: initialCameraPosition);
            }))
          ],
        ),
      ),

    );
  }

  Future<void> _followMe({required CameraPosition cameraPosition}) async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(
      CameraUpdate.newCameraPosition(cameraPosition),
    );
  }
}
