import 'package:flutter/material.dart';

import 'package:expense/models/bookmarks.dart';

class Bookmarks extends StatefulWidget {
  const Bookmarks({super.key});

  @override
  State<Bookmarks> createState() => _BookmarksState();
}

class _BookmarksState extends State<Bookmarks> {
  var bookmarklet = Caselist.getBookmark();
  @override
  void initState() {
    super.initState();
    if (bookmarklet.isEmpty) {
      bookmarklet.add(Caselist(1, "Saudi International Development Fund",
          "assets/images/Image1.png", "KSA"));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: Container(
      //   width: MediaQuery.of(context).size.width,
      //   child: FloatingActionButton(
      //       onPressed: () {}, child: Image.asset("assets/images/bottom2.png")),
      // ),
      backgroundColor: Color(0xFFEE4961),
      //appBar: AppBar(title: Text("hehe")),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back)),
            title: const Text("Customer Case Study",
                style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontFamily: 'Plus Jakarta Sans',
                    fontSize: 14,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1.7142857142857142)),
            backgroundColor: Colors.redAccent,
            expandedHeight: 65,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: <Widget>[
                  Container(
                      //alignment: Alignment.center,
                      width: double.infinity,
                      //color: Colors.yellow,
                      //width: MediaQuery.of(context).size.width,
                      child: Image.asset(
                        'assets/images/landing2.png',
                        fit: BoxFit.fitWidth,
                      )),
                  Container(
                      //alignment: Alignment.center,
                      width: double.infinity,
                      //color: Colors.yellow,
                      //width: MediaQuery.of(context).size.width,
                      child: Image.asset(
                        'assets/images/landing3.png',
                        fit: BoxFit.fitWidth,
                      )),
                  // Container(
                  //     //alignment: Alignment.center,
                  //     width: double.maxFinite,
                  //     child: Image.asset(
                  //       'assets/images/landing3.png',
                  //       fit: BoxFit.fitWidth,
                  //     )),

                  // Positioned(
                  //     //width: MediaQuery.of(context).size.width,
                  //     child: Container(
                  //   width: double.maxFinite,
                  //   child: Image.asset(
                  //     'assets/images/landing3.png',
                  //     fit: BoxFit.fitWidth,
                  //   ),
                  // ))
                ],
              ),
            ),
          ),
          SliverFillRemaining(
            child: _buildContent(bookmarklet),
          )
        ],
      ),
    );
  }
}

