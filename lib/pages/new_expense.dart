import 'package:expense/pages/createnewclaim.dart';
import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({super.key});

  @override
  State<NewExpense> createState() => _NewExpenseState();
}

class _NewExpenseState extends State<NewExpense> {
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

Center _buildContents1(BuildContext context) {
  return Center(
      child: Container(
    decoration: const BoxDecoration(
        color: Color(0xFFF6F6F7),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20))),
    child: SingleChildScrollView(
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
                      "     No Expenses!",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 118.0),
            child: Column(
              children: [
                Container(
                  child: Image.asset(
                    "assets/images/expense.png",
                    scale: 2,
                  ),
                ),
                RichText(
                    textAlign: TextAlign.center,
                    strutStyle: StrutStyle(height: 1),
                    text: TextSpan(
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                        children: <InlineSpan>[
                          TextSpan(
                              text: "It's Empty Here!",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black)),
                          TextSpan(
                              text:
                                  "\n\nSubmit bills if you have spent\nbehalf of the company and get it reimbursed.\n\n")
                        ])),
                SizedBox(
                  width: 211,
                  height: 64,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: StadiumBorder(),
                          elevation: 17,
                          backgroundColor: Colors.redAccent),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => CreateNewClaim()));
                      },
                      child: Text(
                        " +  Create New Claim",
                        style: TextStyle(fontSize: 14),
                      )),
                )
              ],
            ),
          ),
        ],
      ),
    ),
  ));
}
