import 'package:expense/utilities/style.dart';
import 'package:flutter/material.dart';

class DetailedExpense extends StatefulWidget {
  const DetailedExpense({super.key});

  @override
  State<DetailedExpense> createState() => _DetailedExpenseState();
}

class _DetailedExpenseState extends State<DetailedExpense> {
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
                                Text(
                                  "Download Attachment(s)",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.6,
                                  color: kColor,
                                  child: ListTile(
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
                                  child: ListTile(
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
                                      },
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: kprimary),
                                      child: Text("Download All")),
                                )
                              ],
                            ),
                          ),
                        ));
              },
              icon: Icon(Icons.cloud_download_outlined),
            ),
            SizedBox(
              width: 20,
            )
          ],
          title: Text(
            "Trip expenses - Dinner 18 feb",
            style: TextStyle(fontSize: 14),
          ),
          elevation: 0,
          backgroundColor: Colors.transparent),
      body: Container(
        child: Stack(children: [
          Container(
            decoration: BoxDecoration(
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
              opacity: AlwaysStoppedAnimation(0.5),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.12,
            left: MediaQuery.of(context).size.width * 0.02,
            right: MediaQuery.of(context).size.width * 0.02,
            child: Row(
              // crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  padding: EdgeInsets.symmetric(
                    vertical: 20,
                  ),
                  width: MediaQuery.of(context).size.width * 0.92,
                  height: MediaQuery.of(context).size.height * 0.4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        //padding: EdgeInsets.symmetric(horizontal: 24),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Amount Requested",
                                  style: TextStyle(color: Color(0xff868686)),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  " INR 4,500",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Amount Claimed",
                                  style: TextStyle(color: Color(0xff868686)),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "INR 0.00",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Text(
                        '---------------------------------------------------------------------------------------------',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Container(
                        //padding: EdgeInsets.symmetric(horizontal: 1),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Cost Center",
                                        style:
                                            TextStyle(color: Color(0xff868686)),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "CKTXXXKBS",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                  Column(
                                    // mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
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
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
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
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
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
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
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
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Amount Claimed",
                                        style:
                                            TextStyle(color: Color(0xff868686)),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "INR 0.00",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
              top: 430,
              left: 25,
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                          alignment: Alignment.topLeft,
                          width: MediaQuery.of(context).size.width * 0.9,
                          child: ExpansionPanelList(
                              elevation: 0,
                              expansionCallback: (int index, bool isExpanded) {
                                setState(() {
                                  items[index].IsExpanded =
                                      !items[index].IsExpanded;
                                });
                              },
                              children: items.map((ExpansionItem item) {
                                return ExpansionPanel(
                                  canTapOnHeader: true,
                                  backgroundColor: Color(0xFFF6F6F6),
                                  headerBuilder: (context, bool isExpanded) {
                                    return Container(
                                        alignment: Alignment.centerLeft,
                                        child: Row(
                                          children: [
                                            Icon(Icons.check_circle_sharp),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(item.header,
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 20,
                                                    color: Color(0xff45546E))),
                                          ],
                                        ));
                                  },
                                  isExpanded: item.IsExpanded,
                                  body: Container(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 20),
                                      alignment: Alignment.centerLeft,
                                      clipBehavior: Clip.none,
                                      width: MediaQuery.of(context).size.width *
                                          0.8,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.1,
                                      color: Colors.white,
                                      child: Text(
                                        item.body,
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600),
                                      )),
                                );
                              }).toList()))
                    ],
                  ),
                ],
              ))
        ]),
      ),
    );
  }
}

class ExpansionItem {
  bool IsExpanded;
  final String header;
  final String body;

  ExpansionItem({
    this.IsExpanded = false,
    required this.header,
    required this.body,
  });
}
