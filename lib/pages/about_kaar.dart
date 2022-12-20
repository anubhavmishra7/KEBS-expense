import 'package:flutter/material.dart';

class AboutKaar extends StatelessWidget {
  const AboutKaar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: Container(
      //   width: MediaQuery.of(context).size.width,
      //   child: FloatingActionButton(
      //       onPressed: () {}, child: Image.asset("assets/images/bottom4.png")),
      // ),
      backgroundColor: Color(0xFFEE4961),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back),
            ),
            title: const Text("Customer Case Study"),
            backgroundColor: Colors.redAccent,
            expandedHeight: 50,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: SafeArea(
                child: Stack(
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
                //      Stack(
                //   children: [
                //     Positioned(
                //         //height: MediaQuery.of(context).size.height,
                //         width: MediaQuery.of(context).size.width,
                //         child: Container(
                //             child: Image.asset('assets/images/landing2.png'))),
                //     Positioned(
                //         //height: MediaQuery.of(context).size.height,
                //         //width: MediaQuery.of(context).size.width,
                //         child: Container(
                //       width: double.maxFinite,
                //       child: Image.asset(
                //         'assets/images/landing3.png',
                //         fit: BoxFit.fitWidth,
                //       ),
                //     ))
                //   ],
                // )
              ),
            ),
          ),
          SliverFillRemaining(
            child: _buildContents1(),
          )
        ],
      ),
    );
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
                  children: [
                    const Text(
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
              children: [
                const Text("Management Team",
                    style: TextStyle(
                        color: Colors.redAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 16)),
              ],
            ),
          ),
          ListView(
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
            height: 30,
          )
        ],
      ),
    ),
  ));
}