Center _buildContent(bookmarklet) {
  return Center(
      child: Container(
    decoration: const BoxDecoration(
        color: Color(0xFFF6F6F7),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20))),
    // ignore: sort_child_properties_last
    child: Column(
      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    "     ${bookmarklet.length} Bookmarked",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.search),
                  ),
                  IconButton(
                      onPressed: () {
                        // showModalBottomSheet(
                        //     context: context,
                        //     shape: RoundedRectangleBorder(
                        //         borderRadius: BorderRadius.only(
                        //             topLeft: Radius.circular(20),
                        //             topRight: Radius.circular(20))),
                        //     builder: (BuildContext context) {
                        //       return Container(
                        //         padding: EdgeInsets.only(top: 10),
                        //         height: 400,
                        //         child: Center(
                        //           child: Column(
                        //             children: [
                        //               Container(
                        //                 decoration: BoxDecoration(
                        //                     color: Colors.grey,
                        //                     borderRadius: BorderRadius.all(
                        //                         Radius.circular(20))),
                        //                 width: 100,
                        //                 height: 8,
                        //               ),
                        //               Container(
                        //                 alignment: Alignment.topLeft,
                        //                 padding: EdgeInsets.symmetric(
                        //                     vertical: 25, horizontal: 25),
                        //                 child: Column(
                        //                   mainAxisAlignment:
                        //                       MainAxisAlignment.center,
                        //                   mainAxisSize: MainAxisSize.min,
                        //                   children: <Widget>[
                        //                     Container(
                        //                       alignment: Alignment.topLeft,
                        //                       child: Text(
                        //                         "Range",
                        //                         textAlign: TextAlign.start,
                        //                         style: TextStyle(
                        //                             fontWeight:
                        //                                 FontWeight.bold),
                        //                       ),
                        //                     ),
                        //                     Padding(
                        //                       padding: EdgeInsets.symmetric(
                        //                           vertical: 22),
                        //                       child: Container(
                        //                         decoration: BoxDecoration(
                        //                             color: Colors.grey,
                        //                             borderRadius:
                        //                                 BorderRadius.all(
                        //                                     Radius.circular(
                        //                                         20))),
                        //                         height: 3,
                        //                         width: 370,
                        //                       ),
                        //                     ),
                        //                     Padding(
                        //                       padding:
                        //                           const EdgeInsets.symmetric(
                        //                               vertical: 8.0),
                        //                       child: Container(
                        //                         alignment: Alignment.topLeft,
                        //                         child: Text(
                        //                           "Multi Select Chips",
                        //                           textAlign: TextAlign.start,
                        //                           style: TextStyle(
                        //                               fontWeight:
                        //                                   FontWeight.bold),
                        //                         ),
                        //                       ),
                        //                     ),
                        //                     Container(
                        //                       padding: EdgeInsets.symmetric(
                        //                           vertical: 6),
                        //                       child: Column(
                        //                         children: [
                        //                           Row(
                        //                             mainAxisAlignment:
                        //                                 MainAxisAlignment
                        //                                     .spaceBetween,
                        //                             children: [
                        //                               ElevatedButton(
                        //                                   style: ElevatedButton
                        //                                       .styleFrom(
                        //                                           backgroundColor:
                        //                                               Colors
                        //                                                   .redAccent),
                        //                                   onPressed: () {},
                        //                                   child:
                        //                                       Text("Option 1")),
                        //                               ElevatedButton(
                        //                                   style: ElevatedButton
                        //                                       .styleFrom(
                        //                                           backgroundColor:
                        //                                               Colors
                        //                                                   .redAccent),
                        //                                   onPressed: () {},
                        //                                   child:
                        //                                       Text("Option 2")),
                        //                               ElevatedButton(
                        //                                   style: ElevatedButton
                        //                                       .styleFrom(
                        //                                           backgroundColor:
                        //                                               Colors
                        //                                                   .blueGrey),
                        //                                   onPressed: () {},
                        //                                   child:
                        //                                       Text("Option 3"))
                        //                             ],
                        //                           ),
                        //                           Row(
                        //                             mainAxisAlignment:
                        //                                 MainAxisAlignment
                        //                                     .spaceBetween,
                        //                             children: [
                        //                               ElevatedButton(
                        //                                   style: ElevatedButton
                        //                                       .styleFrom(
                        //                                           backgroundColor:
                        //                                               Colors
                        //                                                   .redAccent),
                        //                                   onPressed: () {},
                        //                                   child: Text(
                        //                                       "Option 4.1")),
                        //                               ElevatedButton(
                        //                                   style: ElevatedButton
                        //                                       .styleFrom(
                        //                                           backgroundColor:
                        //                                               Colors
                        //                                                   .grey),
                        //                                   onPressed: () {},
                        //                                   child: Text(
                        //                                       "Option 4.56")),
                        //                               ElevatedButton(
                        //                                   style: ElevatedButton
                        //                                       .styleFrom(
                        //                                           backgroundColor:
                        //                                               Colors
                        //                                                   .grey),
                        //                                   onPressed: () {},
                        //                                   child: Text(
                        //                                       "Option 5.6"))
                        //                             ],
                        //                           )
                        //                         ],
                        //                       ),
                        //                     ),
                        //                     Container(
                        //                         alignment: Alignment.topLeft,
                        //                         child: Text(
                        //                           "Radio Buttons",
                        //                           style: TextStyle(
                        //                               fontWeight:
                        //                                   FontWeight.bold),
                        //                         )),
                        //                     Container(
                        //                       alignment: Alignment.topLeft,
                        //                       child: Row(
                        //                         children: [
                        //                           Radio(
                        //                               value: 1,
                        //                               groupValue: 2,
                        //                               onChanged: (value) {}),
                        //                           Text(
                        //                             "Label One",
                        //                             style:
                        //                                 TextStyle(fontSize: 13),
                        //                           ),
                        //                           Radio(
                        //                               fillColor:
                        //                                   MaterialStateProperty
                        //                                       .all(Colors
                        //                                           .redAccent),
                        //                               value: 2,
                        //                               groupValue: 2,
                        //                               onChanged: (value) {}),
                        //                           Text("Label Two"),
                        //                           Radio(
                        //                               value: 1,
                        //                               groupValue: 2,
                        //                               onChanged: (value) {}),
                        //                           Text("Label Three"),
                        //                         ],
                        //                       ),
                        //                     ),
                        //                     Container(
                        //                       alignment: Alignment.topLeft,
                        //                       child: Row(
                        //                         mainAxisAlignment:
                        //                             MainAxisAlignment
                        //                                 .spaceBetween,
                        //                         children: [
                        //                           Container(
                        //                             width: 270,
                        //                             child: ElevatedButton(
                        //                                 style: ElevatedButton.styleFrom(
                        //                                     backgroundColor:
                        //                                         Colors
                        //                                             .redAccent,
                        //                                     shape: RoundedRectangleBorder(
                        //                                         borderRadius:
                        //                                             BorderRadius.all(
                        //                                                 Radius.circular(
                        //                                                     10))),
                        //                                     elevation: 20),
                        //                                 onPressed: () {},
                        //                                 child: Text(
                        //                                     "Show Results")),
                        //                           ),
                        //                           Text("Clear")
                        //                         ],
                        //                       ),
                        //                     )

                        //                     // const Text('BottomSheet'),
                        //                     // ElevatedButton(
                        //                     //   child: const Text(
                        //                     //       'Close BottomSheet'),
                        //                     //   onPressed: () =>
                        //                     //       Navigator.pop(context),
                        //                     // ),
                        //                   ],
                        //                 ),
                        //               ),
                        //             ],
                        //           ),
                        //         ),
                        //       );
                        //     });
                        // showBottomSheet<void>(

                        //     context: context,
                        //     builder: ((BuildContext context) {
                        //       return Container(
                        //         height: 300,
                        //         color: Colors.amber,
                        //         child: Center(
                        //           child: Column(
                        //             mainAxisAlignment:
                        //                 MainAxisAlignment.center,
                        //             mainAxisSize: MainAxisSize.min,
                        //             children: <Widget>[
                        //               const Text('BottomSheet'),
                        //               ElevatedButton(
                        //                 child: const Text(
                        //                     'Close BottomSheet'),
                        //                 onPressed: () =>
                        //                     Navigator.pop(context),
                        //               ),
                        //             ],
                        //           ),
                        //         ),
                        //       );
                        //     }));
                      },
                      icon: Icon(Icons.filter_list))
                ],
              )
            ],
          ),
        ),
        Flexible(
          child: Container(
            child: ListView.builder(
                itemCount: bookmarklet.length,
                itemBuilder: ((context, index) {
                  return GestureDetector(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        margin: EdgeInsets.zero,
                        elevation: 0,
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.14,
                          margin: EdgeInsets.symmetric(
                              horizontal:
                                  MediaQuery.of(context).size.width * 0.030,
                              vertical:
                                  MediaQuery.of(context).size.height * 0.005),
                          child: Row(
                            children: [
                              Container(
                                  decoration: BoxDecoration(
                                      // color: Colors.green,
                                      borderRadius: BorderRadius.circular(100)
                                      //more than 50% of width makes circle
                                      ),
                                  // decoration: BoxDecoration(
                                  //   image: DecorationImage(
                                  //     image: AssetImage("assets/images/greencircle.png"),
                                  //     fit: BoxFit.fill,
                                  //   ),
                                  // ),
                                  child: CircleAvatar(
                                    radius: 26,
                                    backgroundColor: Color(0xFFF6F6F7),
                                    child: Padding(
                                      padding: const EdgeInsets.all(
                                          8), // Border radius
                                      child: ClipOval(
                                          child: Container(
                                              width: 50,
                                              height: 50,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        bookmarklet[index]
                                                            .imgUrl),
                                                    fit: BoxFit.fitWidth),
                                              ))),
                                    ),
                                  )

                                  //           Container(
                                  //               width: 50,
                                  //               height: 50,
                                  //
                                  //               decoration: BoxDecoration(
                                  //           image : DecorationImage(
                                  //           image: AssetImage(caselists[index].imgUrl),
                                  //       fit: BoxFit.fitWidth
                                  //   ),
                                  // )
                                  //
                                  //           )
                                  // Image.asset(
                                  //   caselists[index].imgUrl,
                                  //   width: MediaQuery.of(context).size.width *
                                  //       0.25,
                                  //     height: 50,
                                  //     fit:BoxFit.fill
                                  // ),
                                  ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.65,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        bookmarklet[index].title,
                                        textAlign: TextAlign.left,
                                        style: const TextStyle(
                                            color:
                                                Color.fromRGBO(17, 20, 52, 1),
                                            fontFamily: 'Plus Jakarta Sans',
                                            fontSize: 14,
                                            letterSpacing:
                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.normal,
                                            height: 1.7142857142857142),
                                      ),
                                      // FittedBox(
                                      //   child: Padding(
                                      //     padding: const EdgeInsets.all(8.0),
                                      //     child: Text(
                                      //       caselists[index].title,
                                      //       style: TextStyle(
                                      //           fontSize: 15,
                                      //           fontWeight: FontWeight.bold),
                                      //
                                      //       //style: Theme.of(context).textTheme,
                                      //     ),
                                      //   ),
                                      // ),
                                      const Text(
                                        'SAP Success Factors, S4HANA',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                125, 131, 139, 1),
                                            fontFamily: 'Plus Jakarta Sans',
                                            fontSize: 12,
                                            letterSpacing:
                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.normal,
                                            height: 1.3),
                                      ),
                                      // FittedBox(
                                      //   child: Padding(
                                      //     padding: const EdgeInsets.all(8.0),
                                      //     child: Text(
                                      //       'SAP Success Factors, S4HANA',
                                      //       style: TextStyle(
                                      //           fontSize: 15,
                                      //           fontWeight: FontWeight.bold),
                                      //
                                      //       //style: Theme.of(context).textTheme,
                                      //     ),
                                      //   ),
                                      // ),
                                      Text(
                                        bookmarklet[index].overview,
                                        textAlign: TextAlign.left,
                                        style: const TextStyle(
                                            color: Color.fromRGBO(
                                                242, 122, 108, 1),
                                            fontFamily: 'Plus Jakarta Sans',
                                            fontSize: 11,
                                            letterSpacing:
                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.normal,
                                            height: 1.4),
                                      )
                                      // RichText(text: TextSpan(
                                      //   ch
                                      // ))
                                    ],
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 10),
                                    child: Container(
                                        width: 24,
                                        height: 24,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/images/bookmark.png'),
                                              fit: BoxFit.fitWidth),
                                        )),
                                  ),
                                  CircleAvatar(
                                    backgroundColor: const Color(0xFFF6F6F7),
                                    radius: 18,
                                    child: IconButton(
                                        padding: EdgeInsets.zero,
                                        icon: const Icon(
                                          Icons.arrow_forward_ios,
                                          color: Colors.grey,
                                          size: 10,
                                        ),
                                        color: Color(0xFFD9D9D9),
                                        onPressed: () {
                                          // Navigator.push(
                                          //     context,
                                          //     MaterialPageRoute(
                                          //         builder: (context) =>
                                          //         route[index]
                                          //       // DetailedCustomercase(
                                          //       //     caselists[index])
                                          //     ));
                                        }),
                                  ),
                                ],
                              ),

                              // IconButton(
                              //     onPressed: () {
                              //       Navigator.push(
                              //           context,
                              //           MaterialPageRoute(
                              //               builder: (context) =>
                              //                   route[index]
                              //               // DetailedCustomercase(
                              //               //     caselists[index])
                              //               ));
                              //     },
                              //     icon: Icon(Icons.arrow_forward_ios))
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                })),
          ),
        )
        // Container(
        //   height: 100,
        //   width: 400,
        //   decoration: BoxDecoration(
        //       borderRadius: BorderRadius.all(Radius.circular(100))),
        //   child: Card(
        //     elevation: 10,
        //     child: Text(
        //       'SAP Dubai',
        //       style: kTitleStyle,
        //       textAlign: TextAlign.center,
        //     ),
        //   ),
        // )
      ],
    ),
    //color: Colors.yellow,
    // decoration: BoxDecoration(
    //     color: Colors.white,
    //     borderRadius: BorderRadius.only(
    //         topLeft: Radius.circular(20), topRight: Radius.circular(20))),
  ));
}











