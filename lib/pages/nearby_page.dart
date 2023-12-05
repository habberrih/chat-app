import 'dart:ui';

import 'package:chat_app/config/app_strings.dart';
import 'package:chat_app/widgets/toolbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:latlong2/latlong.dart';

import '../config/app_icons.dart';

class NearbyPage extends StatelessWidget {
  const NearbyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Toolbar(title: AppStrings.nearby),
      body: FlutterMap(
        options: const MapOptions(
          initialCenter: LatLng(32.3256, 15.0993), // Misurata
          initialZoom: 12,
        ),
        children: [
          TileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
            userAgentPackageName: 'dev.ces.flutter',
          ),
          MarkerLayer(
            markers: [
              Marker(
                width: 100,
                height: 80,
                point: const LatLng(32.3256, 15.0993),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 4),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(14),
                        ),
                      ),
                      child: Text('Username',
                          style: TextStyle(color: Colors.black)),
                    ),
                    SvgPicture.asset(
                      AppIcons.icLocation,
                      colorFilter:
                          ColorFilter.mode(Colors.black, BlendMode.srcIn),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
