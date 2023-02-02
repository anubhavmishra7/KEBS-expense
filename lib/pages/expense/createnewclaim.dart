import 'package:camera/camera.dart';
import 'package:expense/models/expense/claimtypemodel.dart';
import 'package:expense/pages/expense/new_claim_created.dart';
import 'package:expense/screens/camera_image.dart';
import 'package:expense/utilities/style.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

class CreateNewClaim extends StatefulWidget {
  const CreateNewClaim({Key? key}) : super(key: key);

  @override
  State<CreateNewClaim> createState() => _CreateNewClaimState();
}

class Claimtype {
  final String type;
  final IconData icon;
  Claimtype({required this.type, required this.icon});

  static List<DynamicWidget> listDynamic = [];
}

List<Claimtype> claimtype = <Claimtype>[
  Claimtype(type: "Food & Beverages", icon: Icons.room_service),
  Claimtype(type: "Accomodation", icon: Icons.hotel),
  Claimtype(type: "Subscription", icon: Icons.money),
  Claimtype(type: "Building Maintenance", icon: Icons.handyman),
  Claimtype(type: "House Keeping", icon: Icons.workspace_premium),
  Claimtype(type: "Internet Charges", icon: Icons.dangerous),
  Claimtype(type: "Travelling Conveyance", icon: Icons.airplane_ticket),
  // Claimtype(type: "IInsurance Expenses", icon: Icons.airplane_ticket),
  Claimtype(type: "IInsurance Expenses", icon: Icons.health_and_safety)
];

class _CreateNewClaimState extends State<CreateNewClaim> {
  final _formKey = GlobalKey<FormState>();

  final costCenterList = [
    "KEBS India",
    "KEBS India(WH)",
    "KEBS Qatar",
    "KEBS Oman",
    "KEBS Bahrain",
    "KEBS Managed Services",
    "KEBS Managed Services"
  ];

  // final claimTypeList = [
  //   "Food & Beverages",
  //   "Accomodation",
  //   "Subscription",
  //   "Building Maintenance",
  //   "Certifications",
  //   "House Keeping",
  //   "Internet Charges",
  //   "Travelling Conveyance",
  //   "Insurance Expences"
  // ];

  final currencyTypeList = ["INR", "USD", "KD", "AED", "SAR"];

  TextEditingController date = TextEditingController();
  TextEditingController costcenter = TextEditingController();
  TextEditingController attachment = TextEditingController();

  // static List<DynamicWidget> listDynamic = [];

  var currency = "";

  addDynamic() {
    Claimtype.listDynamic
        .add(DynamicWidget(dynamicid: Claimtype.listDynamic.length));
    setState(() {
      addDynamic;
    });
  }

  removeDynamic() {
    setState(() {
      if (Claimtype.listDynamic.isNotEmpty) {
        Claimtype.listDynamic.removeLast();
      }
    });
  }

  bool isLoading = true;

  costCenterDropdown() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            height: MediaQuery.of(context).size.height * 0.5,
            child: ListView.separated(
              separatorBuilder: (context, index) {
                return const Divider(
                  thickness: 1,
                );
              },
              itemCount: costCenterList.length,
              itemBuilder: ((context, index) {
                return GestureDetector(
                    onTap: () {
                      setState(() {
                        costcenter.text = costCenterList[index];
                      });

                      Navigator.pop(context);
                    },
                    child: ListTile(
                      title: Text(costCenterList[index]),
                    ));
              }),
            ),
          );
        });
  }

  DateTime today = DateTime.now();

  // void _onDaySelected(DateTime days, DateTime focusedDay) {
  //   setState(() {
  //     today = days;
  //   });
  // }

  Future<DateTime?> datepick() async {
    await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1999),
        lastDate: DateTime(2100));
    return null;
  }

//   // Future<void> camera() async {
//   //   final cameras = await availableCameras();

