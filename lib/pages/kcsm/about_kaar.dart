import 'package:expense/utilities/style.dart';
import 'package:flutter/material.dart';

class AboutKaar extends StatelessWidget {
  const AboutKaar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFF6F6F7),
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: const Text(
            "Cutomer Case Study",
            style: TextStyle(fontSize: 15),
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: SingleChildScrollView(
          //physics: NeverScrollableScrollPhysics(),
          child: Column(
            children: [
              Center(
                  child: Stack(children: [
                Container(
                  alignment: Alignment.topRight,
                  child: Image.asset(
                    "assets/images/landing2.png",
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  alignment: Alignment.topRight,
                  child: Image.asset(
                    "assets/images/landing3.png",
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 90.0),
                    child: SingleChildScrollView(
                      child: Container(
                          decoration: const BoxDecoration(
                              color: Color(0xFFF6F6F7),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20))),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Column(
                              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                ListTile(
                                  title: const Text("About Kaar",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  trailing: Wrap(spacing: 15, children: const [
                                    // Container(
                                    //   padding: EdgeInsets.zero,
                                    //   color: Colors.white,
                                    //   width:
                                    //       MediaQuery.of(context).size.width * 0.5,
                                    //   height: 45,
                                    // ),
                                    Icon(
                                      Icons.share,
                                      color: Colors.black,
                                    ),
                                  ]),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 18.0),
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    child: Stack(
                                      children: [
                                        Image.asset(
                                          "assets/images/aboutkaar1.png",
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 98.0, left: 10),
                                          child: Image.asset(
                                            "assets/images/aboutkaar2.png",
                                            scale: 2.2,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 18.0),
                                  child: Container(
                                      //color: Colors.blue,
                                      child: RichText(
                                          text: const TextSpan(
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontFamily: 'Plus Jakarta Sans'),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: "Our Vision\n\n",
                                          style: TextStyle(
                                              color: Colors.redAccent,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16)),
                                      TextSpan(
                                          text:
                                              'To transform our customer organizations by offering \nbest-in-class SAP services and to become the best\nand largest pure-play SAP Consulting company in the\nworld.'),
                                      TextSpan(
                                          text: "\n\nOur Mission\n\n",
                                          style: TextStyle(
                                              color: Colors.redAccent,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16)),
                                      TextSpan(
                                          text:
                                              'To remain a socially responsible corporate entity, \nwhich will instill a sense of pride, joy and \naccomplishment, in every facet of its interaction, to \neveryone associated, be it the employees, customers, \nvendors or stakeholders.')
                                    ],
                                  ))),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15.0, vertical: 20),
                                  child: Container(
                                    padding: const EdgeInsets.all(26),
                                    decoration: const BoxDecoration(
                                        color: (Colors.white),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))),
                                    width: double.maxFinite,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        RichText(
                                            text: const TextSpan(
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 17),
                                                children: <TextSpan>[
                                              TextSpan(
                                                  text: "SAP Quality\nAwards"),
                                              TextSpan(
                                                  text: "\n16+",
                                                  style: TextStyle(
                                                      color: Colors.redAccent,
                                                      fontWeight:
                                                          FontWeight.bold))
                                            ])),
                                        RichText(
                                            text: const TextSpan(
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 17),
                                                children: <TextSpan>[
                                              TextSpan(
                                                  text: "Business\nAwards"),
                                              TextSpan(
                                                  text: "\n10+",
                                                  style: TextStyle(
                                                      color: Colors.redAccent,
                                                      fontWeight:
                                                          FontWeight.bold))
                                            ])),
                                        RichText(
                                            text: const TextSpan(
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 17),
                                                children: <TextSpan>[
                                              TextSpan(
                                                  text: "Happy\nCustomers"),
                                              TextSpan(
                                                  text: "\n26+",
                                                  style: TextStyle(
                                                      color: Colors.redAccent,
                                                      fontWeight:
                                                          FontWeight.bold))
                                            ])),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 30, vertical: 10),
                                  alignment: Alignment.topLeft,
                                  child: Column(
                                    children: const <Widget>[
                                      Text("Management Team",
                                          style: TextStyle(
                                              color: Colors.redAccent,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16)),
                                    ],
                                  ),
                                ),
                                ListView(
                                  padding: EdgeInsets.zero,
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemExtent: 80,
                                  scrollDirection: Axis.vertical,
                                  shrinkWrap: true,
                                  children: [
                                    ListTile(
                                      leading: Image.asset(
                                        "assets/images/management1.png",
                                      ),
                                      title: const Text("Maran N"),
                                      subtitle: const Text("CEO & FOUNDER"),
                                    ),
                                    ListTile(
                                      leading: Image.asset(
                                          "assets/images/management2.png"),
                                      title: const Text("Ratnakumar N"),
                                      subtitle:
                                          const Text("CO-FOUNDER & DIRECTOR"),
                                    ),
                                    ListTile(
                                      leading: Image.asset(
                                          "assets/images/management3.png"),
                                      title: const Text("Selva M"),
                                      subtitle:
                                          const Text("CO-FOUNDER & DIRECTOR"),
                                    ),
                                    ListTile(
                                      leading: Image.asset(
                                          "assets/images/management4.png"),
                                      title: const Text("Guardian George"),
                                      subtitle:
                                          const Text("CO-FOUNDER & DIRECTOR"),
                                    ),
                                    ListTile(
                                      leading: Image.asset(
                                          "assets/images/management5.png"),
                                      title: const Text("Frans Damen"),
                                      subtitle: const Text("DIRECTOR"),
                                    ),
                                    ListTile(
                                      leading: Image.asset(
                                          "assets/images/management6.png"),
                                      title: const Text("Balakrishnan V"),
                                      subtitle: const Text("DIRECTOR"),
                                    ),
                                  ],
                                )
                                // Container(
                                //   child: Column(
                                //     children: [
                                //       ListTile(
                                //         leading: Image.asset("assets/images/aboutkaar2.png"),
                                //       ),
                                //       ListTile(
                                //         leading: Image.asset("assets/images/aboutkaar2.png"),
                                //       ),
                                //       ListTile(
                                //         leading: Image.asset("assets/images/aboutkaar2.png"),
                                //       )
                                //     ],
                                //   ),
                                ,
                                const SizedBox(
                                  height: 100,
                                )
                              ],
                            ),
                          )),
                    )),
              ])),
              // Container(
              //   margin: EdgeInsets.zero,
              //   alignment: Alignment.bottomCenter,
              //   width: double.maxFinite,
              //   color: Colors.red,
              //   height: 10,
              // )
            ],
          ),
        ));
  }
}

