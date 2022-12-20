import 'package:flutter/material.dart';

class CreateNewClaim extends StatefulWidget {
  const CreateNewClaim({super.key});

  @override
  State<CreateNewClaim> createState() => _CreateNewClaimState();
}

class _CreateNewClaimState extends State<CreateNewClaim> {
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
            title: const Text(
              "Expenses",
              style: TextStyle(fontSize: 15),
            ),
            backgroundColor: Colors.redAccent,
            expandedHeight: 50,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: SafeArea(
                child: Stack(
                  children: <Widget>[
                    Container(
                        width: double.infinity,
                        child: Image.asset(
                          'assets/images/landing2.png',
                          fit: BoxFit.fitWidth,
                        )),
                    Container(
                        //alignment: Alignment.center,
                        width: double.infinity,
                        child: Image.asset(
                          'assets/images/landing3.png',
                          fit: BoxFit.fitWidth,
                        )),
                  ],
                ),
              ),
            ),
          ),
          SliverFillRemaining(
            child: _buildContents1(context),
          )
        ],
      ),
    );
  }
}

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
Center _buildContents1(BuildContext context) {
  Future<DateTime?> datepick() async {
    await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1999),
        lastDate: DateTime(2100));
  }

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
            padding: const EdgeInsets.only(top: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Text(
                      "     Create New Claim Request",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
            child: Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Legal Entity\n"),
                          TextFormField(
                            readOnly: true,
                            validator: (msg) {
                              if (msg!.isEmpty) {
                                return "Enter Name";
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.black,
                                        style: BorderStyle.solid),
                                    borderRadius: BorderRadius.circular(10)),
                                hintText: "Kaar Technologies India Pvt Ltd",
                                labelText: "Kaar Technologies India Pvt Ltd",
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.never),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 1.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Cost Center *\n"),
                          Container(
                            height: 58,
                            child: TextFormField(
                              readOnly: true,
                              onTap: () {
                                showModalBottomSheet(
                                    context: context,
                                    builder: (context) {
                                      return Container(
                                        child: ListView.builder(
                                          itemCount: costCenterList.length,
                                          itemBuilder: ((context, index) {
                                            return GestureDetector(
                                                child: ListTile(
                                              leading: Icon(Icons.food_bank),
                                              title:
                                                  Text(costCenterList[index]),
                                            ));
                                          }),
                                        ),
                                      );
                                    });
                              },
                              decoration: InputDecoration(
                                  labelText: "Select One",
                                  labelStyle: TextStyle(color: Colors.blueGrey),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10))),
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
                        padding: EdgeInsets.only(top: 70),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Claim Type *\n"),
                            Container(
                              width: 344,
                              height: 58,
                              child: DropdownButtonFormField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10))),
                                hint: Text(
                                  "Select One",
                                  style: TextStyle(color: Colors.blueGrey),
                                ),
                                items: claimTypeList
                                    .map((e1) => DropdownMenuItem(
                                          child: Text(e1),
                                          value: e1,
                                        ))
                                    .toList(),
                                onChanged: (val1) {},
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 12.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Description *\n"),
                                  TextFormField(
                                    onTap: (() {}),
                                    maxLines: 3,
                                    decoration: InputDecoration(
                                      hintText: "Enter Here",
                                      hintStyle:
                                          TextStyle(color: Colors.blueGrey),
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.black,
                                              style: BorderStyle.solid),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Amount *\n"),
                                  TextFormField(
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.black,
                                                style: BorderStyle.solid),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        hintText: "",
                                        labelText: "Enter Amount Here",
                                        labelStyle:
                                            TextStyle(color: Colors.blueGrey),
                                        floatingLabelBehavior:
                                            FloatingLabelBehavior.never),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Billed Date *\n"),
                                  TextFormField(
                                    readOnly: true,
                                    onTap: () async {
                                      datepick();
                                    },
                                    decoration: InputDecoration(
                                        suffixIcon:
                                            Icon(Icons.calendar_month_outlined),
                                        border: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.black,
                                                style: BorderStyle.solid),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        hintText: "",
                                        labelText: "DD MM YYYY",
                                        labelStyle:
                                            TextStyle(color: Colors.blueGrey),
                                        floatingLabelBehavior:
                                            FloatingLabelBehavior.never),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Attachments If Any\n",
                                      style: TextStyle(color: Colors.black)),
                                  TextFormField(
                                    readOnly: true,
                                    onTap: () async {},
                                    decoration: InputDecoration(
                                        prefixIcon: Icon(Icons.attach_file),
                                        border: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.black,
                                                style: BorderStyle.solid),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        hintText: "Uploading",
                                        labelText: "Tap To Add Attachment",
                                        labelStyle:
                                            TextStyle(color: Colors.blueGrey),
                                        floatingLabelBehavior:
                                            FloatingLabelBehavior.never),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )),
                  ],
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 23.0, left: 8),
            child: Align(
              alignment: Alignment.topLeft,
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "+ Add Another Claim",
                    style: TextStyle(color: Colors.black),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 14.0, top: 8),
            child: Align(
              alignment: Alignment.topLeft,
              child: Row(
                children: [
                  Container(
                    width: 278,
                    height: 48,
                    child: ElevatedButton(
                      onPressed: () {
                        _formKey.currentState!.validate();
                      },
                      child: Text("Submit Claim Request"),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.redAccent),
                    ),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Clear",
                        style: TextStyle(fontSize: 14, color: Colors.black),
                      ))
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30,
          )
        ],
      ),
    ),
  ));
}
