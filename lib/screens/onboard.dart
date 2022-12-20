import 'package:flutter/material.dart';

import 'package:flutter_walkthrough_screen/flutter_walkthrough_screen.dart';

import 'package:flutter/material.dart';

class OnbordingData extends StatelessWidget {
  ///Contain the list of ImageProvider such as Network Asset,SVG etc Images
  final ImageProvider<Object> image;
  final ImageProvider<Object> image1;
  final ImageProvider<Object> image2;
  final ImageProvider<Object> image3;

  ///Title text
  final Widget titleText;

  ///Description of the `walkthrough`
  final Widget descText;

  /// Height of the image Default is `MediaQuery.of(context).size.height * 0.5`
  final double? imageHeight;

  ///Width of the image default is `MediaQuery.of(context).size.width`
  final double? imageWidth;

  ///Default is BoxFit.cover
  final BoxFit? fit;

  ///Default padding is `EdgeInsets.symmetric(horizontal: 8.0)`,
  final EdgeInsetsGeometry? titlePadding;

  ///Default padding is `EdgeInsets.symmetric(horizontal: 8.0)`,
  final EdgeInsetsGeometry? descPadding;

  const OnbordingData({
    Key? key,
    required this.image,
    required this.image1,
    required this.image2,
    required this.image3,
    required this.titleText,
    required this.descText,
    this.imageHeight,
    this.imageWidth,
    this.fit,
    this.titlePadding,
    this.descPadding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 10),
      alignment: Alignment.bottomLeft,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          //const SizedBox(height: 18.0),
          // Padding(
          //     padding: titlePadding == null
          //         ? const EdgeInsets.symmetric(horizontal: 8.0)
          //         : titlePadding!,
          //     child: Wrap(
          //       children: [
          //         titleText,
          //       ],
          //     )),
          Container(
            //color: Colors.blue,
            //alignment: Alignment.topLeft,
            child: Row(
              children: [
                Image(
                  image: image,
                  width: 140,
                ),

                // Image(
                //   fit: fit ?? BoxFit.cover,
                //   width:
                //       imageWidth ?? MediaQuery.of(context).size.width * 0.3,
                //   height:
                //       imageHeight ?? MediaQuery.of(context).size.height * 0.5,
                //   image: image,
                // ),
                Padding(
                  padding: const EdgeInsets.only(left: 48.0),
                  child: Container(
                    margin: EdgeInsets.all(10),
                    //color: Colors.red,
                    //alignment: Alignment.bottomRight,
                    child: Column(
                      children: [
                        Image(
                          width: 135,
                          // fit: BoxFit.cover,

                          // fit: fit ?? BoxFit.cover,
                          // width: imageWidth ??
                          //     MediaQuery.of(context).size.width * 0.4,
                          // height: imageHeight ??
                          //     MediaQuery.of(context).size.height * 0.4,
                          image: image3,
                        ),
                        Image(
                          width: 160,
                          // fit: fit ?? BoxFit.cover,
                          // width: imageWidth ??
                          //     MediaQuery.of(context).size.width * 0.4,
                          // height: imageHeight ??
                          //     MediaQuery.of(context).size.height * 0.3,
                          image: image2,
                        ),
                        Image(
                          width: 130,
                          // fit: fit ?? BoxFit.cover,
                          // width: imageWidth ??
                          //     MediaQuery.of(context).size.width * 0.35,
                          // height: imageHeight ??
                          //     MediaQuery.of(context).size.height * 0.3,
                          image: image1,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
              padding: descPadding == null
                  ? const EdgeInsets.symmetric()
                  : descPadding!,
              child: Center(
                child: Wrap(
                  children: [
                    descText,
                  ],
                ),
              )),
        ],
      ),
    );
  }
}

class IntroScreen extends StatefulWidget {
  ///contain list of Onbording screen data such as
  ///OnbordingData(
  //       image: AssetImage("images/pic3.png"),
  //       fit: BoxFit.cover,
  //       imageHeight: 250,
  //       titleText: RichText(
  //         textAlign: TextAlign.center,
  //         text: TextSpan(
  //           children: [
  //             TextSpan(
  //                 text: "Pickup delivery at \nyour ",
  //                 style: TextStyle(
  //                   color: Colors.black,
  //                   fontSize: 20.0,
  //                 )),
  //             TextSpan(
  //               text: "door ! ",
  //               style: TextStyle(
  //                   color: Colors.orange,
  //                   fontSize: 22.0,
  //                   fontWeight: FontWeight.w500),
  //             ),
  //           ],
  //         ),
  //       ),
  //       descText: RichText(
  //         textAlign: TextAlign.center,
  //         text: TextSpan(
  //           children: [
  //             TextSpan(
  //               text:
  //               "Even to space with us! Together, pickup delivery at your home ",
  //               style: TextStyle(
  //                 color: Colors.grey,
  //                 fontSize: 17.0,
  //               ),
  //             ),
  //           ],
  //         ),
  //       ),
  //       descPadding: EdgeInsets.symmetric(horizontal: 22.0),
  //     ),
  final List<OnbordingData> onbordingDataList;

  final MaterialPageRoute? pageRoute;

  final List<Color> colors;

  ///
  final Widget nextButton;

  ///
  final Widget lastButton;

  ///
  final Widget skipButton;

  ///
  final Color? selectedDotColor;

  ///
  final Color? unSelectdDotColor;

  ///
  final Gradient? gradient;

  IntroScreen(
      {required this.onbordingDataList,
      this.pageRoute,
      required this.colors,
      this.selectedDotColor,
      this.unSelectdDotColor,
      this.gradient,
      required this.nextButton,
      required this.lastButton,
      required this.skipButton});

  void skipPage(BuildContext context) {
    Navigator.push(context, pageRoute!);
  }

  @override
  IntroScreenState createState() {
    return IntroScreenState();
  }
}

class IntroScreenState extends State<IntroScreen> {
  final PageController controller = new PageController();
  int currentPage = 0;
  bool lastPage = false;

  void _onPageChanged(int page) {
    setState(() {
      currentPage = page;
      if (currentPage == widget.onbordingDataList.length - 1) {
        lastPage = true;
      } else {
        lastPage = false;
      }
    });
  }

  Widget _buildPageIndicator(int page) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 2.0),
      height: page == currentPage ? 10.0 : 6.0,
      width: page == currentPage ? 17.0 : 6.0,
      decoration: BoxDecoration(
        color: page == currentPage
            ? (widget.selectedDotColor ?? Colors.blue)
            : (widget.unSelectdDotColor ?? Colors.grey),
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(1),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: widget.gradient ??
              const LinearGradient(colors: [
                Colors.white,
                Colors.white,
              ]),
          color: widget.colors.length < widget.onbordingDataList.length
              ? Colors.white
              : widget.colors[currentPage],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 11,
              child: PageView(
                children: widget.onbordingDataList,
                controller: controller,
                onPageChanged: _onPageChanged,
              ),
            ),
            Container(
              //color: Colors.yellow,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(widget.onbordingDataList.length,
                      (index) => _buildPageIndicator(index))),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(240, 48),
                  padding: const EdgeInsets.symmetric(),
                  elevation: 0,
                  // shape: const StadiumBorder(
                  //     side: BorderSide(
                  //         style: BorderStyle.solid,
                  //         color: Colors.redAccent,
                  //         width: 2.0)),
                  backgroundColor: Colors.redAccent),
              child: lastPage ? widget.lastButton : widget.nextButton,
              onPressed: () => lastPage
                  ? widget.skipPage(context)
                  : controller.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeIn),
            ),
            const SizedBox(height: 8),
            TextButton(
              child: lastPage ? const Text("") : widget.skipButton,
              onPressed: () => lastPage
                  ? null
                  : widget.skipPage(
                      context,
                    ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[],
              ),
            ),
            const SizedBox(
              height: 18.0,
            ),
          ],
        ),
      ),
    );
  }
}
