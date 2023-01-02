// import 'package:flutter/material.dart';

// import 'package:expense/data/casestudy_list.dart';

// class DetailedCase2 extends StatefulWidget {
//   const DetailedCase2({super.key});

//   @override
//   State<DetailedCase2> createState() => _DetailedCase2State();
// }

// class _DetailedCase2State extends State<DetailedCase2> {
//   bool _bookmarked = true;
//   void _bookmarksList() {
//     setState(() {
//       if (_bookmarked) {
//         _bookmarked = false;
//       } else {
//         _bookmarked = true;
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         elevation: 0,
//         backgroundColor: Colors.white,
//         title: const Text(
//           '',
//           style: TextStyle(color: Colors.black),
//         ),
//         leading: IconButton(
//             onPressed: () {
//               Navigator.pop(context);
//             },
//             icon: const Icon(
//               Icons.arrow_back,
//               color: Colors.black,
//             )),
//         actions: <Widget>[
//           IconButton(
//             onPressed: () {},
//             icon: const Icon(
//               Icons.share,
//               color: Colors.black,
//             ),
//           ),
//           IconButton(
//               onPressed: () {
//                 // setState(() {
//                 //   if (!Caselist.checkBookmark(widget.caselist)) {
//                 //     Caselist.addBookmark(widget.caselist);
//                 //   }
//                 // });
//                 _bookmarksList();
//               },
//               icon: (_bookmarked
//                   ? const Icon(
//                       Icons.bookmark_border,
//                       color: Colors.black,
//                     )
//                   : const Icon(
//                       Icons.bookmark,
//                       color: Colors.black,
//                     )))
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: Center(
//             child: Container(
//                 padding: const EdgeInsets.symmetric(horizontal: 20),
//                 child: Column(
//                   children: [
//                     ListView.builder(
//                       shrinkWrap: true,
//                       scrollDirection: Axis.vertical,
//                       itemCount: 1,
//                       itemBuilder: ((context, index) {
//                         return ListTile(
//                           leading: Image.asset(caselists[1].imgUrl),
//                           title: Text(
//                             caselists[1].title,
//                             style: const TextStyle(
//                                 color: Colors.black,
//                                 fontWeight: FontWeight.bold),
//                           ),
//                           subtitle: const Text("SAP Success Factors,S4 HANA\nUK"),
//                         );
//                       }),
//                     ),
//                     RichText(
//                         text: const TextSpan(
//                             style: TextStyle(
//                                 color: Colors.black,
//                                 fontSize: 14,
//                                 fontFamily: 'Plus Jakarta Sans'),
//                             children: <TextSpan>[
//                           TextSpan(
//                             text: "\n\nLargest Loan Provider in KSA",
//                             style: TextStyle(
//                                 color: Colors.redAccent,
//                                 fontSize: 18,
//                                 fontWeight: FontWeight.bold),
//                           ),
//                           TextSpan(
//                             text:
//                                 "\n\nBecoming an Intelligent Enterprise to Aid Compliance\nand Enhance Business Insights",
//                             style: TextStyle(
//                                 color: Colors.black,
//                                 fontSize: 14,
//                                 fontWeight: FontWeight.bold),
//                           ),
//                           TextSpan(
//                               text:
//                                   "\n\nSIDF was established in 1394 AH as a government\nfinancial institution to realize the objectives, policies,\nand programs of industrial development in Saudi\nArabia. Such objectives are aimed at supporting the\nprivate sector in various industrial fields, financing and\ndeveloping the industrial sector in conjunction with\ngovernment entities. SIDF paves the way for the\nprivate sector to engage in constituting and sustaining\na national industrial base effectively and adequately..\n\nThe Industrial Fund was set up to operate a vital role in promoting industrial investment opportunities, strengthening the local industry, and enhancing its performance. All these measures are realized by contributing to the formation of industrial sectors, boosting competitiveness, and sustaining strategic initiatives."),
//                           TextSpan(
//                             text: "\n\nBusiness Pain Points",
//                             style: TextStyle(
//                                 color: Colors.redAccent,
//                                 fontSize: 18,
//                                 fontWeight: FontWeight.bold),
//                           ),
//                           TextSpan(
//                               text:
//                                   "\n\nAn on-premise accounting system that reached its capacity, where rapidly increasing transaction volume caused delays in processing.\nSlow and manually intense batch processing of donations, resulting in delayed disbursements to charities.\nExtended downtime during complex system upgrades, leading to protracted periods without releasing new features or functionality.\nPayroll batches that took multiple days to process.\nChallenges accessing the system, with multiple firewalls and four different password gateways."),
//                           TextSpan(
//                             text: "\n\nSolution",
//                             style: TextStyle(
//                                 color: Colors.redAccent,
//                                 fontSize: 18,
//                                 fontWeight: FontWeight.bold),
//                           ),
//                           TextSpan(
//                               text:
//                                   "\n\nAn on-premise accounting system that reached its capacity, where rapidly increasing transaction volume caused delays in processing.\nSlow and manually intense batch processing of donations, resulting in delayed disbursements to charities.\nExtended downtime during complex system upgrades, leading to protracted periods without releasing new features or functionality.\nPayroll batches that took multiple days to process.\nChallenges accessing the system, with multiple firewalls and four different password gateways."),
//                           TextSpan(
//                             text: "\n\nHighlights",
//                             style: TextStyle(
//                                 color: Colors.redAccent,
//                                 fontSize: 18,
//                                 fontWeight: FontWeight.bold),
//                           ),
//                           TextSpan(
//                               text:
//                                   "\n\nThe most critical part of this project is we provided\ncomplete custom solution. There were lot of\ncustomizations made in WRICEF. It Includes the\nfollowing:")
//                         ])),
//                   ],
//                 ))),
//       ),
//       floatingActionButton: Align(
//         alignment: Alignment.bottomRight,
//         child: FloatingActionButton(
//           child: const Icon(Icons.format_list_bulleted),
//           backgroundColor: Colors.redAccent,
//           onPressed: () {
//             PopupMenuButton<Text>(
//                 itemBuilder: (context) => <PopupMenuEntry<Text>>[
//                       const PopupMenuItem<Text>(
//                         child: Text('Working a lot harder'),
//                       ),
//                     ]);
//           },
//         ),
//       ),
//     );
//   }
// }