// import 'package:flutter/material.dart';
// import 'package:kcsm/data/casestudy_list.dart';
// import 'package:kcsm/models/bookmarks.dart';
// import 'package:kcsm/detailedcasestudy/detail_customercase.dart';
// import 'package:kcsm/utilities/style.dart';

// class Bookmarks extends StatelessWidget {
//   const Bookmarks({super.key});

//   @override
//   Widget build(BuildContext context) {
//     var caselist = Caselist.getBookmark();
//     return Scaffold(
//       // floatingActionButton: Container(
//       //   width: MediaQuery.of(context).size.width,
//       //   child: FloatingActionButton(
//       //       onPressed: () {}, child: Image.asset("assets/images/bottom2.png")),
//       // ),
//       backgroundColor: Colors.redAccent,
//       //appBar: AppBar(title: Text("hehe")),
//       body: CustomScrollView(
//         slivers: <Widget>[
//           SliverAppBar(
//             leading: IconButton(
//                 onPressed: () {
//                   Navigator.pop(context);
//                 },
//                 icon: const Icon(Icons.arrow_back)),
//             title: const Text("Customer Case Study"),
//             backgroundColor: Colors.redAccent,
//             expandedHeight: 100,
//             pinned: true,
//             flexibleSpace: FlexibleSpaceBar(
//               background: Stack(
//                 children: <Widget>[
//                   Container(
//                       //alignment: Alignment.center,
//                       width: double.infinity,
//                       //color: Colors.yellow,
//                       //width: MediaQuery.of(context).size.width,
//                       child: Image.asset(
//                         'assets/images/landing2.png',
//                         fit: BoxFit.fitWidth,
//                       )),
//                   Container(
//                       //alignment: Alignment.center,
//                       width: double.infinity,
//                       //color: Colors.yellow,
//                       //width: MediaQuery.of(context).size.width,
//                       child: Image.asset(
//                         'assets/images/landing3.png',
//                         fit: BoxFit.fitWidth,
//                       )),
//                   // Container(
//                   //     //alignment: Alignment.center,
//                   //     width: double.maxFinite,
//                   //     child: Image.asset(
//                   //       'assets/images/landing3.png',
//                   //       fit: BoxFit.fitWidth,
//                   //     )),

