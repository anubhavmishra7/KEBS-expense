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

  // @override
  // void initState(){

  // }
  @override
  void initState() {
    // TODO: implement initState
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
      backgroundColor: Color(0xff111434),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "IMG _7685.jpg",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 17),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.75,
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
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  height: MediaQuery.of(context).size.height * 0.07,
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: ElevatedButton(
                    child: Text("Ok"),
                    style: ElevatedButton.styleFrom(backgroundColor: kprimary),
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
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Color(0xff111434),
        title: Text("Preview"),
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
      backgroundColor: Color(0xff111434),
      floatingActionButton: Align(
        alignment: Alignment.bottomCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              padding: EdgeInsets.only(bottom: 20),
              width: MediaQuery.of(context).size.width * 0.5,
              child: FloatingActionButton(
                backgroundColor: kprimary,
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("Re-Upload"),
                shape: StadiumBorder(),
              ),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: kprimary),
                onPressed: () {
                  int count = 0;
                  Navigator.popUntil(context, (route) {
                    return count++ == 3;
                  });
                },
                child: const Text("Done"))
          ],
        ),
      ),
      body: Align(
          alignment: Alignment.center,
          child: Container(child: Image.file(File(imagePath)))),
    );
  }
}
