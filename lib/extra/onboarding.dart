

// import 'package:expense/pages/dashboard.dart';
// import 'package:expense/screens/loginpage.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// //import 'package:flutter_auth/utilities/styles.dart';
// //import 'package:flutter_auth/components/rounded_button.dart';
// //import 'welcome_screen.dart';

// class OnboardingScreen extends StatefulWidget {
//   @override
//   _OnboardingScreenState createState() => _OnboardingScreenState();
// }

// class _OnboardingScreenState extends State<OnboardingScreen> {
//   final int _numPages = 3;
//   final PageController _pageController = PageController(initialPage: 0);
//   int _currentPage = 0;

//   List<Widget> _buildPageIndicator() {
//     List<Widget> list = [];
//     for (int i = 0; i < _numPages; i++) {
//       list.add(i == _currentPage ? _indicator(true) : _indicator(false));
//     }
//     return list;
//   }

//   Widget _indicator(bool isActive) {
//     return AnimatedContainer(
//       duration: const Duration(milliseconds: 150),
//       margin: const EdgeInsets.symmetric(horizontal: 8.0),
//       height: 8.0,
//       width: isActive ? 24.0 : 16.0,
//       decoration: BoxDecoration(
//         color: isActive ? Colors.white : const Color(0xFF7B51D3),
//         borderRadius: const BorderRadius.all(Radius.circular(12)),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: AnnotatedRegion<SystemUiOverlayStyle>(
//         value: SystemUiOverlayStyle.light,
//         child: Container(
//           decoration: const BoxDecoration(
//             gradient: LinearGradient(
//               begin: Alignment.topCenter,
//               end: Alignment.bottomCenter,
//               stops: [0.1, 0.4, 0.7, 0.9],
//               colors: [
//                 Color(0xFF3594DD),
//                 Color(0xFF4563DB),
//                 Color(0xFF5036D5),
//                 Color(0xFF5B16D0),
//               ],
//             ),
//           ),
//           child: Padding(
//             padding: const EdgeInsets.symmetric(vertical: 40.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: <Widget>[
//                 Container(
//                   alignment: Alignment.centerRight,
//                   child: TextButton(
//                     onPressed: () {
//                       Navigator.push(context,
//                           MaterialPageRoute(builder: (context) {
//                         return const LoginPage();
//                       }));
//                     },
//                     child: const Text(
//                       'Skip',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 20.0,
//                       ),
//                     ),
//                   ),
//                 ),
//                 Container(
//                   height: 600.0,
//                   child: PageView(
//                     physics: const ClampingScrollPhysics(),
//                     controller: _pageController,
//                     onPageChanged: (int page) {
//                       setState(() {
//                         _currentPage = page;
//                       });
//                     },
//                     children: <Widget>[
//                       Padding(
//                         padding: const EdgeInsets.all(40.0),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: const <Widget>[
//                             Center(
//                               child: Image(
//                                 image: AssetImage(
//                                   'assets/images/mis.png',
//                                 ),
//                                 height: 300.0,
//                                 width: 300.0,
//                               ),
//                             ),
//                             SizedBox(height: 30.0),
//                             Text(
//                               'Book anytime. ',
//                               //style: kTitleStyle,
//                             ),
//                             SizedBox(height: 15.0),
//                             Text(
//                               ' We are available 7am - 11pm , 7 days a week. ',
//                               // style: kSubtitleStyle,
//                             ),
//                           ],
//                         ),
//                       ),
//                       Padding(
//                         padding: EdgeInsets.all(40.0),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: <Widget>[
//                             Center(
//                               child: Image(
//                                 image: AssetImage(
//                                   'assets/images/mis.png',
//                                 ),
//                                 height: 300.0,
//                                 width: 300.0,
//                               ),
//                             ),
//                             SizedBox(height: 30.0),
//                             Text(
//                               'Book a cleaning company in minutes.',
//                               // style: kTitleStyle,
//                             ),
//                             SizedBox(height: 15.0),
//                             Text(
//                               'Read and compares reviews.',
//                               // style: kSubtitleStyle,
//                             ),
//                           ],
//                         ),
//                       ),
//                       Padding(
//                         padding: EdgeInsets.all(40.0),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: <Widget>[
//                             Center(
//                               child: Image(
//                                 image: AssetImage(
//                                   'assets/images/mis.png',
//                                 ),
//                                 height: 300.0,
//                                 width: 300.0,
//                               ),
//                             ),
//                             SizedBox(height: 30.0),
//                             Text(
//                               'Your happiness is our goal.',
//                               // style: kTitleStyle,
//                             ),
//                             SizedBox(height: 15.0),
//                             Text(
//                               'If you"re not happy, we"ll work to make it right.',
//                               // style: kSubtitleStyle,
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Expanded(
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: _buildPageIndicator(),
//                   ),
//                 ),
//                 _currentPage != _numPages - 1
//                     ? Expanded(
//                         child: Align(
//                           alignment: FractionalOffset.bottomRight,
//                           child: TextButton(
//                             onPressed: () {
//                               _pageController.nextPage(
//                                 duration: Duration(milliseconds: 500),
//                                 curve: Curves.ease,
//                               );
//                             },
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               mainAxisSize: MainAxisSize.min,
//                               children: <Widget>[
//                                 Text(
//                                   'Next',
//                                   style: TextStyle(
//                                     color: Colors.white,
//                                     fontSize: 22.0,
//                                   ),
//                                 ),
//                                 SizedBox(width: 10.0),
//                                 Icon(
//                                   Icons.arrow_forward,
//                                   color: Colors.white,
//                                   size: 30.0,
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       )
//                     : Text(''),
//               ],
//             ),
//           ),
//         ),
//       ),
//       bottomSheet: _currentPage == _numPages - 1
//           ? Container(
//               height: 115.0,
//               width: double.infinity,
//               color: Colors.white,
//               child: GestureDetector(
//                 onTap: () => print('Get started'),
//                 child: Center(
//                   child: Padding(
//                     //WelcomeScreen
//                     padding: EdgeInsets.only(bottom: 30.0),
//                     child: TextButton(
//                       child: Text("Get Started"),
//                       //textColor: Colors.blueAccent,
//                       onPressed: () {
//                         Navigator.push(context,
//                             MaterialPageRoute(builder: (context) {
//                           return Dashboard();
//                         }));
//                       },
//                     ),
//                   ),
//                 ),
//               ),
//             )
//           : const Text(''),
//     );
//   }
// }
