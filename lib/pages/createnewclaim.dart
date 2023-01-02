import 'package:camera/camera.dart';
import 'package:expense/pages/new_claim_created.dart';
import 'package:expense/screens/camera_image.dart';
import 'package:expense/utilities/style.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

class CreateNewClaim extends StatefulWidget {
  const CreateNewClaim({super.key});

  @override
  State<CreateNewClaim> createState() => _CreateNewClaimState();
}

class _CreateNewClaimState extends State<CreateNewClaim> {
  var _formKey = GlobalKey<FormState>();

  final costCenterList = [
    "KEBS India",
    "KEBS India(WH)",
    "KEBS Qatar",
    "KEBS Oman",
    "KEBS Bahrain",
    "KEBS Managed Services",
    "KEBS Managed Services"
  ];

  final claimTypeList = [
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

  final currencyTypeList = ["INR", "USD", "KD", "AED", "SAR"];

  TextEditingController date = TextEditingController();
  TextEditingController costcenter = TextEditingController();
  TextEditingController attachment = TextEditingController();

  static List<DynamicWidget> listDynamic = [];

  var currency = "currencyy";

  addDynamic() {
    listDynamic.add(new DynamicWidget());
    setState(() {
      addDynamic;
    });
  }

  removeDynamic() {
    setState(() {
      if (listDynamic.isNotEmpty) {
        listDynamic.removeLast();
      }
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
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: Text(
            "Expenses",
            style: TextStyle(
              fontSize: 15,
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
                padding: const EdgeInsets.only(top: 78.0),
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
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 2.0,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 25.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "     Create New Claim Request",
                                            style: TextStyle(
                                                fontFamily: kfontFamily,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SingleChildScrollView(
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 15, horizontal: 16),
                                    child: Form(
                                        key: _formKey,
                                        child: Column(
                                          children: <Widget>[
                                            Container(
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(8))),
                                              padding: EdgeInsets.all(24),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Legal Entity\n",
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontFamily: kfontFamily,
                                                    ),
                                                  ),
                                                  Container(
                                                    height: 60,
                                                    child: Card(
                                                      elevation: 0,
                                                      child: TextFormField(
                                                        readOnly: true,
                                                        // validator: (msg) {
                                                        //   if (msg!.isEmpty) {
                                                        //     return "Enter Name";
                                                        //   }
                                                        //   return null;
                                                        // },
                                                        decoration: InputDecoration(
                                                            fillColor:
                                                                Colors.black,
                                                            border: OutlineInputBorder(
                                                                borderSide: const BorderSide(
                                                                    color: Colors
                                                                        .black,
                                                                    style: BorderStyle
                                                                        .solid),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10)),
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
                                                        controller: costcenter,
                                                        readOnly: true,
                                                        onTap: () {
                                                          showModalBottomSheet(
                                                              context: context,
                                                              builder:
                                                                  (context) {
                                                                return Container(
                                                                  height: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .height *
                                                                      0.5,
                                                                  child: ListView
                                                                      .separated(
                                                                    separatorBuilder:
                                                                        (context,
                                                                            index) {
                                                                      return Divider(
                                                                        thickness:
                                                                            1,
                                                                      );
                                                                    },
                                                                    itemCount:
                                                                        costCenterList
                                                                            .length,
                                                                    itemBuilder:
                                                                        ((context,
                                                                            index) {
                                                                      return GestureDetector(
                                                                          onTap:
                                                                              () {
                                                                            setState(() {
                                                                              costcenter.text = costCenterList[index];
                                                                            });

                                                                            Navigator.pop(context);
                                                                          },
                                                                          child:
                                                                              ListTile(
                                                                            title:
                                                                                Text(costCenterList[index]),
                                                                          ));
                                                                    }),
                                                                  ),
                                                                );
                                                              });
                                                        },
                                                        decoration:
                                                            InputDecoration(
                                                                suffixIcon:
                                                                    Icon(
                                                                  Icons.search,
                                                                  color: Colors
                                                                      .black,
                                                                ),
                                                                floatingLabelBehavior:
                                                                    FloatingLabelBehavior
                                                                        .never,
                                                                labelText:
                                                                    "Select One",
                                                                labelStyle:
                                                                    TextStyle(
                                                                  color: Color(
                                                                      0xff868686),
                                                                  fontFamily:
                                                                      kfontFamily,
                                                                ),
                                                                border: OutlineInputBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            10))),
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
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 18.0),
                                              child: Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  8))),
                                                  padding: EdgeInsets.all(24),
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
                                                                  FontWeight
                                                                      .w600,
                                                              fontFamily:
                                                                  kfontFamily,
                                                            ),
                                                          ),
                                                          Container(
                                                            height: 58,
                                                            child:
                                                                DropdownButtonFormField(
                                                              decoration: InputDecoration(
                                                                  border: OutlineInputBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              10))),
                                                              hint: Text(
                                                                "Select One",
                                                                style: TextStyle(
                                                                    fontFamily:
                                                                        kfontFamily,
                                                                    color: Color(
                                                                        0xff868686)),
                                                              ),
                                                              items:
                                                                  claimTypeList
                                                                      .map((e1) =>
                                                                          DropdownMenuItem(
                                                                            value:
                                                                                e1,
                                                                            child:
                                                                                Text(e1),
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
                                                                  onTap:
                                                                      (() {}),
                                                                  maxLines: 3,
                                                                  decoration:
                                                                      InputDecoration(
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
                                                                            BorderRadius.circular(10)),
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
                                                                Row(
                                                                  children: [
                                                                    Container(
                                                                      width: 99,
                                                                      height:
                                                                          60,
                                                                      child:
                                                                          TextFormField(
                                                                        onTap:
                                                                            () {
                                                                          showDialog(
                                                                              useSafeArea: true,
                                                                              context: context,
                                                                              builder: (context) => Dialog(
                                                                                    child: Container(
                                                                                      decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(8))),
                                                                                      // width: MediaQuery.of(context).size.width * 0.3,
                                                                                      //height: MediaQuery.of(context).size.height * 0.5,
                                                                                      child: Container(
                                                                                        padding: EdgeInsets.symmetric(horizontal: 24),
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
                                                                                              return Divider(
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
                                                                            suffixIcon: Icon(
                                                                              Icons.arrow_drop_down,
                                                                            ),
                                                                            floatingLabelBehavior: FloatingLabelBehavior.never,
                                                                            hintText: currencyTypeList[0],
                                                                            hintStyle: TextStyle(color: Colors.black, fontFamily: kfontFamily),
                                                                            labelText: currencyTypeList[0],
                                                                            labelStyle: TextStyle(color: Color(0xff868686), fontFamily: kfontFamily),
                                                                            border: OutlineInputBorder()),
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
                                                                      height:
                                                                          60,
                                                                      width: MediaQuery.of(context)
                                                                              .size
                                                                              .width *
                                                                          0.54,
                                                                      child:
                                                                          TextFormField(
                                                                        keyboardType:
                                                                            TextInputType.number,
                                                                        decoration: InputDecoration(
                                                                            border:
                                                                                OutlineInputBorder(borderSide: const BorderSide(color: Colors.black, style: BorderStyle.solid), borderRadius: BorderRadius.only(topRight: Radius.circular(8), bottomRight: Radius.circular(8))),
                                                                            hintText: "",
                                                                            labelText: "Enter Amount Here",
                                                                            labelStyle: TextStyle(color: Color(0xff868686), fontFamily: kfontFamily),
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
                                                                              child: child!,
                                                                              data: ThemeData().copyWith(

                                                                                  // backgroundColor: Colors.white,
                                                                                  colorScheme: ColorScheme.dark(onPrimary: Colors.black, onSurface: Colors.black, surface: Colors.white)),
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
                                                                              DateFormat('dd-MM-yyyy').format(datepick);
                                                                        }
                                                                      });
                                                                    },
                                                                    decoration: InputDecoration(
                                                                        suffixIcon:
                                                                            const Icon(Icons
                                                                                .calendar_month_outlined),
                                                                        border: OutlineInputBorder(
                                                                            borderSide: const BorderSide(
                                                                                color: Colors
                                                                                    .black,
                                                                                style: BorderStyle
                                                                                    .solid),
                                                                            borderRadius: BorderRadius.circular(
                                                                                10)),
                                                                        hintText:
                                                                            "",
                                                                        labelText:
                                                                            "DD MM YYYY",
                                                                        labelStyle: TextStyle(
                                                                            fontFamily:
                                                                                kfontFamily,
                                                                            color: Color(
                                                                                0xff868686)),
                                                                        floatingLabelBehavior:
                                                                            FloatingLabelBehavior.never),
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
                                                                  readOnly:
                                                                      true,
                                                                  onTap:
                                                                      () async {
                                                                    showModalBottomSheet(
                                                                        context:
                                                                            context,
                                                                        builder: (context) =>
                                                                            Container(
                                                                              height: MediaQuery.of(context).size.height * 0.25,
                                                                              child: Center(
                                                                                child: Container(
                                                                                  decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(10))),
                                                                                  padding: EdgeInsets.only(top: 45),
                                                                                  child: Row(
                                                                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                                    children: [
                                                                                      Column(
                                                                                        children: [
                                                                                          CircleAvatar(
                                                                                            radius: 40,
                                                                                            backgroundColor: kColor,
                                                                                            // Theme.of(context)
                                                                                            //     .backgroundColor,
                                                                                            child: ClipOval(
                                                                                                child: Icon(
                                                                                              Icons.add_a_photo,
                                                                                              color: Colors.black,
                                                                                            )),
                                                                                          ),
                                                                                          Text("Take photo")
                                                                                        ],
                                                                                      ),
                                                                                      Column(
                                                                                        children: [
                                                                                          CircleAvatar(
                                                                                            radius: 40,
                                                                                            backgroundColor: kColor,
                                                                                            // Theme.of(context)
                                                                                            //     .backgroundColor,
                                                                                            child: ClipOval(
                                                                                                child: IconButton(
                                                                                              onPressed: () async {
                                                                                                WidgetsFlutterBinding.ensureInitialized();
                                                                                                final cameras = await availableCameras();
                                                                                                final firstCamera = cameras.first;
                                                                                                Navigator.push(context, MaterialPageRoute(builder: (context) => CameraImages(camera: firstCamera)));
                                                                                              },
                                                                                              icon: Icon(Icons.folder),
                                                                                              color: Colors.black,
                                                                                            )),
                                                                                          ),
                                                                                          Text("Photo Library")
                                                                                        ],
                                                                                      ),
                                                                                      Column(
                                                                                        children: [
                                                                                          CircleAvatar(
                                                                                            radius: 40,
                                                                                            backgroundColor: kColor,
                                                                                            // Theme.of(context)
                                                                                            //     .backgroundColor,
                                                                                            child: ClipOval(
                                                                                                child: Icon(
                                                                                              Icons.add_photo_alternate,
                                                                                              color: Colors.black,
                                                                                            )),
                                                                                          ),
                                                                                          Text("Choose File")
                                                                                        ],
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ));

                                                                    if (availableCameras() !=
                                                                        null) {
                                                                      attachment
                                                                              .text =
                                                                          ("Uploading")
                                                                              .toString();
                                                                    }
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
                                                                      prefixIcon: Icon(
                                                                        Icons
                                                                            .attachment,
                                                                        color: Color(
                                                                            0xff868686),
                                                                      ),
                                                                      border: OutlineInputBorder(borderSide: const BorderSide(color: Colors.black, style: BorderStyle.solid), borderRadius: BorderRadius.circular(10)),
                                                                      labelText: "Tap To Add Attachment",
                                                                      labelStyle: TextStyle(
                                                                        color: Color(
                                                                            0xff868686),
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
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 14),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Row(
                                          children: [
                                            TextButton(
                                                onPressed: () {
                                                  addDynamic();
                                                },
                                                child: Text(
                                                  "+ Add Another Claim",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontFamily: kfontFamily,
                                                      color: Colors.black),
                                                )),
                                          ],
                                        ),
                                      ),
                                      Visibility(
                                        child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                                backgroundColor: kprimary),
                                            onPressed: () {
                                              removeDynamic();
                                            },
                                            child: Text("Remove")),
                                        visible: listDynamic.isNotEmpty,
                                      )
                                    ],
                                  ),
                                ),
                                Column(
                                  children: [
                                    ListView.builder(
                                        physics: NeverScrollableScrollPhysics(),
                                        shrinkWrap: true,
                                        itemCount: listDynamic.length,
                                        itemBuilder: (_, index) =>
                                            listDynamic[index]),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 14.0,
                                  ),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 278,
                                          height: 48,
                                          child: ElevatedButton(
                                            onPressed: () {
                                              // _formKey.currentState!.validate();
                                              showModalBottomSheet(
                                                  context: context,
                                                  builder:
                                                      (context) => Container(
                                                            decoration: const BoxDecoration(
                                                                borderRadius: BorderRadius
                                                                    .all(Radius
                                                                        .circular(
                                                                            20))),
                                                            padding:
                                                                const EdgeInsets
                                                                        .symmetric(
                                                                    vertical:
                                                                        30),
                                                            height: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height *
                                                                0.45,
                                                            width: double
                                                                .maxFinite,
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
                                                                        fontSize:
                                                                            20,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w700,
                                                                        fontFamily:
                                                                            kfontFamily),
                                                                  ),
                                                                  Text(
                                                                    "Are you sure to submit this claim request?\nIf yes, tap Submit Claim below.",
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: TextStyle(
                                                                        color: Color(
                                                                            0xff868686),
                                                                        fontSize:
                                                                            14,
                                                                        fontFamily:
                                                                            kfontFamily),
                                                                  ),
                                                                  Padding(
                                                                    padding: const EdgeInsets
                                                                            .only(
                                                                        top:
                                                                            11.0),
                                                                    child: Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Container(
                                                                          height:
                                                                              MediaQuery.of(context).size.height * 0.065,
                                                                          child: ElevatedButton(
                                                                              style: ElevatedButton.styleFrom(backgroundColor: const Color(0xffee4961)),
                                                                              onPressed: () {
                                                                                Navigator.push(context, MaterialPageRoute(builder: (context) => const NewClaimCreated()));
                                                                              },
                                                                              child: const Text("Submit Claim")),
                                                                        ),
                                                                        const SizedBox(
                                                                          width:
                                                                              20,
                                                                        ),
                                                                        TextButton(
                                                                            onPressed:
                                                                                () {},
                                                                            child:
                                                                                const Text(
                                                                              "Save as Draft",
                                                                              style: TextStyle(color: Colors.black),
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
                                            onPressed: () {},
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
                          ),
                        ],
                      )),
                ))
          ]),
        ));
  }
}

class DynamicWidget extends StatefulWidget {
  DynamicWidget({super.key});

