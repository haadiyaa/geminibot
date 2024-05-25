import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class NetworkCheckProvider extends ChangeNotifier {
  late StreamSubscription subscription;
  var isDeviceConnected = false;
  bool isAlertSet = false;

  getConnectivity(BuildContext context) => subscription =
          Connectivity().onConnectivityChanged.listen((result) async {
        isDeviceConnected = await InternetConnectionChecker().hasConnection;
        if (!isDeviceConnected && isAlertSet == false) {
          showDialogBox(context);
          isAlertSet = true;
          notifyListeners();
        }
      });

  void showDialogBox(BuildContext context) => showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('No Connection'),
          content: const Text('Please check your Internet Connection'),
          actions: [
            TextButton(
              onPressed: () async {
                Navigator.pop(context);

                isAlertSet = false;
                notifyListeners();
                isDeviceConnected =
                    await InternetConnectionChecker().hasConnection;
                if (!isDeviceConnected) {
                  showDialogBox(context);

                  isAlertSet = true;
                  notifyListeners();
                }
              },
              child: const Text('OK'),
            ),
          ],
        ),
      );
}