//   //   final firstCamera = cameras.first;
//   // }
  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    isLoading = false;
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: Text(
            "Expenses",
            style: TextStyle(
              fontSize: 14,
              fontFamily: kfontFamily,
            ),
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: Center(
          child: Stack(children: [
            Container(
              alignment: Alignment.topRight,
              child: Image.asset("assets/images/landing2.png"),
            ),
            Container(
              alignment: Alignment.topRight,
              child: Image.asset("assets/images/landing3.png"),
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
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ListTile(
                                title: Text("Create New Claim Request",
                                    style: TextStyle(
                                        fontFamily: kfontFamily,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600)),
                                // trailing: Wrap(spacing: 10, children: [
                                //   Icon(
                                //     Icons.search,
                                //     color: Colors.black,
                                //   ),
                                //   Icon(
                                //     Icons.filter_list,
                                //     color: Colors.black,
                                //   )
                                // ]
                                // ),
                              ),
                              SingleChildScrollView(
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 6, horizontal: 16),
                                  child: Form(
                                      key: _formKey,
                                      child: Column(
                                        children: <Widget>[
                                          Container(
                                            decoration: const BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(8))),
                                            padding: const EdgeInsets.all(24),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Legal Entity\n",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    fontFamily: kfontFamily,
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 60,
                                                  child: Card(
                                                    elevation: 0,
                                                    child: TextFormField(
                                                      enabled: true,
                                                      readOnly: true,
                                                      // validator: (msg) {
                                                      //   if (msg!.isEmpty) {
                                                      //     return "Enter Name";
                                                      //   }
                                                      //   return null;
                                                      // },
                                                      decoration:
                                                          InputDecoration(
                                                              enabledBorder: OutlineInputBorder(
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                          8),
                                                                  borderSide: const BorderSide(
                                                                      color: Color(
                                                                          0xffB9C0CA))),
                                                              focusedBorder: OutlineInputBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8),
                                                                  borderSide: const BorderSide(
                                                                      color: Colors
                                                                          .black)),
                                                              border:
                                                                  OutlineInputBorder(
                                                                      borderSide:
                                                                          const BorderSide(
                                                                        color: Colors
                                                                            .black,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius
                                                                              .circular(
                                                                                  8)),
                                                              hintText:
                                                                  "Kaar Technologies India Pvt Ltd",
                                                              hintStyle: TextStyle(
                                                                  fontFamily:
                                                                      kfontFamily),
                                                              labelText:
                                                                  "Kaar Technologies India Pvt Ltd",
                                                              labelStyle: TextStyle(
                                                                  fontFamily:
                                                                      kfontFamily),
                                                              floatingLabelBehavior:
                                                                  FloatingLabelBehavior
                                                                      .never),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 12.0),
                                                  child: Text(
                                                    "Cost Center *\n",
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontFamily: kfontFamily,
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 60,
                                                  child: Card(
                                                    elevation: 0,
                                                    child: TextFormField(
                                                      // validator: (text) {
                                                      //   if (text == null ||
                                                      //       text.isEmpty) {
                                                      //     return "Cost Center is required";
                                                      //   }
                                                      // },
                                                      controller: costcenter,
                                                      readOnly: true,
                                                      onTap: () {
                                                        costCenterDropdown();
                                                      },
                                                      decoration:
                                                          InputDecoration(
                                                              enabledBorder: OutlineInputBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8),
                                                                  borderSide: const BorderSide(
                                                                      color: Color(
                                                                          0xffB9C0CA))),
                                                              suffixIcon:
                                                                  const Icon(
                                                                Icons.search,
                                                                color: Color(
                                                                    0xffB9C0CA),
                                                              ),
                                                              floatingLabelBehavior:
                                                                  FloatingLabelBehavior
                                                                      .never,
                                                              hintText:
                                                                  "Select One",
                                                              hintStyle:
                                                                  TextStyle(
                                                                color: const Color(
                                                                    0xff868686),
                                                                fontFamily:
                                                                    kfontFamily,
                                                              ),
                                                              labelText:
                                                                  "Select One",
                                                              labelStyle:
                                                                  TextStyle(
                                                                color: const Color(
                                                                    0xff868686),
                                                                fontFamily:
                                                                    kfontFamily,
                                                              ),
                                                              border: OutlineInputBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8))),
                                                    ),
                                                  ),

                                                  // child: DropdownButtonFormField(
                                                  //     hint: Text("Select One"),
                                                  //     icon: Icon(Icons.search),
                                                  //     decoration: InputDecoration(
                                                  //         border: OutlineInputBorder(
                                                  //             borderRadius:
                                                  //                 BorderRadius.circular(10))),
                                                  //     items: costCenterList
                                                  //         .map((e) => DropdownMenuItem(
                                                  //             child: Text(e), value: e))
                                                  //         .toList(),
                                                  //     onChanged: (val) {}),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      vertical: 14.0),
                                                  child: Row(
                                                    children: [
                                                      const Text(
                                                        "Approvers:    ",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600),
                                                      ),
                                                      Visibility(
                                                        visible:
                                                            currency == "INR",
                                                        child: Row(
                                                          children: [
                                                            ClipRRect(
                                                              child: ClipOval(
                                                                child:
                                                                    Image.asset(
                                                                  "assets/images/management1.png",
                                                                  height: 25,
                                                                ),
                                                              ),
                                                            ),
                                                            ClipRRect(
                                                              child: ClipOval(
                                                                clipBehavior:
                                                                    Clip.hardEdge,
                                                                child:
                                                                    Image.asset(
                                                                  "assets/images/management2.png",
                                                                  height: 25,
                                                                ),
                                                              ),
                                                            ),
                                                            ClipRRect(
                                                              child: ClipOval(
                                                                clipBehavior:
                                                                    Clip.hardEdge,
                                                                child:
                                                                    Image.asset(
                                                                  "assets/images/management3.png",
                                                                  height: 25,
                                                                ),
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 18.0),
                                            child: Container(
                                                decoration: const BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                8))),
                                                padding:
                                                    const EdgeInsets.all(24),
                                                child: Column(
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          "Claim Type *\n",
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontFamily:
                                                                kfontFamily,
                                                          ),
                                                        ),
                                                        Container(
                                                          height: 57,
                                                          child:
                                                              DropdownButtonFormField(
                                                            isExpanded: true,
                                                            decoration: InputDecoration(
                                                                enabledBorder: OutlineInputBorder(
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .circular(
                                                                                8),
                                                                    borderSide: const BorderSide(
                                                                        color: Color(
                                                                            0xffB9C0CA))),
                                                                border: OutlineInputBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8))),
                                                            hint: Text(
                                                              "Select One",
                                                              style: TextStyle(
                                                                  fontFamily:
                                                                      kfontFamily,
                                                                  color: const Color(
                                                                      0xff868686)),
                                                            ),
                                                            items: claimtype
                                                                .map((e1) =>
                                                                    DropdownMenuItem(
                                                                      value: e1,
                                                                      child:
                                                                          Container(
                                                                        child:
                                                                            Wrap(
                                                                          spacing:
                                                                              15,
                                                                          children: [
                                                                            Icon(e1.icon),
                                                                            // Icon(icontypes.map((e) => Icon(e)).toList()),
                                                                            //Icon(),
                                                                            // Container(child: _icontypes.map((e) => Icon(e)).toList(),),
                                                                            Text(e1.type),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ))
                                                                .toList(),
                                                            onChanged:
                                                                (val1) {},
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .symmetric(
                                                                  vertical:
                                                                      12.0),
                                                          child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                "Description *\n",
                                                                style:
                                                                    TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontFamily:
                                                                      kfontFamily,
                                                                ),
                                                              ),
                                                              TextFormField(
                                                                validator:
                                                                    (description) {
                                                                  if (description ==
                                                                          null ||
                                                                      description
                                                                          .isEmpty) {
                                                                    return "Description is required";
                                                                  } else {
                                                                    return null;
                                                                  }
                                                                },
                                                                onTap: (() {}),
                                                                minLines: 3,
                                                                maxLines: 5,
                                                                decoration:
                                                                    InputDecoration(
                                                                  enabledBorder: OutlineInputBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8),
                                                                      borderSide:
                                                                          const BorderSide(
                                                                              color: Color(0xffB9C0CA))),
                                                                  hintText:
                                                                      "Enter Here",
                                                                  hintStyle:
                                                                      const TextStyle(
                                                                          color:
                                                                              Color(0xff868686)),
                                                                  border: OutlineInputBorder(
                                                                      borderSide: const BorderSide(
                                                                          color: Colors
                                                                              .black,
                                                                          style: BorderStyle
                                                                              .solid),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              10)),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .symmetric(
                                                                  vertical:
                                                                      10.0),
                                                          child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                "Amount *\n",
                                                                style:
                                                                    TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontFamily:
                                                                      kfontFamily,
                                                                ),
                                                              ),
                                                              Wrap(
                                                                spacing: 0,
                                                                children: [
                                                                  Container(
                                                                    width: 99,
                                                                    height: 60,
                                                                    child:
                                                                        TextFormField(
                                                                      onTap:
                                                                          () {
                                                                        showDialog(
                                                                            useSafeArea:
                                                                                true,
                                                                            context:
                                                                                context,
                                                                            builder: (context) =>
                                                                                Dialog(
                                                                                  child: Container(
                                                                                    // decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(8))),
                                                                                    // width: MediaQuery.of(context).size.width * 0.3,
                                                                                    //height: MediaQuery.of(context).size.height * 0.5,
                                                                                    child: Container(
                                                                                      padding: const EdgeInsets.symmetric(horizontal: 24),
                                                                                      child: ListView.separated(
                                                                                          shrinkWrap: true,
                                                                                          itemBuilder: (context, index) {
                                                                                            return ListTile(
                                                                                              onTap: () {
                                                                                                setState(() {
                                                                                                  currency = currencyTypeList[index];
                                                                                                  Navigator.pop(context);
                                                                                                });
                                                                                              },
                                                                                              title: Text(currencyTypeList[index]),
                                                                                            );
                                                                                          },
                                                                                          separatorBuilder: (context, index) {
                                                                                            return const Divider(
                                                                                              thickness: 1,
                                                                                            );
                                                                                          },
                                                                                          itemCount: currencyTypeList.length),
                                                                                    ),
                                                                                  ),
                                                                                ));
                                                                      },
                                                                      readOnly:
                                                                          true,
                                                                      decoration: InputDecoration(
                                                                          focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.black), borderRadius: BorderRadius.only(topLeft: Radius.circular(8), bottomLeft: Radius.circular(8))),
                                                                          suffixIcon: const Icon(
                                                                            Icons.arrow_drop_down,
                                                                            color:
                                                                                Colors.black,
                                                                          ),
                                                                          floatingLabelBehavior: FloatingLabelBehavior.never,
                                                                          hintText: currency,
                                                                          hintStyle: TextStyle(color: Colors.black, fontFamily: kfontFamily, fontSize: 14),
                                                                          labelText: "INR",
                                                                          labelStyle: TextStyle(color: const Color(0xff868686), fontFamily: kfontFamily, fontSize: 14),
                                                                          enabledBorder: const OutlineInputBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(8), bottomLeft: Radius.circular(8)), borderSide: BorderSide(color: Color(0xffB9C0CA))),
                                                                          border: const OutlineInputBorder(borderSide: BorderSide(), borderRadius: BorderRadius.only(topLeft: Radius.circular(8), bottomLeft: Radius.circular(8)))),
                                                                    ),
                                                                  ),
                                                                  // Container(
                                                                  //   width: 70,
                                                                  //   child: DropdownButtonFormField(
                                                                  //     value: currencyTypeList[0],
                                                                  //     items: currencyTypeList.map((e1) {
                                                                  //       return DropdownMenuItem(
                                                                  //         child: Text(e1),
                                                                  //         value: e1,
                                                                  //       );
                                                                  //     }).toList(),
                                                                  //     onChanged: (country) {
                                                                  //       print("You selected: $country");
                                                                  //     },
                                                                  //   ),
                                                                  // ),
                                                                  Container(
                                                                    height: 60,
                                                                    width: MediaQuery.of(context)
                                                                            .size
                                                                            .width *
                                                                        0.54,
                                                                    child:
                                                                        TextFormField(
                                                                      // validator:
                                                                      //     (amount) {
                                                                      //   if (amount ==
                                                                      //           null ||
                                                                      //       amount.isEmpty) {
                                                                      //     return "Enter the Amount";
                                                                      //   } else {
                                                                      //     return null;
                                                                      //   }
                                                                      // },
                                                                      keyboardType:
                                                                          TextInputType
                                                                              .number,
                                                                      decoration: InputDecoration(
                                                                          enabledBorder: const OutlineInputBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(8), bottomRight: Radius.circular(8)), borderSide: BorderSide(color: Color(0xffB9C0CA))),
                                                                          // focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.black), borderRadius: BorderRadius.only(topRight: Radius.circular(8), bottomRight: Radius.circular(8))),
                                                                          border: const OutlineInputBorder(borderSide: BorderSide(color: Colors.black, style: BorderStyle.solid), borderRadius: BorderRadius.only(topRight: Radius.circular(8), bottomRight: Radius.circular(8))),
                                                                          hintText: "",
                                                                          labelText: "Enter Amount Here",
                                                                          labelStyle: TextStyle(color: const Color(0xff868686), fontFamily: kfontFamily),
                                                                          floatingLabelBehavior: FloatingLabelBehavior.never),
                                                                    ),
                                                                  ),

                                                                  // DropdownButtonFormField(
                                                                  //     items: currencyTypeList
                                                                  //         .map((e2) => DropdownMenuItem(
                                                                  //               child: Text(e2),
                                                                  //               value: e2,
                                                                  //             ))
                                                                  //         .toList(),
                                                                  //     onChanged: ((e2) {})),
                                                                ],
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .symmetric(
                                                                  vertical:
                                                                      12.0),
                                                          child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                "Billed Date *\n",
                                                                style:
                                                                    TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontFamily:
                                                                      kfontFamily,
                                                                ),
                                                              ),
                                                              Container(
                                                                height: 60,
                                                                child:
                                                                    TextFormField(
                                                                  // validator:
                                                                  //     (date) {
                                                                  //   if (date ==
                                                                  //           null ||
                                                                  //       date.isEmpty) {
                                                                  //     return "Enter the Date";
                                                                  //   }
                                                                  //   return null;
                                                                  // },
                                                                  controller:
                                                                      date,
                                                                  readOnly:
                                                                      true,

                                                                  // onTap: (() {
                                                                  //   showDialog(
                                                                  //       useSafeArea:
                                                                  //           true,
                                                                  //       context:
                                                                  //           context,
                                                                  //       builder:
                                                                  //           (context) =>
                                                                  //               Dialog(
                                                                  //                 child:
                                                                  //                     Container(
                                                                  //                   height: MediaQuery.of(context).size.height * 0.45,
                                                                  //                   //width: MediaQuery.of(context).size.width * 1.0,
                                                                  //                   child: Container(
                                                                  //                     //  height: MediaQuery.of(context).size.height * 0.7,
                                                                  //                     color: kColor,
                                                                  //                     child: TableCalendar(
                                                                  //                       availableGestures: AvailableGestures.all,
                                                                  //                       rowHeight: 42,
                                                                  //                       focusedDay: today,
                                                                  //                       selectedDayPredicate: (days) => isSameDay(days, today),
                                                                  //                       headerStyle: HeaderStyle(titleCentered: true, formatButtonVisible: false),
                                                                  //                       firstDay: DateTime.utc(2010, 10, 16),
                                                                  //                       lastDay: DateTime.utc(2030, 10, 15),
                                                                  //                       onDaySelected: _onDaySelected,
                                                                  //                     ),
                                                                  //                   ),
                                                                  //                 ),
                                                                  //               ));

                                                                  //   setState(() {
                                                                  //     if (datepick !=
                                                                  //         null) {
                                                                  //       date.text = DateFormat(
                                                                  //               'dd-MM-yyyy')
                                                                  //           .format(
                                                                  //               datepick);
                                                                  //     }
                                                                  //   });
                                                                  // },
                                                                  // Dialog(
                                                                  //     child:
                                                                  //         Container(
                                                                  //   child: TableCalendar(
                                                                  //       focusedDay:
                                                                  //           today,
                                                                  //       firstDay:
                                                                  //           DateTime.utc(
                                                                  //               2010,
                                                                  //               10,
                                                                  //               16),
                                                                  //       lastDay:
                                                                  //           DateTime.utc(
                                                                  //               2030,
                                                                  //               10,
                                                                  //               15)),
                                                                  // ));
                                                                  //}),
                                                                  onTap:
                                                                      () async {
                                                                    DateTime? datepick = await showDatePicker(
                                                                        helpText: "",
                                                                        builder: (context, child) {
                                                                          return Theme(
                                                                            child:
                                                                                child!,
                                                                            data: ThemeData().copyWith(

                                                                                // backgroundColor: Colors.white,
                                                                                colorScheme: const ColorScheme.dark(onPrimary: Colors.black, onSurface: Colors.black, surface: Colors.white)),
                                                                          );
                                                                        },
                                                                        context: context,
                                                                        initialDate: DateTime.now(),
                                                                        firstDate: DateTime(1999),
                                                                        lastDate: DateTime(2100));

                                                                    setState(
                                                                        () {
                                                                      if (datepick !=
                                                                          null) {
                                                                        date.text =
                                                                            DateFormat('dd.MM.yyyy').format(datepick);
                                                                      }
                                                                    });
                                                                  },
                                                                  decoration: InputDecoration(
                                                                      focusedBorder: const OutlineInputBorder(
                                                                          borderSide: BorderSide(
                                                                              color: Colors
                                                                                  .black),
                                                                          borderRadius: BorderRadius.all(Radius.circular(
                                                                              8))),
                                                                      suffixIcon:
                                                                          const Icon(Icons
                                                                              .calendar_month_outlined),
                                                                      enabledBorder: OutlineInputBorder(
                                                                          borderRadius: BorderRadius.circular(
                                                                              8),
                                                                          borderSide: const BorderSide(
                                                                              color: Color(
                                                                                  0xffB9C0CA))),
                                                                      border:
                                                                          OutlineInputBorder(borderSide: const BorderSide(color: Colors.black, style: BorderStyle.solid), borderRadius: BorderRadius.circular(10)),
                                                                      hintText: "",
                                                                      labelText: "DD MM YYYY",
                                                                      labelStyle: TextStyle(fontFamily: kfontFamily, color: const Color(0xff868686)),
                                                                      floatingLabelBehavior: FloatingLabelBehavior.never),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  top: 10.0),
                                                          child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                "Attachments If Any\n",
                                                                style:
                                                                    TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontFamily:
                                                                      kfontFamily,
                                                                ),
                                                              ),
                                                              TextFormField(
                                                                controller:
                                                                    attachment,
                                                                readOnly: true,
                                                                onTap:
                                                                    () async {
                                                                  showModalBottomSheet(
                                                                      context:
                                                                          context,
                                                                      builder:
                                                                          (context) =>
                                                                              SizedBox(
                                                                                height: MediaQuery.of(context).size.height * 0.25,
                                                                                child: Center(
                                                                                  child: Column(
                                                                                    children: [
                                                                                      const Padding(
                                                                                        padding: EdgeInsets.only(top: 24.0),
                                                                                        child: Text(
                                                                                          "Upload  Attachment",
                                                                                          style: TextStyle(color: Color(0xff45546E), fontSize: 14, fontWeight: FontWeight.w700),
                                                                                        ),
                                                                                      ),
                                                                                      Container(
                                                                                        decoration: const BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(10))),
                                                                                        padding: const EdgeInsets.only(top: 25),
                                                                                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                                                                                          Column(
                                                                                            children: [
                                                                                              Container(
                                                                                                height: 80,
                                                                                                width: 80,
                                                                                                decoration: BoxDecoration(border: Border.all(color: const Color(0xffB9C0CA)), color: Colors.white, borderRadius: BorderRadius.circular(360)),

                                                                                                // radius: 40,
                                                                                                // backgroundColor: Colors.white,
                                                                                                // Theme.of(context)
                                                                                                //     .backgroundColor,
                                                                                                child: const ClipOval(child: ImageIcon(AssetImage("assets/icons/add_a_photo.png"))),
                                                                                              ),
                                                                                              const SizedBox(
                                                                                                height: 8,
                                                                                              ),
                                                                                              const Text(
                                                                                                "Take photo",
                                                                                                style: TextStyle(color: Color(0xff45546E)),
                                                                                              )
                                                                                            ],
                                                                                          ),

                                                                                          Column(
                                                                                            children: [
                                                                                              Container(
                                                                                                height: 80,
                                                                                                width: 80,
                                                                                                decoration: BoxDecoration(border: Border.all(color: const Color(0xffB9C0CA)), color: Colors.white, borderRadius: BorderRadius.circular(360)),

                                                                                                // radius: 40,
                                                                                                // backgroundColor: Colors.white,
                                                                                                // Theme.of(context)
                                                                                                //     .backgroundColor,
                                                                                                child: GestureDetector(
                                                                                                  onTap: () async {
                                                                                                    WidgetsFlutterBinding.ensureInitialized();
                                                                                                    final cameras = await availableCameras();
                                                                                                    final firstCamera = cameras.first;
                                                                                                    Navigator.push(context, MaterialPageRoute(builder: (context) => CameraImages(camera: firstCamera)));
                                                                                                  },
                                                                                                  child: const ClipOval(
                                                                                                      child: ImageIcon(
                                                                                                    AssetImage("assets/icons/add_photo_alternate.png"),
                                                                                                  )),
                                                                                                ),
                                                                                              ),
                                                                                              const SizedBox(
                                                                                                height: 8,
                                                                                              ),
                                                                                              const Text("Photo Library", style: TextStyle(color: Color(0xff45546E)))
                                                                                            ],
                                                                                          ),

                                                                                          Column(
                                                                                            children: [
                                                                                              Container(
                                                                                                height: 80,
                                                                                                width: 80,
                                                                                                decoration: BoxDecoration(border: Border.all(color: const Color(0xffB9C0CA)), color: Colors.white, borderRadius: BorderRadius.circular(360)),

                                                                                                // radius: 40,
                                                                                                // backgroundColor: Colors.white,
                                                                                                // Theme.of(context)
                                                                                                //     .backgroundColor,
                                                                                                child: const ClipOval(child: ImageIcon(AssetImage("assets/icons/folder.png"))),
                                                                                              ),
                                                                                              const SizedBox(
                                                                                                height: 8,
                                                                                              ),
                                                                                              const Text("Choose File", style: TextStyle(fontWeight: FontWeight.w500, color: Color(0xff45546E)))
                                                                                            ],
                                                                                          ),

                                                                                          // Column(
                                                                                          //   children: [
                                                                                          //     CircleAvatar(
                                                                                          //       radius: 40,
                                                                                          //       backgroundColor: kColor,
                                                                                          //       // Theme.of(context)
                                                                                          //       //     .backgroundColor,
                                                                                          //       child: ClipOval(
                                                                                          //           child: IconButton(
                                                                                          //         onPressed: () async {
                                                                                          //           WidgetsFlutterBinding.ensureInitialized();
                                                                                          //           final cameras = await availableCameras();
                                                                                          //           final firstCamera = cameras.first;
                                                                                          //           Navigator.push(context, MaterialPageRoute(builder: (context) => CameraImages(camera: firstCamera)));
                                                                                          //         },
                                                                                          //         icon: const Icon(Icons.folder),
                                                                                          //         color: Colors.black,
                                                                                          //       )),
                                                                                          //     ),
                                                                                          //     const Text("Photo Library")
                                                                                          //   ],
                                                                                          // ),

                                                                                          //   Column(
                                                                                          //     children: [
                                                                                          //       CircleAvatar(
                                                                                          //         radius: 40,
                                                                                          //         backgroundColor: kColor,
                                                                                          //         // Theme.of(context)
                                                                                          //         //     .backgroundColor,
                                                                                          //         child: const ClipOval(
                                                                                          //             child: Icon(
                                                                                          //           Icons.add_photo_alternate,
                                                                                          //           color: Colors.black,
                                                                                          //         )),
                                                                                          //       ),
                                                                                          //       const Text("Choose File")
                                                                                          //     ],
                                                                                          //   ),
                                                                                          // ],
                                                                                        ]),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ));

                                                                  attachment
                                                                          .text =
                                                                      ("Uploading")
                                                                          .toString();
                                                                  // WidgetsFlutterBinding.ensureInitialized();
                                                                  // final cameras = await availableCameras();
                                                                  // final firstCamera = cameras.first;
                                                                  // Navigator.push(
                                                                  //     context,
                                                                  //     MaterialPageRoute(
                                                                  //         builder: (context) =>
                                                                  //             CameraImages(
                                                                  //                 camera: firstCamera)));
                                                                },
                                                                decoration:
                                                                    InputDecoration(
                                                                        focusedBorder: const OutlineInputBorder(
                                                                            borderSide: BorderSide(
                                                                                color: Colors
                                                                                    .black),
                                                                            borderRadius: BorderRadius.all(Radius.circular(
                                                                                8))),
                                                                        prefixIcon:
                                                                            const Icon(
                                                                          Icons
                                                                              .attachment,
                                                                          color:
                                                                              Color(0xff868686),
                                                                        ),
                                                                        enabledBorder: OutlineInputBorder(
                                                                            borderRadius: BorderRadius.circular(
                                                                                8),
                                                                            borderSide: const BorderSide(
                                                                                color: Color(
                                                                                    0xffB9C0CA))),
                                                                        border: OutlineInputBorder(
                                                                            borderSide:
                                                                                const BorderSide(color: Colors.black, style: BorderStyle.solid),
                                                                            borderRadius: BorderRadius.circular(10)),
                                                                        labelText: "Tap To Add Attachment",
                                                                        labelStyle: TextStyle(
                                                                          color:
                                                                              const Color(0xff868686),
                                                                          fontFamily:
                                                                              kfontFamily,
                                                                        ),
                                                                        floatingLabelBehavior: FloatingLabelBehavior.never),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    )
                                                  ],
                                                )),
                                          ),
                                        ],
                                      )),
                                ),
                              ),
                              ListView.builder(
                                  padding: EdgeInsets.zero,
                                  physics: const NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: Claimtype.listDynamic.length,
                                  itemBuilder: (_, index) =>
                                      Claimtype.listDynamic[index]),
                              Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    TextButton(
                                        onPressed: () {
                                          addDynamic();
                                        },
                                        child: Text(
                                          "+ Add Another Claim",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontFamily: kfontFamily,
                                              color: Colors.black),
                                        )),
                                    Visibility(
                                      visible: Claimtype.listDynamic.isNotEmpty,
                                      child: IconButton(
                                          // style: TextButton.styleFrom(
                                          //     backgroundColor: kprimary),
                                          onPressed: () {
                                            removeDynamic();
                                          },
                                          icon: Icon(Icons.delete_outline,
                                              color: kprimary)),
                                    )

                                    // Padding(
                                    //   padding: const EdgeInsets.symmetric(
                                    //       horizontal: 14, vertical: 8),
                                    //   child: Row(
                                    //     mainAxisAlignment:
                                    //         MainAxisAlignment.spaceBetween,
                                    //     children: [

                                    //     ],
                                    //   ),
                                    // ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 14.0, top: 8),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 278,
                                        height: 48,
                                        child: ElevatedButton(
                                          onPressed: () {
                                            // if (_formKey.currentState!
                                            //     .validate()) {
                                            //   ScaffoldMessenger.of(context)
                                            //       .showSnackBar(const SnackBar(
                                            //           content: Text(
                                            //               "Form validated")));
                                            // }
                                            // _formKey.currentState!.validate();
                                            showModalBottomSheet(
                                                context: context,
                                                builder: (context) => Container(
                                                      decoration: const BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius
                                                                      .circular(
                                                                          20))),
                                                      padding: const EdgeInsets
                                                              .symmetric(
                                                          vertical: 30),
                                                      height:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height *
                                                              0.45,
                                                      width: double.maxFinite,
                                                      child: Center(
                                                          child: Column(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                            Image.asset(
                                                              "assets/images/claimsubmission1.png",
                                                              scale: 1.4,
                                                            ),
                                                            Text(
                                                              "Confirm Submission",
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: TextStyle(
                                                                  fontSize: 20,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w700,
                                                                  fontFamily:
                                                                      kfontFamily),
                                                            ),
                                                            Text(
                                                              "Are you sure to submit this claim request?\nIf yes, tap \"Submit Claim\" below.",
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: TextStyle(
                                                                  color: const Color(
                                                                      0xff868686),
                                                                  fontSize: 14,
                                                                  fontFamily:
                                                                      kfontFamily),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      top:
                                                                          11.0),
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  SizedBox(
                                                                    height: MediaQuery.of(context)
                                                                            .size
                                                                            .height *
                                                                        0.065,
                                                                    child: ElevatedButton(
                                                                        style: ElevatedButton.styleFrom(backgroundColor: const Color(0xffee4961)),
                                                                        onPressed: () {
                                                                          Navigator.push(
                                                                              context,
                                                                              MaterialPageRoute(builder: (context) => const NewClaimCreated()));
                                                                          if (_formKey
                                                                              .currentState!
                                                                              .validate()) {
                                                                            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Form validated")));
                                                                          }
                                                                          _formKey
                                                                              .currentState!
                                                                              .validate();
                                                                        },
                                                                        child: const Text("Submit Claim")),
                                                                  ),
                                                                  const SizedBox(
                                                                    width: 20,
                                                                  ),
                                                                  TextButton(
                                                                      onPressed:
                                                                          () {},
                                                                      child:
                                                                          const Text(
                                                                        "Save as Draft",
                                                                        style: TextStyle(
                                                                            color:
                                                                                Colors.black),
                                                                      ))
                                                                ],
                                                              ),
                                                            )
                                                          ])),
                                                    ));
                                          },
                                          style: ElevatedButton.styleFrom(
                                              backgroundColor: kprimary),
                                          child: const Text(
                                              "Submit Claim Request"),
                                        ),
                                      ),
                                      TextButton(
                                          onPressed: () {
                                            setState(() {
                                              _formKey.currentState!.reset();
                                              date.clear();
                                              costcenter.clear();
                                              attachment.clear();
                                            });
                                          },
                                          child: const Text(
                                            "Clear",
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.black),
                                          ))
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              )
                            ],
                          ),
                        ],
                      )),
                ))
          ]),
        ));
  }

  // _approvers() async {
  //   await Future.delayed(Duration(milliseconds: 20000));
  //   Text("Hehe");
  // }
}