  @override
  State<DynamicWidget> createState() => _DynamicWidgetState();
}

class _DynamicWidgetState extends State<DynamicWidget> {
  CreateNewClaim remove = new CreateNewClaim();

  var currency1 = "currency";

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

  final currencyTypeList = ["INR", "USD", "KD", "AED", "SAR"];

  TextEditingController date = TextEditingController();

  TextEditingController costcenter = TextEditingController();

  TextEditingController attachment = TextEditingController();
  final _formKey1 = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 16),
        child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(8))),
            padding: EdgeInsets.all(24),
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                        hint: Text(
                          "Select One",
                          style: TextStyle(
                            color: Color(0xff868686),
                            fontFamily: kfontFamily,
                          ),
                        ),
                        items: claimTypeList1
                            .map((e1) => DropdownMenuItem(
                                  value: e1,
                                  child: Text(e1),
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
                                color: Color(0xff868686),
                                fontFamily: kfontFamily,
                              ),
                              border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.black,
                                      style: BorderStyle.solid),
                                  borderRadius: BorderRadius.circular(10)),
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
                          Row(
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
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                8))),
                                                // width: MediaQuery.of(context).size.width * 0.3,
                                                //height: MediaQuery.of(context).size.height * 0.5,
                                                child: Container(
                                                  padding: EdgeInsets.symmetric(
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
                                                        return Divider(
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
                                      suffixIcon: Icon(
                                        Icons.arrow_drop_down,
                                      ),
                                      floatingLabelBehavior:
                                          FloatingLabelBehavior.never,
                                      hintText: currencyTypeList[0],
                                      hintStyle: TextStyle(
                                        color: Color(0xff868686),
                                        fontFamily: kfontFamily,
                                      ),
                                      labelText: currencyTypeList[0],
                                      labelStyle: TextStyle(
                                        color: Color(0xff868686),
                                        fontFamily: kfontFamily,
                                      ),
                                      border: OutlineInputBorder()),
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
                                      border: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: Colors.black,
                                              style: BorderStyle.solid),
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(8),
                                              bottomRight: Radius.circular(8))),
                                      hintText: "",
                                      labelText: "Enter Amount Here",
                                      labelStyle: const TextStyle(
                                          color: Color(0xff868686)),
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
                                            colorScheme: ColorScheme.dark(
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
                                  suffixIcon:
                                      const Icon(Icons.calendar_month_outlined),
                                  border: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Colors.black,
                                          style: BorderStyle.solid),
                                      borderRadius: BorderRadius.circular(10)),
                                  hintText: "",
                                  labelText: "DD MM YYYY",
                                  labelStyle: TextStyle(
                                    color: Color(0xff868686),
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
                                  builder: (context) => Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.25,
                                        child: Center(
                                          child: Container(
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(30),
                                                    topRight:
                                                        Radius.circular(10))),
                                            padding: EdgeInsets.only(top: 45),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Column(
                                                  children: [
                                                    CircleAvatar(
                                                      radius: 40,
                                                      backgroundColor: kColor,
                                                      // Theme.of(context)
                                                      //     .backgroundColor,
                                                      child: ClipOval(
                                                          child: Icon(
                                                        Icons.add_a_photo,
                                                        color: Colors.black,
                                                      )),
                                                    ),
                                                    Text("Take photo")
                                                  ],
                                                ),
                                                Column(
                                                  children: [
                                                    CircleAvatar(
                                                      radius: 40,
                                                      backgroundColor: kColor,
                                                      // Theme.of(context)
                                                      //     .backgroundColor,
                                                      child: ClipOval(
                                                          child: IconButton(
                                                        onPressed: () async {
                                                          WidgetsFlutterBinding
                                                              .ensureInitialized();
                                                          final cameras =
                                                              await availableCameras();
                                                          final firstCamera =
                                                              cameras.first;
                                                          Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                  builder: (context) =>
                                                                      CameraImages(
                                                                          camera:
                                                                              firstCamera)));
                                                        },
                                                        icon:
                                                            Icon(Icons.folder),
                                                        color: Colors.black,
                                                      )),
                                                    ),
                                                    Text("Photo Library")
                                                  ],
                                                ),
                                                Column(
                                                  children: [
                                                    CircleAvatar(
                                                      radius: 40,
                                                      backgroundColor: kColor,
                                                      // Theme.of(context)
                                                      //     .backgroundColor,
                                                      child: ClipOval(
                                                          child: Icon(
                                                        Icons
                                                            .add_photo_alternate,
                                                        color: Colors.black,
                                                      )),
                                                    ),
                                                    Text("Choose File")
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ));

                              if (availableCameras() != null) {
                                attachment.text = ("Uploading").toString();
                              }
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
                                prefixIcon: Icon(
                                  Icons.attachment,
                                  color: Color(0xff868686),
                                ),
                                border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Colors.black,
                                        style: BorderStyle.solid),
                                    borderRadius: BorderRadius.circular(10)),
                                labelText: "Tap To Add Attachment",
                                labelStyle: TextStyle(
                                  color: Color(0xff868686),
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
