// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

import 'dart:async';

import 'package:flutter_blue/flutter_blue.dart';
import 'package:iBeaconTour/beacon-001CN_screen.dart';
import 'package:iBeaconTour/beacon-001EN_screen.dart';
import 'package:iBeaconTour/beacon-002CN_screen.dart';
import 'package:iBeaconTour/beacon-002EN_screen.dart';
import 'package:iBeaconTour/beacon-002_screen.dart';
import 'package:iBeaconTour/beacon-003CN_screen.dart';
import 'package:iBeaconTour/beacon-003EN_screen.dart';
import 'package:iBeaconTour/beacon-003_screen.dart';
import 'package:iBeaconTour/beacon-004CN_screen.dart';
import 'package:iBeaconTour/beacon-004EN_screen.dart';
import 'package:iBeaconTour/beacon-004_screen.dart';
import 'package:iBeaconTour/widgets.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import 'package:iBeaconTour/core/app_export.dart';
import 'package:iBeaconTour/beacon-001_screen.dart';
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
        onRefresh: () =>
            FlutterBlue.instance.startScan(timeout: Duration(seconds: 4)),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              StreamBuilder<List<BluetoothDevice>>(
                stream: Stream.periodic(Duration(seconds: 2))
                    .asyncMap((_) => FlutterBlue.instance.connectedDevices),
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
                                    child: Text('OPEN'),
                                    onPressed: () {
                                      if (d.name == "Beacon-01")
                                        switch (ctrl.g_slectLanguage.value) {
                                          case 1:
                                            Get.toNamed('/beacon001');
                                            break;
                                          case 2:
                                            Get.toNamed('/beacon001en');
                                            break;
                                          case 3:
                                            Get.toNamed('/beacon001cn');
                                            break;
                                          default:
                                            Get.toNamed('/beacon001');
                                        }
                                      else if (d.name == "Beacon-02")
                                        switch (ctrl.g_slectLanguage.value) {
                                          case 1:
                                            Get.toNamed('/beacon002');
                                            break;
                                          case 2:
                                            Get.toNamed('/beacon002en');
                                            break;
                                          case 3:
                                            Get.toNamed('/beacon002cn');
                                            break;
                                          default:
                                            Get.toNamed('/beacon002');
                                        }
                                      else if (d.name == "Beacon-03")
                                        switch (ctrl.g_slectLanguage.value) {
                                          case 1:
                                            Get.toNamed('/beacon003');
                                            break;
                                          case 2:
                                            Get.toNamed('/beacon003en');
                                            break;
                                          case 3:
                                            Get.toNamed('/beacon003cn');
                                            break;
                                          default:
                                            Get.toNamed('/beacon003');
                                        }
                                      else if (d.name == "Beacon-04")
                                        switch (ctrl.g_slectLanguage.value) {
                                          case 1:
                                            Get.toNamed('/beacon004');
                                            break;
                                          case 2:
                                            Get.toNamed('/beacon004en');
                                            break;
                                          case 3:
                                            Get.toNamed('/beacon004cn');
                                            break;
                                          default:
                                            Get.toNamed('/beacon004');
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
                stream: FlutterBlue.instance.scanResults,
                initialData: [],
                builder: (c, snapshot) => Column(
                  children: snapshot.data!
                      .map(
                        (r) => ScanResultTile(
                          result: r,
                          onTap: () => Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            r.device.connect();
                            if (r.device.name == "Beacon-01") {
                              switch (ctrl.g_slectLanguage.value) {
                                case 1:
                                  return Beacon001();
                                  break;
                                case 2:
                                  return Beacon001EN();
                                  break;
                                case 3:
                                  return Beacon001CN();
                                  break;
                                default:
                              }
                            } else if (r.device.name == "Beacon-02") {
                              switch (ctrl.g_slectLanguage.value) {
                                case 1:
                                  return Beacon002();
                                  break;
                                case 2:
                                  return Beacon002EN();
                                  break;
                                case 3:
                                  return Beacon002CN();
                                  break;
                                default:
                              }
                            } else if (r.device.name == "Beacon-03") {
                              switch (ctrl.g_slectLanguage.value) {
                                case 1:
                                  return Beacon003();
                                  break;
                                case 2:
                                  return Beacon003EN();
                                  break;
                                case 3:
                                  return Beacon003CN();
                                  break;
                                default:
                              }
                            } else if (r.device.name == "Beacon-04") {
                              switch (ctrl.g_slectLanguage.value) {
                                case 1:
                                  return Beacon004();
                                  break;
                                case 2:
                                  return Beacon004EN();
                                  break;
                                case 3:
                                  return Beacon004CN();
                                  break;
                                default:
                              }
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
        stream: FlutterBlue.instance.isScanning,
        initialData: false,
        builder: (c, snapshot) {
          if (snapshot.data!) {
            return FloatingActionButton(
              child: Icon(Icons.stop),
              onPressed: () => FlutterBlue.instance.stopScan(),
              backgroundColor: Colors.red,
            );
          } else {
            return FloatingActionButton(
                child: Icon(Icons.search),
                onPressed: () => FlutterBlue.instance
                    .startScan(timeout: Duration(seconds: 4)));
          }
        },
      ),
    );
  }
}
