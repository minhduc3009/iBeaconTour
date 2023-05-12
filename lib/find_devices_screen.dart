import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:get/get.dart';
import 'package:iBeaconTour/beacon-001_screen.dart';
import 'package:iBeaconTour/beacon-002_screen.dart';
import 'package:iBeaconTour/beacon-003_screen.dart';
import 'package:iBeaconTour/beacon-004_screen.dart';
import 'package:iBeaconTour/beacon-005_screen.dart';
import 'package:iBeaconTour/widgets.dart';
import 'package:iBeaconTour/main.dart';

class FindDevicesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ControllerX ctrl = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: Text('Find Devices Screen'),
      ),
      body: RefreshIndicator(
        onRefresh: () => FlutterBluePlus.instance
            .startScan(timeout: const Duration(seconds: 4)),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              StreamBuilder<List<BluetoothDevice>>(
                stream: Stream.periodic(Duration(seconds: 2))
                    .asyncMap((_) => FlutterBluePlus.instance.connectedDevices),
                initialData: [],
                builder: (c, snapshot) => Column(
                  children: snapshot.data!
                      .map((d) => ListTile(
                            title: Text(d.name),
                            subtitle: Text(d.id.toString()),
                            trailing: StreamBuilder<BluetoothDeviceState>(
                              stream: d.state,
                              initialData: BluetoothDeviceState.disconnected,
                              builder: (c, snapshot) {
                                if (snapshot.data ==
                                    BluetoothDeviceState.connected) {
                                  return ElevatedButton(
                                    child: const Text('OPEN'),
                                    onPressed: () {
                                      if (kDebugMode) {
                                        print(
                                            "------------------>>>>>>>>>>>>>>>>>>>>>> d.name = ${d.name}");
                                      }
                                      d.disconnect();
                                      if (d.name == "Beacon-01") {
                                        // Get.toNamed('/beacon001');
                                        Get.to(() => Beacon001());
                                      } else if (d.name == "Beacon-02") {
                                        // Get.toNamed('/beacon002');
                                        Get.to(() => Beacon002());
                                      } else if (d.name == "Beacon-03") {
                                        // Get.toNamed('/beacon003');
                                        Get.to(() => Beacon003());
                                      } else if (d.name == "Beacon-04") {
                                        // Get.toNamed('/beacon004');
                                        Get.to(() => Beacon004());
                                      } else if (d.name == "Beacon-05") {
                                        // Get.toNamed('/beacon005');
                                        Get.to(() => Beacon005());
                                      }
                                    },
                                  );
                                }
                                return Text(snapshot.data.toString());
                              },
                            ),
                          ))
                      .toList(),
                ),
              ),
              StreamBuilder<List<ScanResult>>(
                stream: FlutterBluePlus.instance.scanResults,
                initialData: [],
                builder: (c, snapshot) => Column(
                  children: snapshot.data!
                      .map(
                        (r) => ScanResultTile(
                          result: r,
                          onTap: () => Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            r.device.connect();
                            if (kDebugMode) {
                              print(
                                  "------------------>>>>>>>>>>>>>>>>>>>>>> r.device.name = ${r.device.name}");
                            }
                            r.device.disconnect();
                            if (r.device.name == "Beacon-01") {
                              // Get.toNamed('/beacon001');
                              return Beacon001();
                            } else if (r.device.name == "Beacon-02") {
                              // Get.toNamed('/beacon002');
                              return Beacon002();
                            } else if (r.device.name == "Beacon-03") {
                              // Get.toNamed('/beacon003');
                              return Beacon003();
                            } else if (r.device.name == "Beacon-04") {
                              // Get.toNamed('/beacon004');
                              return Beacon004();
                            } else if (r.device.name == "Beacon-05") {
                              // Get.toNamed('/beacon005');
                              return Beacon005();
                            }
                            return Beacon001();
                          })),
                        ),
                      )
                      .toList(),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: StreamBuilder<bool>(
        stream: FlutterBluePlus.instance.isScanning,
        initialData: false,
        builder: (c, snapshot) {
          if (snapshot.data!) {
            return FloatingActionButton(
              onPressed: () => FlutterBluePlus.instance.stopScan(),
              backgroundColor: Colors.red,
              child: const Icon(Icons.stop),
            );
          } else {
            return FloatingActionButton(
                child: const Icon(Icons.search),
                onPressed: () => FlutterBluePlus.instance
                    .startScan(timeout: const Duration(seconds: 4)));
          }
        },
      ),
    );
  }
}
