import 'package:expense/utilities/style.dart';
import 'package:flutter/material.dart';

class DetailedExpense extends StatefulWidget {
  const DetailedExpense({super.key});

  @override
  State<DetailedExpense> createState() => _DetailedExpenseState();
}

class _DetailedExpenseState extends State<DetailedExpense> {
  List<String> growableList = List<String>.generate(4, ((index) => "-"));
  // List<String> _header = ["Submission", "Approval", "Verification", "Closed"];
  // List<String> _expanded = ["Submission", "Approval", "Verification", "Closed"];

  // List<String> _icons = ["Icons.add"];
  List<ExpansionItem> items = <ExpansionItem>[
    ExpansionItem(
      header: "Submission",
      body: "Food & Beverage\n\nTrip Expenses-Dinner 18 Feb\nINR 4,500",
    ),
    ExpansionItem(
      header: "Approval",
      body: "Maran Nagarajan\nCEO- Kaar",
    ),
    ExpansionItem(
      header: "Verification",
      body: "Maran Nagarajan\nCEO- Kaar",
    ),
    ExpansionItem(
      header: "Closed",
      body: "Payment Done By\nSubrahmaniyan T\nPayment Mode\nCheque",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          titleSpacing: 7,
          actions: [
            // PopupMenuButton(
            //     icon: Icon(Icons.cloud_download_outlined),
            //     position: PopupMenuPosition.under,
            //     itemBuilder: (context) => <PopupMenuItem>[
            //           PopupMenuItem(child: Text("Hehe")),
            //           PopupMenuItem(child: Text("Hehe")),
            //           PopupMenuItem(child: Text("Hehe")),
            //         ]),
            IconButton(
              onPressed: () {
                showDialog(
                    useSafeArea: true,
                    context: context,
                    builder: (context) => Dialog(
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.3,
                            height: MediaQuery.of(context).size.height * 0.3,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const Text(
                                  "Download Attachment(s)",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.6,
                                  color: kColor,
                                  child: const ListTile(
                                    leading: Icon(Icons.picture_as_pdf),
                                    title: Text("IMG 7635.jpg"),
                                    trailing:
                                        Icon(Icons.file_download_outlined),
                                  ),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.6,
                                  color: kColor,
                                  child: const ListTile(
                                    leading: Icon(Icons.picture_as_pdf),
                                    title: Text("IMG 7635.jpg"),
                                    trailing:
                                        Icon(Icons.file_download_outlined),
                                  ),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.6,
                                  child: ElevatedButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                                content:
                                                    Text("Files Downloaded")));
                                      },
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: kprimary),
                                      child: const Text("Download All")),
                                )
                              ],
                            ),
                          ),
                        ));
              },
              icon: const Icon(Icons.cloud_download_outlined),
            ),
            const SizedBox(
              width: 20,
            )
          ],
          title: const Text(
            "Trip expenses - Dinner 18 feb",
            style: TextStyle(fontSize: 14),
          ),
          elevation: 0,
          backgroundColor: Colors.transparent),
      body: Stack(fit: StackFit.expand, children: [
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.center,
                colors: [Color(0xff111434), Color(0xFFF6F6F6)]),
          ),
        ),
        Container(
          alignment: Alignment.topRight,
          child: Image.asset(
            "assets/images/landing3.png",
            opacity: const AlwaysStoppedAnimation(0.5),
          ),
        ),
        SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.only(top: 88.0),
            child: Container(
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    padding: const EdgeInsets.symmetric(
                      vertical: 20,
                    ),
                    width: MediaQuery.of(context).size.width * 0.92,
                    height: MediaQuery.of(context).size.height * 0.4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        "Amount Requested",
                                        style:
                                            TextStyle(color: Color(0xff868686)),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        " INR 4,500",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xff45546E),
                                            fontSize: 16,
                                            fontFamily: 'Plus Jakarta Sans'),
                                      ),
                                    ],
                                  ),
                                  SizedBox()
                                ],
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Amount Claimed",
                                  style: TextStyle(color: Color(0xff868686)),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "INR 0.00",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xff45546E),
                                      fontSize: 16,
                                      fontFamily: 'Plus Jakarta Sans'),
                                )
                              ],
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              '-----------------------------------------------------------------------------------------',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                        Wrap(
                          //crossAxisAlignment: CrossAxisAlignment.start,
                          spacing: 80,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Cost Center",
                                      style: TextStyle(
                                          color: Color(0xff868686),
                                          fontSize: 14),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "CKTXXXKBS",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xff45546E),
                                          fontSize: 16,
                                          fontFamily: 'Plus Jakarta Sans'),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Column(
                                  // mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "Created By",
                                      style:
                                          TextStyle(color: Color(0xff868686)),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "Aswini B",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xff45546E),
                                          fontSize: 16,
                                          fontFamily: 'Plus Jakarta Sans'),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "Exp-Code",
                                      style:
                                          TextStyle(color: Color(0xff868686)),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "INR 4,500",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xff45546E),
                                          fontSize: 16,
                                          fontFamily: 'Plus Jakarta Sans'),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "Department",
                                      style:
                                          TextStyle(color: Color(0xff868686)),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "Product Development",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xff45546E),
                                          fontSize: 16,
                                          fontFamily: 'Plus Jakarta Sans'),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "Days Elapsed",
                                      style:
                                          TextStyle(color: Color(0xff868686)),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "2 Days",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xff45546E),
                                          fontSize: 16,
                                          fontFamily: 'Plus Jakarta Sans'),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Approvers",
                                      style:
                                          TextStyle(color: Color(0xff868686)),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Wrap(
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(360),
                                          child: CircleAvatar(
                                            radius: 12,
                                            child: Image.asset(
                                                "assets/images/management1.png"),
                                          ),
                                        ),
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(360),
                                          child: CircleAvatar(
                                            radius: 12,
                                            child: Image.asset(
                                                "assets/images/management2.png"),
                                          ),
                                        ),
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(360),
                                          child: CircleAvatar(
                                            radius: 12,
                                            child: Image.asset(
                                                "assets/images/management3.png"),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    // physics: ScrollPhysics(),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      child: Container(
                        padding: EdgeInsets.all(15),
                        child: Container(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.9,
                                      child: ExpansionPanelList(
                                          dividerColor: Colors.transparent,
                                          elevation: 0,
                                          expansionCallback:
                                              (int index, bool isExpanded) {
                                            setState(() {
                                              items[index].isExpanded =
                                                  !items[index].isExpanded;
                                            });
                                          },
                                          children:
                                              items.map((ExpansionItem item) {
                                            return ExpansionPanel(
                                              canTapOnHeader: true,
                                              backgroundColor:
                                                  const Color(0xFFF6F6F6),
                                              headerBuilder:
                                                  (context, bool isExpanded) {
                                                return Container(
                                                    //color: Colors.yellow,
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Wrap(
                                                      spacing: 0,
                                                      children: [
                                                        const Icon(
                                                          Icons
                                                              .check_circle_sharp,
                                                          size: 23,
                                                        ),
                                                        const SizedBox(
                                                          width: 10,
                                                        ),
                                                        Text(item.header,
                                                            style: const TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontSize: 16,
                                                                color: Color(
                                                                    0xff45546E))),
                                                      ],
                                                    ));
                                              },
                                              isExpanded: item.isExpanded,
                                              body: Container(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      horizontal: 20),
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  clipBehavior: Clip.none,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.8,
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.1,
                                                  color: Colors.white,
                                                  child: Text(
                                                    item.body,
                                                    style: const TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  )),
                                            );
                                          }).toList()))
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        // Positioned(
        //   top: MediaQuery.of(context).size.height * 0.12,
        //   left: MediaQuery.of(context).size.width * 0.02,
        //   right: MediaQuery.of(context).size.width * 0.02,
        //   child:
        //   Column(
        //     // crossAxisAlignment: CrossAxisAlignment.center,
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: [
        //       Container(
        //         decoration: const BoxDecoration(
        //             color: Colors.white,
        //             borderRadius: BorderRadius.all(Radius.circular(10))),
        //         padding: const EdgeInsets.symmetric(
        //           vertical: 20,
        //         ),
        //         width: MediaQuery.of(context).size.width * 0.92,
        //         height: MediaQuery.of(context).size.height * 0.4,
        //         child: Column(
        //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //           crossAxisAlignment: CrossAxisAlignment.center,
        //           children: [
        //             Wrap(
        //               spacing: 70,
        //               children: [
        //                 Column(
        //                   crossAxisAlignment: CrossAxisAlignment.start,
        //                   children: const [
        //                     Text(
        //                       "Amount Requested",
        //                       style: TextStyle(color: Color(0xff868686)),
        //                     ),
        //                     SizedBox(
        //                       height: 5,
        //                     ),
        //                     Text(
        //                       " INR 4,500",
        //                       textAlign: TextAlign.start,
        //                       style: TextStyle(
        //                           fontWeight: FontWeight.w600,
        //                           color: Color(0xff45546E),
        //                           fontSize: 16,
        //                           fontFamily: 'Plus Jakarta Sans'),
        //                     )
        //                   ],
        //                 ),
        //                 Column(
        //                   crossAxisAlignment: CrossAxisAlignment.start,
        //                   children: const [
        //                     Text(
        //                       "Amount Claimed",
        //                       style: TextStyle(color: Color(0xff868686)),
        //                     ),
        //                     SizedBox(
        //                       height: 5,
        //                     ),
        //                     Text(
        //                       "INR 0.00",
        //                       style: TextStyle(
        //                           fontWeight: FontWeight.w600,
        //                           color: Color(0xff45546E),
        //                           fontSize: 16,
        //                           fontFamily: 'Plus Jakarta Sans'),
        //                     )
        //                   ],
        //                 )
        //               ],
        //             ),
        //             Row(
        //               children: [
        //                 Text(
        //                   '-----------------------------------------------------------------------------------------',
        //                   style: TextStyle(color: Colors.grey),
        //                 ),
        //               ],
        //             ),
        //             Wrap(
        //               //crossAxisAlignment: CrossAxisAlignment.start,
        //               spacing: 80,
        //               children: <Widget>[
        //                 Column(
        //                   crossAxisAlignment: CrossAxisAlignment.start,
        //                   children: [
        //                     Column(
        //                       crossAxisAlignment: CrossAxisAlignment.start,
        //                       children: [
        //                         Text(
        //                           "Cost Center",
        //                           style: TextStyle(
        //                               color: Color(0xff868686), fontSize: 14),
        //                         ),
        //                         SizedBox(
        //                           height: 5,
        //                         ),
        //                         Text(
        //                           "CKTXXXKBS",
        //                           textAlign: TextAlign.start,
        //                           style: TextStyle(
        //                               fontWeight: FontWeight.w600,
        //                               color: Color(0xff45546E),
        //                               fontSize: 16,
        //                               fontFamily: 'Plus Jakarta Sans'),
        //                         )
        //                       ],
        //                     ),
        //                     const SizedBox(
        //                       height: 10,
        //                     ),
        //                     Column(
        //                       // mainAxisAlignment: MainAxisAlignment.start,
        //                       crossAxisAlignment: CrossAxisAlignment.start,
        //                       children: const [
        //                         Text(
        //                           "Created By",
        //                           style: TextStyle(color: Color(0xff868686)),
        //                         ),
        //                         SizedBox(
        //                           height: 5,
        //                         ),
        //                         Text(
        //                           "Aswini B",
        //                           style: TextStyle(
        //                               fontWeight: FontWeight.w600,
        //                               color: Color(0xff45546E),
        //                               fontSize: 16,
        //                               fontFamily: 'Plus Jakarta Sans'),
        //                         )
        //                       ],
        //                     ),
        //                     const SizedBox(
        //                       height: 10,
        //                     ),
        //                     Column(
        //                       crossAxisAlignment: CrossAxisAlignment.start,
        //                       children: const [
        //                         Text(
        //                           "Exp-Code",
        //                           style: TextStyle(color: Color(0xff868686)),
        //                         ),
        //                         SizedBox(
        //                           height: 5,
        //                         ),
        //                         Text(
        //                           "INR 4,500",
        //                           textAlign: TextAlign.start,
        //                           style: TextStyle(
        //                               fontWeight: FontWeight.w600,
        //                               color: Color(0xff45546E),
        //                               fontSize: 16,
        //                               fontFamily: 'Plus Jakarta Sans'),
        //                         )
        //                       ],
        //                     ),
        //                   ],
        //                 ),
        //                 Column(
        //                   crossAxisAlignment: CrossAxisAlignment.start,
        //                   children: [
        //                     Column(
        //                       crossAxisAlignment: CrossAxisAlignment.start,
        //                       children: const [
        //                         Text(
        //                           "Department",
        //                           style: TextStyle(color: Color(0xff868686)),
        //                         ),
        //                         SizedBox(
        //                           height: 5,
        //                         ),
        //                         Text(
        //                           "Product Development",
        //                           style: TextStyle(
        //                               fontWeight: FontWeight.w600,
        //                               color: Color(0xff45546E),
        //                               fontSize: 16,
        //                               fontFamily: 'Plus Jakarta Sans'),
        //                         )
        //                       ],
        //                     ),
        //                     const SizedBox(
        //                       height: 10,
        //                     ),
        //                     Column(
        //                       crossAxisAlignment: CrossAxisAlignment.start,
        //                       children: const [
        //                         Text(
        //                           "Days Elapsed",
        //                           style: TextStyle(color: Color(0xff868686)),
        //                         ),
        //                         SizedBox(
        //                           height: 5,
        //                         ),
        //                         Text(
        //                           "2 Days",
        //                           style: TextStyle(
        //                               fontWeight: FontWeight.w600,
        //                               color: Color(0xff45546E),
        //                               fontSize: 16,
        //                               fontFamily: 'Plus Jakarta Sans'),
        //                         )
        //                       ],
        //                     ),
        //                     const SizedBox(
        //                       height: 10,
        //                     ),
        //                     Column(
        //                       crossAxisAlignment: CrossAxisAlignment.start,
        //                       children: [
        //                         const Text(
        //                           "Approvers",
        //                           style: TextStyle(color: Color(0xff868686)),
        //                         ),
        //                         const SizedBox(
        //                           height: 5,
        //                         ),
        //                         Wrap(
        //                           children: [
        //                             ClipRRect(
        //                               borderRadius: BorderRadius.circular(360),
        //                               child: CircleAvatar(
        //                                 radius: 12,
        //                                 child: Image.asset(
        //                                     "assets/images/management1.png"),
        //                               ),
        //                             ),
        //                             ClipRRect(
        //                               borderRadius: BorderRadius.circular(360),
        //                               child: CircleAvatar(
        //                                 radius: 12,
        //                                 child: Image.asset(
        //                                     "assets/images/management2.png"),
        //                               ),
        //                             ),
        //                             ClipRRect(
        //                               borderRadius: BorderRadius.circular(360),
        //                               child: CircleAvatar(
        //                                 radius: 12,
        //                                 child: Image.asset(
        //                                     "assets/images/management3.png"),
        //                               ),
        //                             ),
        //                           ],
        //                         )
        //                       ],
        //                     )
        //                   ],
        //                 )
        //               ],
        //             )
        //           ],
        //         ),
        //       ),
        //       Positioned(
        //           top: 440,
        //           left: 25,
        //           child: Column(
        //             children: [
        //               Row(
        //                 children: [
        //                   Container(
        //                       alignment: Alignment.topLeft,
        //                       width: MediaQuery.of(context).size.width * 0.9,
        //                       child: ExpansionPanelList(
        //                           dividerColor: Colors.transparent,
        //                           elevation: 0,
        //                           expansionCallback:
        //                               (int index, bool isExpanded) {
        //                             setState(() {
        //                               items[index].isExpanded =
        //                                   !items[index].isExpanded;
        //                             });
        //                           },
        //                           children: items.map((ExpansionItem item) {
        //                             return ExpansionPanel(
        //                               canTapOnHeader: true,
        //                               backgroundColor: const Color(0xFFF6F6F6),
        //                               headerBuilder:
        //                                   (context, bool isExpanded) {
        //                                 return Container(
        //                                     //color: Colors.yellow,
        //                                     alignment: Alignment.centerLeft,
        //                                     child: Wrap(
        //                                       spacing: 0,
        //                                       children: [
        //                                         const Icon(
        //                                           Icons.check_circle_sharp,
        //                                           size: 23,
        //                                         ),
        //                                         const SizedBox(
        //                                           width: 10,
        //                                         ),
        //                                         Text(item.header,
        //                                             style: const TextStyle(
        //                                                 fontWeight:
        //                                                     FontWeight.w600,
        //                                                 fontSize: 16,
        //                                                 color:
        //                                                     Color(0xff45546E))),
        //                                       ],
        //                                     ));
        //                               },
        //                               isExpanded: item.isExpanded,
        //                               body: Container(
        //                                   padding: const EdgeInsets.symmetric(
        //                                       horizontal: 20),
        //                                   alignment: Alignment.centerLeft,
        //                                   clipBehavior: Clip.none,
        //                                   width: MediaQuery.of(context)
        //                                           .size
        //                                           .width *
        //                                       0.8,
        //                                   height: MediaQuery.of(context)
        //                                           .size
        //                                           .height *
        //                                       0.1,
        //                                   color: Colors.white,
        //                                   child: Text(
        //                                     item.body,
        //                                     style: const TextStyle(
        //                                         fontWeight: FontWeight.w600),
        //                                   )),
        //                             );
        //                           }).toList()))
        //                 ],
        //               ),
        //             ],
        //           ))
        //     ],
        //   ),
        // ),
        Positioned(
          top: 180,
          left: 0,
          child: CircleAvatar(
            radius: 18,
            backgroundColor: Color.fromARGB(255, 131, 146, 173),
          ),
        ),
        Positioned(
          top: 180,
          right: 0,
          child: CircleAvatar(
            radius: 18,
            backgroundColor: Color.fromARGB(255, 131, 146, 173),
          ),
        ),
      ]),
    );
  }
}

class ExpansionItem {
  ExpansionItem({
    this.isExpanded = false,
    required this.header,
    required this.body,
  });

  final String body;
  final String header;
  bool isExpanded;
}