class DynamicWidget extends StatefulWidget {
  final int dynamicid;
  DynamicWidget({super.key, required this.dynamicid});

  @override
  State<DynamicWidget> createState() => _DynamicWidgetState();
}

// class Claimtypedynamic {
//   final String type;
//   final IconData icon;
//   Claimtypedynamic({required this.type, required this.icon});
// }

// List<Claimtype> claimtypedynamic = <Claimtype>[
//   Claimtype(type: "Food & Beverages", icon: Icons.room_service),
//   Claimtype(type: "Accomodation", icon: Icons.hotel),
//   Claimtype(type: "Subscription", icon: Icons.money),
//   Claimtype(type: "Building Maintenance", icon: Icons.handyman),
//   Claimtype(type: "House Keeping", icon: Icons.workspace_premium),
//   Claimtype(type: "Internet Charges", icon: Icons.dangerous),
//   Claimtype(
//       type: "Travelling Conveyance", icon: Icons.nest_cam_wired_stand_outlined),
//   Claimtype(type: "IInsurance Expenses", icon: Icons.airplane_ticket),
//   Claimtype(type: "IInsurance Expenses", icon: Icons.health_and_safety)
// ];

class _DynamicWidgetState extends State<DynamicWidget> {
  // CreateNewClaim remove = new CreateNewClaim();

