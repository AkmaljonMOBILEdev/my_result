import 'package:exam_repo_n8/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../providers/map_providers/location_provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  _init() async {
    await Future.delayed(const Duration(seconds: 2));
    if (context.mounted) {
      Navigator.pushReplacementNamed(context, RouteNames.tabBox
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    LocationProvider locationProvider = Provider.of<LocationProvider>(context);
    if (locationProvider.latLong != null) {
      _init();
    }
    return Scaffold(
      body: Center(child: Consumer<LocationProvider>(
        builder: (context, locationProvider, child) {
          if (locationProvider.latLong == null) {
            return const Text("EMPTY LOCATION!!!");
          } else {
            return Text(
                "Splash Screen:${locationProvider.latLong!.longitude}  and ${locationProvider.latLong!.latitude}");
          }
        },
      )),
    );
  }
}