//                   // Positioned(
//                   //     //width: MediaQuery.of(context).size.width,
//                   //     child: Container(
//                   //   width: double.maxFinite,
//                   //   child: Image.asset(
//                   //     'assets/images/landing3.png',
//                   //     fit: BoxFit.fitWidth,
//                   //   ),
//                   // ))
//                 ],
//               ),
//             ),
//           ),
//           SliverFillRemaining(
//             child: _buildContent(),
//           )
//         ],
//       ),
//     );
//   }
// }

// Center _buildContent() {
//   return Center(
//       child: Container(
//     // ignore: sort_child_properties_last
//     child: Column(
//       // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       children: [
//         Padding(
//           padding: const EdgeInsets.only(top: 5.0),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Row(
//                 children: [
//                   const Text(
//                     "     1 Bookmarked",
//                     style: TextStyle(fontWeight: FontWeight.bold),
//                   )
//                 ],
//               ),
//               Row(
//                 children: [
//                   IconButton(
//                     onPressed: () {},
//                     icon: const Icon(Icons.search),
//                   ),
//                   IconButton(onPressed: () {}, icon: const Icon(Icons.filter_list))
//                 ],
//               )
//             ],
//           ),
//         ),
//         Flexible(
//           flex: 1,
//           child: ListView.builder(
//               itemCount: caselists.length,
//               itemBuilder: (context, index) {
//                 return GestureDetector(
//                   onTap: () {
//                     Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) =>
//                                 DetailedCustomercase(caselists[index])));
//                   },
//                   child: Card(
//                     elevation: 20,
//                     child: Container(
//                       height: MediaQuery.of(context).size.height * 0.10,
//                       margin: EdgeInsets.symmetric(
//                           horizontal: MediaQuery.of(context).size.width * 0.025,
//                           vertical: MediaQuery.of(context).size.height * 0.012),
//                       child: Row(
//                         children: [
//                           Image.asset(
                        