  var currency1 = "INR";

  final costCenterList1 = [
    "KEBS India",
    "KEBS India(WH)",
    "KEBS Qatar",
    "KEBS Oman",
    "KEBS Bahrain",
    "KEBS Managed Services",
    "KEBS Managed Services"
  ];

  final claimTypeList1 = [
    "Food & Beverages",
    "Accomodation",
    "Subscription",
    "Building Maintenance",
    "Certifications",
    "House Keeping",
    "Internet Charges",
    "Travelling Conveyance",
    "Insurance Expences"
  ];

  // addDynamic() {
  //   Claimtype.listDynamic.add(DynamicWidget());
  //   setState(() {
  //     addDynamic;
  //   });
  // }

  // removeDynamic() {
  //   setState(() {
  //     if (Claimtype.listDynamic.isNotEmpty) {
  //       Claimtype.listDynamic.remove;
  //     }
  //   });
  // }

  final currencyTypeList = ["INR", "USD", "KD", "AED", "SAR"];

  TextEditingController date = TextEditingController();

  TextEditingController costcenter = TextEditingController();

  TextEditingController attachment = TextEditingController();
  // final _formKey1 = GlobalKey<FormState>();
  onDelete(int index) {
    setState(() {
      Claimtype.listDynamic.remove(index + 1);
    });
    print(index);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 16),
        child: Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(8))),
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: IconButton(
                          onPressed: onDelete(widget.dynamicid),
                          icon: Icon(Icons.delete)),
                    ),
                    Text(
                      "Claim Type *\n",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontFamily: kfontFamily,
                      ),
                    ),
                    Container(
                      height: 58,
                      child: DropdownButtonFormField(
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide:
                                    const BorderSide(color: Color(0xffB9C0CA))),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                        hint: Text(
                          "Select One",
                          style: TextStyle(
                            color: const Color(0xff868686),
                            fontFamily: kfontFamily,
                          ),
                        ),
                        items: claimtype
                            .map((e1) => DropdownMenuItem(
                                  value: e1,
                                  child: Wrap(
                                    spacing: 15,
                                    // mainAxisSize:
                                    //     MainAxisSize.max,
                                    // crossAxisAlignment:
                                    //     CrossAxisAlignment.start,
                                    children: [
                                      Icon(e1.icon),
                                      // Icon(icontypes.map((e) => Icon(e)).toList()),
                                      //Icon(),
                                      // Container(child: _icontypes.map((e) => Icon(e)).toList(),),
                                      Text("${e1.type}"),
                                    ],
                                  ),
                                ))
                            .toList(),
                        onChanged: (val1) {},
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Description *\n",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontFamily: kfontFamily,
                            ),
                          ),
                          TextFormField(
                            onTap: (() {}),
                            maxLines: 3,
                            decoration: InputDecoration(
                              hintText: "Enter Here",
                              hintStyle: TextStyle(
                                color: const Color(0xff868686),
                                fontFamily: kfontFamily,
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: const BorderSide(
                                      color: Color(0xffB9C0CA))),
                              border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.black,
                                      style: BorderStyle.solid),
                                  borderRadius: BorderRadius.circular(8)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Amount *\n",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontFamily: kfontFamily,
                            ),
                          ),
                          Wrap(
                            spacing: 0,
                            children: [
                              Container(
                                width: 99,
                                height: 60,
                                child: TextFormField(
                                  onTap: () {
                                    showDialog(
                                        useSafeArea: true,
                                        context: context,
                                        builder: (context) => Dialog(
                                              child: Container(
                                                // decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(8))),
                                                // width: MediaQuery.of(context).size.width * 0.3,
                                                //height: MediaQuery.of(context).size.height * 0.5,
                                                child: Container(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      horizontal: 24),
                                                  child: ListView.separated(
                                                      shrinkWrap: true,
                                                      itemBuilder:
                                                          (context, index) {
                                                        return ListTile(
                                                          onTap: () {
                                                            setState(() {
                                                              currency1 =
                                                                  currencyTypeList[
                                                                      index];
                                                              Navigator.pop(
                                                                  context);
                                                            });
                                                          },
                                                          title: Text(
                                                              currencyTypeList[
                                                                  index]),
                                                        );
                                                      },
                                                      separatorBuilder:
                                                          (context, index) {
                                                        return const Divider(
                                                          thickness: 1,
                                                        );
                                                      },
                                                      itemCount:
                                                          currencyTypeList
                                                              .length),
                                                ),
                                              ),
                                            ));
                                  },
                                  readOnly: true,
                                  decoration: InputDecoration(
                                      enabledBorder: const OutlineInputBorder(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(8),
                                              bottomLeft: Radius.circular(8)),
                                          borderSide: BorderSide(
                                              color: Color(0xffB9C0CA))),
                                      focusedBorder: const OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.black),
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(8),
                                              bottomLeft: Radius.circular(8))),
                                      suffixIcon: const Icon(
                                        Icons.arrow_drop_down,
                                        color: Colors.black,
                                      ),
                                      floatingLabelBehavior:
                                          FloatingLabelBehavior.never,
                                      hintText: currency1,
                                      hintStyle: TextStyle(
                                          color: Colors.black,
                                          fontFamily: kfontFamily,
                                          fontSize: 14),
                                      labelText: currency1,
                                      labelStyle: TextStyle(
                                          color: const Color(0xff868686),
                                          fontFamily: kfontFamily,
                                          fontSize: 14),
                                      border: const OutlineInputBorder(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(8),
                                              bottomLeft: Radius.circular(8)))),
                                ),
                              ),
                              // Container(
                              //   width: 70,
                              //   child: DropdownButtonFormField(
                              //     value: currencyTypeList[0],
                              //     items: currencyTypeList.map((e1) {
                              //       return DropdownMenuItem(
                              //         child: Text(e1),
                              //         value: e1,
                              //       );
                              //     }).toList(),
                              //     onChanged: (country) {
                              //       print("You selected: $country");
                              //     },
                              //   ),
                              // ),
                              Container(
                                height: 60,
                                width: MediaQuery.of(context).size.width * 0.54,
                                child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                      enabledBorder: const OutlineInputBorder(
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(8),
                                              bottomRight: Radius.circular(8)),
                                          borderSide: BorderSide(
                                              color: Color(0xffB9C0CA))),
                                      focusedBorder: const OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.black),
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(8),
                                              bottomRight: Radius.circular(8))),
                                      border: const OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.black,
                                              style: BorderStyle.solid),
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(8),
                                              bottomRight: Radius.circular(8))),
                                      hintText: "",
                                      labelText: "Enter Amount Here",
                                      labelStyle: TextStyle(
                                          color: const Color(0xff868686),
                                          fontFamily: kfontFamily),
                                      floatingLabelBehavior:
                                          FloatingLabelBehavior.never),
                                ),
                              ),

                              // DropdownButtonFormField(
                              //     items: currencyTypeList
                              //         .map((e2) => DropdownMenuItem(
                              //               child: Text(e2),
                              //               value: e2,
                              //             ))
                              //         .toList(),
                              //     onChanged: ((e2) {})),
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Billed Date *\n",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontFamily: kfontFamily,
                            ),
                          ),
                          Container(
                            height: 60,
                            child: TextFormField(
                              controller: date,
                              readOnly: true,

                              // onTap: (() {
                              //   showDialog(
                              //       useSafeArea:
                              //           true,
                              //       context:
                              //           context,
                              //       builder:
                              //           (context) =>
                              //               Dialog(
                              //                 child:
                              //                     Container(
                              //                   height: MediaQuery.of(context).size.height * 0.45,
                              //                   //width: MediaQuery.of(context).size.width * 1.0,
                              //                   child: Container(
                              //                     //  height: MediaQuery.of(context).size.height * 0.7,
                              //                     color: kColor,
                              //                     child: TableCalendar(
                              //                       availableGestures: AvailableGestures.all,
                              //                       rowHeight: 42,
                              //                       focusedDay: today,
                              //                       selectedDayPredicate: (days) => isSameDay(days, today),
                              //                       headerStyle: HeaderStyle(titleCentered: true, formatButtonVisible: false),
                              //                       firstDay: DateTime.utc(2010, 10, 16),
                              //                       lastDay: DateTime.utc(2030, 10, 15),
                              //                       onDaySelected: _onDaySelected,
                              //                     ),
                              //                   ),
                              //                 ),
                              //               ));

                              //   setState(() {
                              //     if (datepick !=
                              //         null) {
                              //       date.text = DateFormat(
                              //               'dd-MM-yyyy')
                              //           .format(
                              //               datepick);
                              //     }
                              //   });
                              // },
                              // Dialog(
                              //     child:
                              //         Container(
                              //   child: TableCalendar(
                              //       focusedDay:
                              //           today,
                              //       firstDay:
                              //           DateTime.utc(
                              //               2010,
                              //               10,
                              //               16),
                              //       lastDay:
                              //           DateTime.utc(
                              //               2030,
                              //               10,
                              //               15)),
                              // ));
                              //}),
                              onTap: () async {
                                DateTime? datepick = await showDatePicker(
                                    helpText: "",
                                    builder: (context, child) {
                                      return Theme(
                                        child: child!,
                                        data: ThemeData().copyWith(

                                            // backgroundColor: Colors.white,
                                            colorScheme: const ColorScheme.dark(
                                                onPrimary: Colors.black,
                                                onSurface: Colors.black,
                                                surface: Colors.white)),
                                      );
                                    },
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime(1999),
                                    lastDate: DateTime(2100));

                                setState(() {
                                  if (datepick != null) {
                                    date.text = DateFormat('dd-MM-yyyy')
                                        .format(datepick);
                                  }
                                });
                              },
                              decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      borderSide: const BorderSide(
                                          color: Color(0xffB9C0CA))),
                                  suffixIcon:
                                      const Icon(Icons.calendar_month_outlined),
                                  border: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Colors.black,
                                          style: BorderStyle.solid),
                                      borderRadius: BorderRadius.circular(8)),
                                  hintText: "",
                                  labelText: "DD MM YYYY",
                                  labelStyle: TextStyle(
                                    color: const Color(0xff868686),
                                    fontFamily: kfontFamily,
                                  ),
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.never),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Attachments If Any\n",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontFamily: kfontFamily,
                            ),
                          ),
                          TextFormField(
                            controller: attachment,
                            readOnly: true,
                            onTap: () async {
                              showModalBottomSheet(
                                  context: context,
                                  builder: (context) => SizedBox(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.25,
                                        child: Center(
                                          child: Column(
                                            children: [
                                              const Padding(
                                                padding:
                                                    EdgeInsets.only(top: 24.0),
                                                child: Text(
                                                  "Upload  Attachment",
                                                  style: TextStyle(
                                                      color: Color(0xff45546E),
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ),
                                              ),
                                              Container(
                                                decoration: const BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.only(
                                                            topLeft: Radius
                                                                .circular(30),
                                                            topRight:
                                                                Radius.circular(
                                                                    10))),
                                                padding: const EdgeInsets.only(
                                                    top: 25),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    children: [
                                                      Column(
                                                        children: [
                                                          Container(
                                                            height: 80,
                                                            width: 80,
                                                            decoration: BoxDecoration(
                                                                border: Border.all(
                                                                    color: const Color(
                                                                        0xffB9C0CA)),
                                                                color: Colors
                                                                    .transparent,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            360)),

                                                            // radius: 40,
                                                            // backgroundColor: Colors.white,
                                                            // Theme.of(context)
                                                            //     .backgroundColor,
                                                            child: const ClipOval(
                                                                child: ImageIcon(
                                                                    AssetImage(
                                                                        "assets/icons/add_a_photo.png"))),
                                                          ),
                                                          const SizedBox(
                                                            height: 8,
                                                          ),
                                                          const Text(
                                                            "Take photo",
                                                            style: TextStyle(
                                                                color: Color(
                                                                    0xff45546E)),
                                                          )
                                                        ],
                                                      ),

                                                      Column(
                                                        children: [
                                                          Container(
                                                            height: 80,
                                                            width: 80,
                                                            decoration: BoxDecoration(
                                                                border: Border.all(
                                                                    color: const Color(
                                                                        0xffB9C0CA)),
                                                                color: Colors
                                                                    .transparent,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            360)),

                                                            // radius: 40,
                                                            // backgroundColor: Colors.white,
                                                            // Theme.of(context)
                                                            //     .backgroundColor,
                                                            child:
                                                                GestureDetector(
                                                              onTap: () async {
                                                                WidgetsFlutterBinding
                                                                    .ensureInitialized();
                                                                final cameras =
                                                                    await availableCameras();
                                                                final firstCamera =
                                                                    cameras
                                                                        .first;
                                                                Navigator.push(
                                                                    context,
                                                                    MaterialPageRoute(
                                                                        builder:
                                                                            (context) =>
                                                                                CameraImages(camera: firstCamera)));
                                                              },
                                                              child:
                                                                  const ClipOval(
                                                                      child:
                                                                          ImageIcon(
                                                                AssetImage(
                                                                    "assets/icons/add_photo_alternate.png"),
                                                              )),
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                            height: 8,
                                                          ),
                                                          const Text(
                                                              "Photo Library",
                                                              style: TextStyle(
                                                                  color: Color(
                                                                      0xff45546E)))
                                                        ],
                                                      ),

                                                      Column(
                                                        children: [
                                                          Container(
                                                            height: 80,
                                                            width: 80,
                                                            decoration: BoxDecoration(
                                                                border: Border.all(
                                                                    color: const Color(
                                                                        0xffB9C0CA)),
                                                                color: Colors
                                                                    .transparent,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            360)),

                                                            // radius: 40,
                                                            // backgroundColor: Colors.white,
                                                            // Theme.of(context)
                                                            //     .backgroundColor,
                                                            child: const ClipOval(
                                                                child: ImageIcon(
                                                                    AssetImage(
                                                                        "assets/icons/folder.png"))),
                                                          ),
                                                          const SizedBox(
                                                            height: 8,
                                                          ),
                                                          const Text(
                                                              "Choose File",
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  color: Color(
                                                                      0xff45546E)))
                                                        ],
                                                      ),

                                                      // Column(
                                                      //   children: [
                                                      //     CircleAvatar(
                                                      //       radius: 40,
                                                      //       backgroundColor: kColor,
                                                      //       // Theme.of(context)
                                                      //       //     .backgroundColor,
                                                      //       child: ClipOval(
                                                      //           child: IconButton(
                                                      //         onPressed: () async {
                                                      //           WidgetsFlutterBinding.ensureInitialized();
                                                      //           final cameras = await availableCameras();
                                                      //           final firstCamera = cameras.first;
                                                      //           Navigator.push(context, MaterialPageRoute(builder: (context) => CameraImages(camera: firstCamera)));
                                                      //         },
                                                      //         icon: const Icon(Icons.folder),
                                                      //         color: Colors.black,
                                                      //       )),
                                                      //     ),
                                                      //     const Text("Photo Library")
                                                      //   ],
                                                      // ),

                                                      //   Column(
                                                      //     children: [
                                                      //       CircleAvatar(
                                                      //         radius: 40,
                                                      //         backgroundColor: kColor,
                                                      //         // Theme.of(context)
                                                      //         //     .backgroundColor,
                                                      //         child: const ClipOval(
                                                      //             child: Icon(
                                                      //           Icons.add_photo_alternate,
                                                      //           color: Colors.black,
                                                      //         )),
                                                      //       ),
                                                      //       const Text("Choose File")
                                                      //     ],
                                                      //   ),
                                                      // ],
                                                    ]),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ));

                              attachment.text = ("Uploading").toString();
                              // WidgetsFlutterBinding.ensureInitialized();
                              // final cameras = await availableCameras();
                              // final firstCamera = cameras.first;
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) =>
                              //             CameraImages(
                              //                 camera: firstCamera)));
                            },
                            decoration: InputDecoration(
                                focusedBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8))),
                                prefixIcon: const Icon(
                                  Icons.attachment,
                                  color: Color(0xff868686),
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: const BorderSide(
                                        color: Color(0xffB9C0CA))),
                                border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Colors.black,
                                        style: BorderStyle.solid),
                                    borderRadius: BorderRadius.circular(10)),
                                labelText: "Tap To Add Attachment",
                                labelStyle: TextStyle(
                                  color: const Color(0xff868686),
                                  fontFamily: kfontFamily,
                                ),
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.never),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            )),
      ),
    );
  }
}

