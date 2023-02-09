import 'dart:io';

import 'package:camera/camera.dart';
import 'package:expense/utilities/style.dart';
import 'package:flutter/material.dart';

class CameraImages extends StatefulWidget {
  const CameraImages({super.key, required this.camera});

  final CameraDescription camera;

  @override
  State<CameraImages> createState() => _CameraImagesState();
}

class _CameraImagesState extends State<CameraImages> {
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;

  @override
  void initState() {
    super.initState();
    _controller = CameraController(widget.camera, ResolutionPreset.high);

    _initializeControllerFuture = _controller.initialize();
  }

  @override
  void dispose() {
    _controller.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  // Future<void> camera() async {
  //   final cameras = await availableCameras();
  //   final firstCamera = cameras.first;
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff111434),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "IMG _7685.jpg",
                  style: TextStyle(color: Color(0xffDADCE2), fontSize: 15),
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.70,
                  width: MediaQuery.of(context).size.width * 0.9,
                  //padding: EdgeInsets.all(30),
                  child: FutureBuilder<void>(
                    future: _initializeControllerFuture,
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.done) {
                        return CameraPreview(_controller);
                      } else {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    height: MediaQuery.of(context).size.height * 0.07,
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: ElevatedButton(
                      style:
                          ElevatedButton.styleFrom(backgroundColor: kprimary),
                      // shape: RoundedRectangleBorder(
                      //     borderRadius: BorderRadius.all(Radius.circular(15))),
                      onPressed: () async {
                        try {
                          await _initializeControllerFuture;

                          final image = await _controller.takePicture();

                          if (!mounted) return;

                          await Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                  DisplayPicture(imagePath: image.path)));
                        } catch (e) {
                          print(e);
                        }
                      },
                      child: const Text("Ok"),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xff111434),
        title: Text(
          "Preview",
          style: TextStyle(fontFamily: kfontFamily, fontSize: 15),
        ),
      ),
      // floatingActionButton: Align(
      //   alignment: Alignment.bottomCenter,
      //   child: Container(
      //     height: MediaQuery.of(context).size.height * 0.07,
      //     width: MediaQuery.of(context).size.width * 0.7,
      //     child: FloatingActionButton(
      //       child: Text("Ok"),
      //       backgroundColor: kprimary,
      //       shape: RoundedRectangleBorder(
      //           borderRadius: BorderRadius.all(Radius.circular(15))),
      //       onPressed: () async {
      //         try {
      //           await _initializeControllerFuture;

      //           final image = await _controller.takePicture();

      //           if (!mounted) return;

      //           await Navigator.of(context).push(MaterialPageRoute(
      //               builder: (context) =>
      //                   DisplayPicture(imagePath: image.path)));
      //         } catch (e) {
      //           print(e);
      //         }
      //       },
      //     ),
      //   ),
      // ),
    );
  }
}

class DisplayPicture extends StatelessWidget {
  final String imagePath;
  const DisplayPicture({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff111434),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 28.0),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.reset_tv,
                    color: Colors.white,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    // shape: const StadiumBorder(),
                    child: const Text(
                      "Re-Upload",
                      style: TextStyle(color: Color(0xffFFFFFF)),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  // Icon(
                  //   Icons.delete_outline_outlined,
                  //   color: Colors.white,
                  // ),
                  ElevatedButton(
                      style:
                          ElevatedButton.styleFrom(backgroundColor: kprimary),
                      onPressed: () {
                        int count = 0;
                        Navigator.popUntil(context, (route) {
                          return count++ == 3;
                        });
                      },
                      child: const Text("Done",
                          style: TextStyle(color: Color(0xffFFFFFF)))),
                ],
              )
            ],
          ),
        ),
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          "Preview",
          style: TextStyle(fontSize: 15),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              "IMG _7685.jpg",
              style: TextStyle(color: Color(0xffDADCE2), fontSize: 15),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
                height: MediaQuery.of(context).size.height * 0.72,
                width: double.maxFinite,
                child: Image.file(File(imagePath))),
          ],
        ),
      ),
    );
  }
}
