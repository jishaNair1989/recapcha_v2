import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Dialogue extends StatelessWidget {
  const Dialogue({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Dialog Box',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Dialog demo'),
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Get.defaultDialog(
                        title: 'Hello',
                        titleStyle: TextStyle(fontSize: 25),
                        middleText: 'Welcome to my App',
                        middleTextStyle: TextStyle(fontSize: 20),
                        backgroundColor: Colors.grey[300],
                        radius: 80,

                        //content will overright title and middle text
                        content: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircularProgressIndicator(),
                            SizedBox(
                              width: 16,
                            ),
                            Text('Data loading')
                          ],
                        ),
                        textCancel: "Cancel",
                        cancelTextColor: Colors.red,
                        textConfirm: "Confirm",
                        confirmTextColor: Colors.green,
                        onCancel: () {},
                        onConfirm: () {},
                        buttonColor: Colors.white30,

                        /**************customize cancel and confirm buttons*********** */
                        // cancel: Text(
                        //   'Close',
                        //   style: TextStyle(color: Colors.amber),
                        // ),
                        // confirm: Text(
                        //   'Sure',
                        //   style: TextStyle(color: Colors.blueGrey),
                        // ),

                        actions: [
                          ElevatedButton(
                            onPressed: () {
                              Get.back();
                            },
                            child: Text('Action-1'),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text('Action-2'),
                          ),
                        ],
                        barrierDismissible:
                            true, /**********it will close dialog box if click outside, by default true */
                      );
                    },
                    child: const Text('Show Dialogue'))
              ]),
        ),
      ),
    );
  }
}