// import 'package:camera/camera.dart';
// import 'package:expense/pages/new_claim_created.dart';
// import 'package:expense/screens/camera_image.dart';
// import 'package:expense/utilities/style.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';

// class CreateNewClaim extends StatefulWidget {
//   const CreateNewClaim({super.key});

//   @override
//   State<CreateNewClaim> createState() => _CreateNewClaimState();
// }

// class _CreateNewClaimState extends State<CreateNewClaim> {

//   @override
//   Widget build(BuildContext context) {

//     return Scaffold(
//       // floatingActionButton: Container(
//       //   width: MediaQuery.of(context).size.width,
//       //   child: FloatingActionButton(
//       //       onPressed: () {}, child: Image.asset("assets/images/bottom4.png")),
//       // ),
//       backgroundColor: const Color(0xFFEE4961),
//       body: CustomScrollView(
//         slivers: <Widget>[
//           SliverAppBar(
//             leading: IconButton(
//               onPressed: () {

//                 Navigator.pop(context);
//               },
//               icon: const Icon(Icons.arrow_back),
//             ),
//             title: const Text(
//               "Expenses",
//               style: TextStyle(fontSize: 15),
//             ),
//             backgroundColor: Colors.redAccent,
//             expandedHeight: 50,
//             pinned: true,
//             flexibleSpace: FlexibleSpaceBar(
//               background: SafeArea(
//                 child: Stack(
//                   children: <Widget>[
//                     Container(
//                         width: double.infinity,
//                         child: Image.asset(
//                           'assets/images/landing2.png',
//                           fit: BoxFit.fitWidth,
//                         )),
//                     Container(
//                         //alignment: Alignment.center,
//                         width: double.infinity,
//                         child: Image.asset(
//                           'assets/images/landing3.png',
//                           fit: BoxFit.fitWidth,
//                         )),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//           SliverFillRemaining(