Center _buildContents1() {
  return Center(
      child: SingleChildScrollView(
    child: Container(
      decoration: const BoxDecoration(
          color: Color(0xFFF6F6F7),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const [
                    Text(
                      "     About Kaar",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.share),
                    ),
                    //IconButton(onPressed: () {}, icon: Icon(Icons.filter_list))
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 18.0),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Stack(
                children: [
                  Image.asset(
                    "assets/images/aboutkaar1.png",
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 98.0, left: 10),
                    child: Image.asset(
                      "assets/images/aboutkaar2.png",
                      scale: 2.2,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 18.0),
            child: Container(
                //color: Colors.blue,
                child: RichText(
                    text: const TextSpan(
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: 'Plus Jakarta Sans'),
              children: <TextSpan>[
                TextSpan(
                    text: "Our Vision\n\n",
                    style: TextStyle(
                        color: Colors.redAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 16)),
                TextSpan(
                    text:
                        'To transform our customer organizations by offering \nbest-in-class SAP services and to become the best\nand largest pure-play SAP Consulting company in the\nworld.'),
                TextSpan(
                    text: "\n\nOur Mission\n\n",
                    style: TextStyle(
                        color: Colors.redAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 16)),
                TextSpan(
                    text:
                        'To remain a socially responsible corporate entity, \nwhich will instill a sense of pride, joy and \naccomplishment, in every facet of its interaction, to \neveryone associated, be it the employees, customers, \nvendors or stakeholders.')
              ],
            ))
                // Flexible(
                //   fit: FlexFit.tight,
                //   child: Stack(
                //     children: [
                //       Container(
                //         child: Positioned(
                //             top: 5,
                //             left: 7,
                //             child: Image.asset(
                //               "assets/images/aboutkaar1.png",
                //               scale: 1.6,
                //             )),
                //       ),
                //       Positioned(
                //           top: 120,
                //           left: 13,
                //           child: Image.asset(
                //             "assets/images/aboutkaar2.png",
                //             scale: 2,
                //           )),
                //       Padding(
                //         padding: const EdgeInsets.only(left: 13.0, top: 265),
                //         child: Container(
                //             alignment: Alignment.topLeft,
                //             color: Colors.white,
                //             child: RichText(
                //                 text: TextSpan(
                //                     style: TextStyle(
                //                         color: Colors.black,
                //                         fontSize: 14,
                //                         fontFamily: 'Plus Jakarta Sans'),
                //                     children: <TextSpan>[
                //                   TextSpan(
                //                       text: "Our Vision\n\n",
                //                       style: TextStyle(
                //                           color: Colors.redAccent,
                //                           fontWeight: FontWeight.bold,
                //                           fontSize: 16)),
                //                   TextSpan(
                //                       text:
                //                           'To transform our customer organizations by offering \nbest-in-class SAP services and to become the best\nand largest pure-play SAP Consulting company in the\nworld.'),
                //                   TextSpan(
                //                       text: "\n\nOur Mission\n\n",
                //                       style: TextStyle(
                //                           color: Colors.redAccent,
                //                           fontWeight: FontWeight.bold,
                //                           fontSize: 16)),
                //                   TextSpan(
                //                       text:
                //                           'To remain a socially responsible corporate entity, \nwhich will instill a sense of pride, joy and \naccomplishment, in every facet of its interaction, to \neveryone associated, be it the employees, customers, \nvendors or stakeholders.')
                //                 ]))),
                //       ),
                //       Flexible(
                //         child: Padding(
                //           padding:
                //               const EdgeInsets.only(top: 510.0, left: 30, right: 30),
                //           child: Container(
                //             height: 100,
                //             child: Card(
                //               // decoration: BoxDecoration(color: Colors.white38),
                //               child: Row(
                //                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //                 children: [
                //                   Text('SAP-Quality\n Awards'),
                //                   Text('Business \nAwards'),
                //                   Text("Happy\nCustomers")
                //                 ],
                //               ),
                //             ),
                //           ),
                //         ),
                //       ),
                //       Padding(
                //         padding: const EdgeInsets.only(left: 13.0, top: 600),
                //         child: Container(
                //           alignment: Alignment.topLeft,
                //           color: Colors.white,
                //           child: RichText(
                //               text: const TextSpan(
                //                   style: TextStyle(
                //                       color: Colors.black,
                //                       fontSize: 14,
                //                       fontFamily: 'Plus Jakarta Sans'),
                //                   children: <TextSpan>[
                //                 TextSpan(
                //                     text: "Management Team\n\n",
                //                     style: TextStyle(
                //                         color: Colors.redAccent,
                //                         fontWeight: FontWeight.bold,
                //                         fontSize: 16)),
                //               ])),
                //         ),
                //       ),

                //       // Padding(
                //       //   padding: const EdgeInsets.only(top: 640.0),
                //       //   child: Container(

                //       //       // color: Colors.yellow,
                //       //       child: Column(
                //       //     children: [
                //       //       ListTile(
                //       //         leading: Icon(Icons.circle),
                //       //         title: Text("Kaar"),
                //       //       )
                //       //     ],
                //       //   )),
                //       // )
                //     ],
                //   ),
                // ),
                ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
            child: Container(
              padding: const EdgeInsets.all(26),
              decoration: const BoxDecoration(
                  color: (Colors.white),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              width: double.maxFinite,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RichText(
                      text: const TextSpan(
                          style: TextStyle(color: Colors.black, fontSize: 17),
                          children: <TextSpan>[
                        TextSpan(text: "SAP Quality\nAwards"),
                        TextSpan(
                            text: "\n16+",
                            style: TextStyle(
                                color: Colors.redAccent,
                                fontWeight: FontWeight.bold))
                      ])),
                  RichText(
                      text: const TextSpan(
                          style: TextStyle(color: Colors.black, fontSize: 17),
                          children: <TextSpan>[
                        TextSpan(text: "Business\nAwards"),
                        TextSpan(
                            text: "\n10+",
                            style: TextStyle(
                                color: Colors.redAccent,
                                fontWeight: FontWeight.bold))
                      ])),
                  RichText(
                      text: const TextSpan(
                          style: TextStyle(color: Colors.black, fontSize: 17),
                          children: <TextSpan>[
                        TextSpan(text: "Happy\nCustomers"),
                        TextSpan(
                            text: "\n26+",
                            style: TextStyle(
                                color: Colors.redAccent,
                                fontWeight: FontWeight.bold))
                      ])),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            alignment: Alignment.topLeft,
            child: Column(
              children: const [
                Text("Management Team",
                    style: TextStyle(
                        color: Colors.redAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 16)),
              ],
            ),
          ),
          ListView(
            physics: const NeverScrollableScrollPhysics(),
            itemExtent: 80,
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            children: [
              ListTile(
                leading: Image.asset(
                  "assets/images/management1.png",
                ),
                title: const Text("Maran N"),
                subtitle: const Text("CEO & FOUNDER"),
              ),
              ListTile(
                leading: Image.asset("assets/images/management2.png"),
                title: const Text("Ratnakumar N"),
                subtitle: const Text("CO-FOUNDER & DIRECTOR"),
              ),
              ListTile(
                leading: Image.asset("assets/images/management3.png"),
                title: const Text("Selva M"),
                subtitle: const Text("CO-FOUNDER & DIRECTOR"),
              ),
              ListTile(
                leading: Image.asset("assets/images/management4.png"),
                title: const Text("Guardian George"),
                subtitle: const Text("CO-FOUNDER & DIRECTOR"),
              ),
              ListTile(
                leading: Image.asset("assets/images/management5.png"),
                title: const Text("Frans Damen"),
                subtitle: const Text("DIRECTOR"),
              ),
              ListTile(
                leading: Image.asset("assets/images/management6.png"),
                title: const Text("Balakrishnan V"),
                subtitle: const Text("DIRECTOR"),
              ),
            ],
          )
          // Container(
          //   child: Column(
          //     children: [
          //       ListTile(
          //         leading: Image.asset("assets/images/aboutkaar2.png"),
          //       ),
          //       ListTile(
          //         leading: Image.asset("assets/images/aboutkaar2.png"),
          //       ),
          //       ListTile(
          //         leading: Image.asset("assets/images/aboutkaar2.png"),
          //       )
          //     ],
          //   ),
          ,
          const SizedBox(
            height: 120,
          )
        ],
      ),
    ),
  ));
}
