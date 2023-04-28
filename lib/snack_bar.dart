import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SnackbarDemo extends StatelessWidget {
  const SnackbarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Snackbar',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('snackbardemo'),
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Get.snackbar('Alert1', 'Hello jisha',
                          snackPosition: SnackPosition.BOTTOM,
                          titleText: Text('Hi'), //overright the title above
                          messageText:
                              Text('How are you'), //overright the message above
                          backgroundColor: Colors.blueAccent[100],
                          barBlur: 5,
                          overlayBlur: 10,
                          colorText: Colors.white,
                          borderRadius: 30,
                          isDismissible: true,
                          dismissDirection: DismissDirection.horizontal,
                          forwardAnimationCurve: Curves.easeInOutQuad,
                          icon: const Icon(
                            Icons.dangerous,
                            color: Colors.white,
                          ),
                          shouldIconPulse: false,
                          borderColor: Colors
                              .blueGrey, //only with border width it will show
                          borderWidth: 3,
                          backgroundGradient: const LinearGradient(
                              colors: [Colors.red, Colors.redAccent]),
                          leftBarIndicatorColor: Colors.amberAccent,
                          mainButton: TextButton(
                              onPressed: () {}, child: Text('retry')));
                    },
                    child: const Text('show snackbar'))
              ]),
        ),
      ),
    );
  }
}