//             child: _buildContents1(context),
//           )
//         ],
//       ),
//     );
//   }
// }

// var _formKey = GlobalKey<FormState>();

// final costCenterList = [
//   "KEBS India",
//   "KEBS India(WH)",
//   "KEBS Qatar",
//   "KEBS Oman",
//   "KEBS Bahrain",
//   "KEBS Managed Services",
//   "KEBS Managed Services"
// ];

// final claimTypeList = [
//   "Food & Beverages",
//   "Accomodation",
//   "Subscription",
//   "Building Maintenance",
//   "Certifications",
//   "House Keeping",
//   "Internet Charges",
//   "Travelling Conveyance",
//   "Insurance Expences"
// ];

// final currencyTypeList = ["INR", "USD", "KD", "AED", "SAR"];

// void date(){

// }

// Center _buildContents1(BuildContext context) {
//   TextEditingController date = TextEditingController();
//   TextEditingController costcenter = TextEditingController();
//   TextEditingController attachment = TextEditingController();

//   // Future<DateTime?> datepick() async {
//   //   await showDatePicker(
//   //       context: context,
//   //       initialDate: DateTime.now(),
//   //       firstDate: DateTime(1999),
//   //       lastDate: DateTime(2100));
//   //   return null;
//   // }

//   // Future<void> camera() async {
//   //   final cameras = await availableCameras();

