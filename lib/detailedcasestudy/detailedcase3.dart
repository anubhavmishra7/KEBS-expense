// import 'package:flutter/material.dart';
// import 'package:expense/data/casestudy_list.dart';

// class DetailedCase3 extends StatefulWidget {
//   const DetailedCase3({super.key});

//   @override
//   State<DetailedCase3> createState() => _DetailedCase3State();
// }

// class _DetailedCase3State extends State<DetailedCase3> {
//   bool _bookmarked = true;
//   void _bookmarksList() {
//     if (_bookmarked) {
//       _bookmarked = false;
//     } else {
//       _bookmarked = true;
//     }
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
//                     ListTile(
//                       leading: Image.asset(caselists[2].imgUrl),
//                       title: Text(
//                         caselists[2].title,
//                         style: const TextStyle(fontWeight: FontWeight.bold),
//                       ),
//                     ),
//                   ],
//                 ))),
//       ),
//       floatingActionButton: Align(
//         alignment: Alignment.bottomRight,
//         child: FloatingActionButton(
//           child: const Icon(Icons.format_list_bulleted),
//           backgroundColor: Colors.redAccent,
//           onPressed: () {},
//         ),
//       ),
//     );
//   }
// }