//                             caselists[index].imgUrl,
//                             width: MediaQuery.of(context).size.width * 0.25,
//                           ),
//                           SizedBox(
//                             width: MediaQuery.of(context).size.width * 0.65,
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.spaceAround,
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 FittedBox(
//                                   child: Text(
//                                     caselists[index].title,
//                                     style: kTitleStyle,
//                                     //style: Theme.of(context).textTheme,
//                                   ),
//                                 ),
//                                 // RichText(text: TextSpan(
//                                 //   ch
//                                 // ))
//                               ],
//                             ),
//                           )
//                         ],
//                       ),
//                     ),
//                   ),
//                 );
//               }),
//         )
//         // Container(
//         //   height: 100,
//         //   width: 400,
//         //   decoration: BoxDecoration(
//         //       borderRadius: BorderRadius.all(Radius.circular(100))),
//         //   child: Card(
//         //     elevation: 10,
//         //     child: Text(
//         //       'SAP Dubai',
//         //       style: kTitleStyle,
//         //       textAlign: TextAlign.center,
//         //     ),
//         //   ),
//         // )
//       ],
//     ),
//     //color: Colors.yellow,
//     decoration: const BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.only(
//             topLeft: Radius.circular(20), topRight: Radius.circular(20))),
//   ));
// }