//   //   final firstCamera = cameras.first;
//   // }
//   return Center(
//       child: SingleChildScrollView(
//     child: Container(
//       decoration: const BoxDecoration(
//           color: Color(0xFFF6F6F7),
//           borderRadius: BorderRadius.only(
//               topLeft: Radius.circular(20), topRight: Radius.circular(20))),
//       child: Column(
//         // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           Padding(
//             padding: const EdgeInsets.only(top: 25.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Row(
//                   children: const [
//                     Text(
//                       "     Create New Claim Request",
//                       style: TextStyle(fontWeight: FontWeight.bold),
//                     )
//                   ],
//                 ),
//               ],
//             ),
//           ),
//           Container(
//             padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
//             child: Form(
//                 key: _formKey,
//                 child: Column(
//                   children: <Widget>[
//                     Padding(
//                       padding: const EdgeInsets.symmetric(vertical: 10.0),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           const Text("Legal Entity\n"),
//                           Card(
//                             elevation: 0,
//                             child: TextFormField(
//                               readOnly: true,
//                               // validator: (msg) {
//                               //   if (msg!.isEmpty) {
//                               //     return "Enter Name";
//                               //   }
//                               //   return null;
//                               // },
//                               decoration: InputDecoration(
//                                   fillColor: Colors.black,
//                                   border: OutlineInputBorder(
//                                       borderSide: const BorderSide(
//                                           color: Colors.black,
//                                           style: BorderStyle.solid),
//                                       borderRadius: BorderRadius.circular(10)),
//                                   hintText: "Kaar Technologies India Pvt Ltd",
//                                   labelText: "Kaar Technologies India Pvt Ltd",
//                                   floatingLabelBehavior:
//                                       FloatingLabelBehavior.never),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.symmetric(vertical: 1.0),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           const Text("Cost Center *\n"),
//                           Container(
//                             height: 58,
//                             child: Card(
//                               elevation: 0,
//                               child: TextFormField(
//                                 controller: costcenter,
//                                 readOnly: true,
//                                 onTap: () {
//                                   showModalBottomSheet(
//                                       context: context,
//                                       builder: (context) {
//                                         return Container(
//                                           height: MediaQuery.of(context)
//                                                   .size
//                                                   .height *
//                                               0.5,
//                                           child: ListView.builder(
//                                             itemCount: costCenterList.length,
//                                             itemBuilder: ((context, index) {
//                                               return GestureDetector(
//                                                   onTap: () {
//                                                     Navigator.pop(context);
//                                                   },
//                                                   child: ListTile(
//                                                     leading: const Icon(
//                                                         Icons.food_bank),
//                                                     title: Text(
//                                                         costCenterList[index]),
//                                                   ));
//                                             }),
//                                           ),
//                                         );
//                                       });
//                                   if (costCenterList != null) {
//                                     costcenter.text = costCenterList[0];
//                                     //print(costCenterList);
//                                   }
//                                 },
//                                 decoration: InputDecoration(
//                                     floatingLabelBehavior:
//                                         FloatingLabelBehavior.never,
//                                     labelText: "Select One",
//                                     labelStyle: const TextStyle(
//                                         color: Color(0xff868686)),
//                                     border: OutlineInputBorder(
//                                         borderRadius:
//                                             BorderRadius.circular(10))),
//                               ),
//                             ),

//                             // child: DropdownButtonFormField(
//                             //     hint: Text("Select One"),
//                             //     icon: Icon(Icons.search),
//                             //     decoration: InputDecoration(
//                             //         border: OutlineInputBorder(
//                             //             borderRadius:
//                             //                 BorderRadius.circular(10))),
//                             //     items: costCenterList
//                             //         .map((e) => DropdownMenuItem(
//                             //             child: Text(e), value: e))
//                             //         .toList(),
//                             //     onChanged: (val) {}),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Padding(
//                         padding: const EdgeInsets.only(top: 70),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             const Text("Claim Type *\n"),
//                             Container(
//                               width: 344,
//                               height: 58,
//                               child: DropdownButtonFormField(
//                                 decoration: InputDecoration(
//                                     border: OutlineInputBorder(
//                                         borderRadius:
//                                             BorderRadius.circular(10))),
//                                 hint: const Text(
//                                   "Select One",
//                                   style: TextStyle(color: Color(0xff868686)),
//                                 ),
//                                 items: claimTypeList
//                                     .map((e1) => DropdownMenuItem(
//                                           value: e1,
//                                           child: Text(e1),
//                                         ))
//                                     .toList(),
//                                 onChanged: (val1) {},
//                               ),
//                             ),
//                             Padding(
//                               padding:
//                                   const EdgeInsets.symmetric(vertical: 12.0),
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   const Text("Description *\n"),
//                                   TextFormField(
//                                     onTap: (() {}),
//                                     maxLines: 3,
//                                     decoration: InputDecoration(
//                                       hintText: "Enter Here",
//                                       hintStyle: const TextStyle(
//                                           color: Color(0xff868686)),
//                                       border: OutlineInputBorder(
//                                           borderSide: const BorderSide(
//                                               color: Colors.black,
//                                               style: BorderStyle.solid),
//                                           borderRadius:
//                                               BorderRadius.circular(10)),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                             Padding(
//                               padding:
//                                   const EdgeInsets.symmetric(vertical: 10.0),
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   const Text("Amount *\n"),
//                                   Row(
//                                     children: [
//                                       Container(
//                                         width: 94,
//                                         height: 59,
//                                         child: DropdownButtonFormField(
//                                           decoration: InputDecoration(
//                                               border: OutlineInputBorder(
//                                                   borderRadius:
//                                                       BorderRadius.only(
//                                                           topLeft:
//                                                               Radius.circular(
//                                                                   10),
//                                                           bottomLeft:
//                                                               Radius.circular(
//                                                                   10)))),
//                                           hint: Text(
//                                             currencyTypeList[0],
//                                             style: TextStyle(
//                                                 color: Color(0xff868686)),
//                                           ),
//                                           items: currencyTypeList
//                                               .map((e1) => DropdownMenuItem(
//                                                     value: e1,
//                                                     child: Text(e1),
//                                                   ))
//                                               .toList(),
//                                           onChanged: (val1) {},
//                                         ),
//                                       ),
//                                       // Container(
//                                       //   width: 70,
//                                       //   child: DropdownButtonFormField(
//                                       //     value: currencyTypeList[0],
//                                       //     items: currencyTypeList.map((e1) {
//                                       //       return DropdownMenuItem(
//                                       //         child: Text(e1),
//                                       //         value: e1,
//                                       //       );
//                                       //     }).toList(),
//                                       //     onChanged: (country) {
//                                       //       print("You selected: $country");
//                                       //     },
//                                       //   ),
//                                       // ),
//                                       Container(
//                                         width:
//                                             MediaQuery.of(context).size.width *
//                                                 0.63,
//                                         child: TextFormField(
//                                           keyboardType: TextInputType.number,
//                                           decoration: InputDecoration(
//                                               border: OutlineInputBorder(
//                                                   borderSide: const BorderSide(
//                                                       color: Colors.black,
//                                                       style: BorderStyle.solid),
//                                                   borderRadius:
//                                                       BorderRadius.only(
//                                                           topRight:
//                                                               Radius.circular(
//                                                                   10),
//                                                           bottomRight:
//                                                               Radius.circular(
//                                                                   10))),
//                                               hintText: "",
//                                               labelText: "Enter Amount Here",
//                                               labelStyle: const TextStyle(
//                                                   color: Color(0xff868686)),
//                                               floatingLabelBehavior:
//                                                   FloatingLabelBehavior.never),
//                                         ),
//                                       ),

//                                       // DropdownButtonFormField(
//                                       //     items: currencyTypeList
//                                       //         .map((e2) => DropdownMenuItem(
//                                       //               child: Text(e2),
//                                       //               value: e2,
//                                       //             ))
//                                       //         .toList(),
//                                       //     onChanged: ((e2) {})),
//                                     ],
//                                   )
//                                 ],
//                               ),
//                             ),
//                             Padding(
//                               padding:
//                                   const EdgeInsets.symmetric(vertical: 10.0),
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   const Text("Billed Date *\n"),
//                                   TextFormField(
//                                     controller: date,
//                                     readOnly: true,
//                                     onTap: () async {
//                                       DateTime? datepick = await showDatePicker(
//                                           context: context,
//                                           initialDate: DateTime.now(),
//                                           firstDate: DateTime(1999),
//                                           lastDate: DateTime(2100));

//                                       if (datepick != null) {
//                                         date.text = DateFormat('dd-MM-yyyy')
//                                             .format(datepick);
//                                       }

//                                     },
//                                     decoration: InputDecoration(
//                                         suffixIcon: const Icon(
//                                             Icons.calendar_month_outlined),
//                                         border: OutlineInputBorder(
//                                             borderSide: const BorderSide(
//                                                 color: Colors.black,
//                                                 style: BorderStyle.solid),
//                                             borderRadius:
//                                                 BorderRadius.circular(10)),
//                                         hintText: "",
//                                         labelText: "DD MM YYYY",
//                                         labelStyle: const TextStyle(
//                                             color: Color(0xff868686)),
//                                         floatingLabelBehavior:
//                                             FloatingLabelBehavior.never),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.only(top: 10.0),
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   const Text("Attachments If Any\n",
//                                       style: TextStyle(color: Colors.black)),
//                                   TextFormField(
//                                     controller: attachment,
//                                     readOnly: true,
//                                     onTap: () async {
//                                       showModalBottomSheet(
//                                           context: context,
//                                           builder: (context) => Container(
//                                                 height: MediaQuery.of(context)
//                                                         .size
//                                                         .height *
//                                                     0.25,
//                                                 child: Center(
//                                                   child: Container(
//                                                     decoration: BoxDecoration(
//                                                         borderRadius:
//                                                             BorderRadius.only(
//                                                                 topLeft: Radius
//                                                                     .circular(
//                                                                         30),
//                                                                 topRight: Radius
//                                                                     .circular(
//                                                                         10))),
//                                                     padding: EdgeInsets.only(
//                                                         top: 45),
//                                                     child: Row(
//                                                       mainAxisAlignment:
//                                                           MainAxisAlignment
//                                                               .spaceEvenly,
//                                                       children: [
//                                                         Column(
//                                                           children: [
//                                                             CircleAvatar(
//                                                               radius: 40,
//                                                               backgroundColor:
//                                                                   kColor,
//                                                               // Theme.of(context)
//                                                               //     .backgroundColor,
//                                                               child: ClipOval(
//                                                                   child: Icon(
//                                                                 Icons
//                                                                     .add_a_photo,
//                                                                 color: Colors
//                                                                     .black,
//                                                               )),
//                                                             ),
//                                                             Text("Take photo")
//                                                           ],
//                                                         ),
//                                                         Column(
//                                                           children: [
//                                                             CircleAvatar(
//                                                               radius: 40,
//                                                               backgroundColor:
//                                                                   kColor,
//                                                               // Theme.of(context)
//                                                               //     .backgroundColor,
//                                                               child: ClipOval(
//                                                                   child:
//                                                                       IconButton(
//                                                                 onPressed:
//                                                                     () async {
//                                                                   WidgetsFlutterBinding
//                                                                       .ensureInitialized();
//                                                                   final cameras =
//                                                                       await availableCameras();
//                                                                   final firstCamera =
//                                                                       cameras
//                                                                           .first;
//                                                                   Navigator.push(
//                                                                       context,
//                                                                       MaterialPageRoute(
//                                                                           builder: (context) =>
//                                                                               CameraImages(camera: firstCamera)));
//                                                                 },
//                                                                 icon: Icon(Icons
//                                                                     .folder),
//                                                                 color: Colors
//                                                                     .black,
//                                                               )),
//                                                             ),
//                                                             Text(
//                                                                 "Photo Library")
//                                                           ],
//                                                         ),
//                                                         Column(
//                                                           children: [
//                                                             CircleAvatar(
//                                                               radius: 40,
//                                                               backgroundColor:
//                                                                   kColor,
//                                                               // Theme.of(context)
//                                                               //     .backgroundColor,
//                                                               child: ClipOval(
//                                                                   child: Icon(
//                                                                 Icons
//                                                                     .add_photo_alternate,
//                                                                 color: Colors
//                                                                     .black,
//                                                               )),
//                                                             ),
//                                                             Text("Choose File")
//                                                           ],
//                                                         ),
//                                                       ],
//                                                     ),
//                                                   ),
//                                                 ),
//                                               ));

//                                       if (availableCameras() != null) {
//                                         attachment.text =
//                                             ("Uploading").toString();
//                                       }
//                                       // WidgetsFlutterBinding.ensureInitialized();
//                                       // final cameras = await availableCameras();
//                                       // final firstCamera = cameras.first;
//                                       // Navigator.push(
//                                       //     context,
//                                       //     MaterialPageRoute(
//                                       //         builder: (context) =>
//                                       //             CameraImages(
//                                       //                 camera: firstCamera)));
//                                     },
//                                     decoration: InputDecoration(
//                                         prefixIcon: Icon(
//                                           Icons.attachment,
//                                           color: Color(0xff868686),
//                                         ),
//                                         border: OutlineInputBorder(
//                                             borderSide: const BorderSide(
//                                                 color: Colors.black,
//                                                 style: BorderStyle.solid),
//                                             borderRadius:
//                                                 BorderRadius.circular(10)),
//                                         labelText: "Tap To Add Attachment",
//                                         labelStyle: const TextStyle(
//                                             color: Color(0xff868686)),
//                                         floatingLabelBehavior:
//                                             FloatingLabelBehavior.never),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         )),
//                   ],
//                 )),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(top: 23.0, left: 8),
//             child: Align(
//               alignment: Alignment.topLeft,
//               child: TextButton(
//                   onPressed: () {},
//                   child: const Text(
//                     "+ Add Another Claim",
//                     style: TextStyle(color: Colors.black),
//                   )),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(left: 14.0, top: 8),
//             child: Align(
//               alignment: Alignment.topLeft,
//               child: Row(
//                 children: [
//                   Container(
//                     width: 278,
//                     height: 48,
//                     child: ElevatedButton(
//                       onPressed: () {
//                         // _formKey.currentState!.validate();
//                         showModalBottomSheet(
//                             context: context,
//                             builder: (context) => Container(
//                                   decoration: const BoxDecoration(
//                                       borderRadius: BorderRadius.all(
//                                           Radius.circular(20))),
//                                   padding:
//                                       const EdgeInsets.symmetric(vertical: 30),
//                                   height:
//                                       MediaQuery.of(context).size.height * 0.45,
//                                   width: double.maxFinite,
//                                   child: Center(
//                                       child: Column(
//                                           mainAxisAlignment:
//                                               MainAxisAlignment.spaceBetween,
//                                           children: [
//                                         Image.asset(
//                                           "assets/images/claimsubmission1.png",
//                                           scale: 1.4,
//                                         ),
//                                         const Text(
//                                           "Confirm Submission",
//                                           textAlign: TextAlign.center,
//                                           style: TextStyle(
//                                               fontSize: 20,
//                                               fontWeight: FontWeight.w700,
//                                               fontFamily: "Plus Jakarta Sans"),
//                                         ),
//                                         const Text(
//                                           "Are you sure to submit this claim request?\nIf yes, tap Submit Claim below.",
//                                           textAlign: TextAlign.center,
//                                           style: TextStyle(
//                                               color: Color(0xff868686),
//                                               fontSize: 14,
//                                               fontFamily: "Plus Jakarta Sans"),
//                                         ),
//                                         Padding(
//                                           padding:
//                                               const EdgeInsets.only(top: 11.0),
//                                           child: Row(
//                                             mainAxisAlignment:
//                                                 MainAxisAlignment.center,
//                                             children: [
//                                               Container(
//                                                 height: MediaQuery.of(context)
//                                                         .size
//                                                         .height *
//                                                     0.065,
//                                                 child: ElevatedButton(
//                                                     style: ElevatedButton
//                                                         .styleFrom(
//                                                             backgroundColor:
//                                                                 const Color(
//                                                                     0xffee4961)),
//                                                     onPressed: () {
//                                                       Navigator.push(
//                                                           context,
//                                                           MaterialPageRoute(
//                                                               builder: (context) =>
//                                                                   const NewClaimCreated()));
//                                                     },
//                                                     child: const Text(
//                                                         "Submit Claim")),
//                                               ),
//                                               const SizedBox(
//                                                 width: 20,
//                                               ),
//                                               TextButton(
//                                                   onPressed: () {},
//                                                   child: const Text(
//                                                     "Save as Draft",
//                                                     style: TextStyle(
//                                                         color: Colors.black),
//                                                   ))
//                                             ],
//                                           ),
//                                         )
//                                       ])),
//                                 ));
//                       },
//                       style: ElevatedButton.styleFrom(
//                           backgroundColor: Colors.redAccent),
//                       child: const Text("Submit Claim Request"),
//                     ),
//                   ),
//                   TextButton(
//                       onPressed: () {},
//                       child: const Text(
//                         "Clear",
//                         style: TextStyle(fontSize: 14, color: Colors.black),
//                       ))
//                 ],
//               ),
//             ),
//           ),
//           const SizedBox(
//             height: 30,
//           )
//         ],
//       ),
//     ),
//   ));
// }
