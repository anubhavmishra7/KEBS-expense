import 'package:expense/pages/casestudy.dart';
import 'package:expense/pages/home_casestudy.dart';
import 'package:expense/pages/new_expense.dart';
import 'package:expense/utilities/style.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  //List<String> list = ["Finance", "Account", "Project"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F6F7),
      body: CustomScrollView(
        // primary:
        slivers: <Widget>[
          SliverAppBar(
            automaticallyImplyLeading: false,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  //decoration: BoxDecoration(),
                  child: Image.asset('assets/images/landing1.png'),
                ),
                Text(
                  "KEBS",
                  style: kTitleStyle,
                ),
                const SizedBox(
                  width: 85,
                ),
                Container(
                  child: Image.asset('assets/images/search.png'),
                ),
                Container(
                  child: Image.asset('assets/images/doc.png'),
                ),
                Container(
                  child: Image.asset('assets/images/notifi.png'),
                )
              ],
            ),
            bottom: PreferredSize(
                preferredSize: const Size.fromHeight(20),
                child: Container(
                  //color: Colors.yellow,
                  decoration: const BoxDecoration(
                      color: Color(0xFFF6F6F7),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  width: double.maxFinite,
                  padding: const EdgeInsets.only(top: 5, bottom: 10),
                  child: Center(
                      child: Container(
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(131, 158, 158, 158),
                        borderRadius: BorderRadius.circular(10)),
                    width: 60,
                    height: 7,
                  )),
                )),
            iconTheme: const IconThemeData(
              color: Colors.black,
            ),
            backgroundColor: Colors.redAccent,
            pinned: true,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              // title: Text(
              //   'Portfolio',
              //   style: TextStyle(color: Colors.black),
              // ),
              background: Container(
                color: const Color.fromARGB(175, 255, 82, 82),
                child: Stack(
                  children: <Widget>[
                    Container(
                        width: double.maxFinite,
                        child: Image.asset('assets/images/landing2.png',
                            fit: BoxFit.fill)),
                    Container(
                      alignment: Alignment.topRight,
                      //color: Colors.blue,
                      //width: double.maxFinite,
                      child: Image.asset(
                        'assets/images/landing3.png',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 75.0, horizontal: 25),
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Welcome Back,John!',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            const SizedBox(
                              height: 7,
                            ),
                            const Text(
                              '02 November 2022',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            const Text(
                              'Pending Approvals',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 180.0),
                      child: Container(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 15,
                              ),
                              Container(
                                width: 116,
                                height: 104,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFDC3E4B),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: const Center(
                                    child: Text(
                                  'Approvals',
                                  style: TextStyle(color: Colors.white),
                                )),

                                //color: Colors.yellow,

                                // Padding(
                                //   padding: const EdgeInsets.only(top: 128.0),
                                //   child: Row(
                                //     children: [
                                //       Container(
                                //         decoration: ,
                                //         color: Colors.red,
                                //       )
                                //     ],
                                //   ),
                                //   // child: GridView.builder(
                                //   //   itemCount: list.length,
                                //   //   itemBuilder: (context, index) {
                                //   //     return Card(
                                //   //       color: Colors.red,
                                //   //     );
                                //   //   },
                                //   //   gridDelegate:
                                //   //       SliverGridDelegateWithFixedCrossAxisCount(
                                //   //           crossAxisCount: 3),
                                //   // ),
                                // ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                width: 116,
                                height: 104,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFDC3E4B),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: const Center(
                                    child: Text('Leave\nRequest',
                                        style: TextStyle(color: Colors.white))),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                width: 116,
                                height: 104,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFDC3E4B),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: const Center(
                                    child: Text('Tasks',
                                        style: TextStyle(color: Colors.white))),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                width: 116,
                                height: 104,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFDC3E4B),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: const Center(
                                    child: Text('Varience',
                                        style: TextStyle(color: Colors.white))),
                              ),
                              SizedBox(
                                width: 25,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    // Positioned(
                    //     top: 100,
                    //     left: 20,
                    //     child: Container(
                    //       child: const Text(
                    //         'Welcome Back,John!',
                    //         style: TextStyle(color: Colors.white, fontSize: 20),
                    //       ),
                    //     )),
                    // Positioned(
                    //     top: 130,
                    //     left: 20,
                    //     child: Container(
                    //       child: const Text(
                    //         '02 November 2022',
                    //         style: TextStyle(color: Colors.white, fontSize: 12),
                    //       ),
                    //     )),
                    // Positioned(
                    //   // top: 150,
                    //   child: Padding(
                    //     padding: const EdgeInsets.only(top: 198.0),
                    //     child:

                    //   ),
                    // )
                  ],
                ),
              ),
            ),
          ),
          SliverFillRemaining(
            child: _buildContent(),
          ),
        ],
      ),
      floatingActionButton: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 600.0, left: 40),
          child: SizedBox(
            // decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            width: 130,
            child: FloatingActionButton(
              elevation: 20,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40)),
              backgroundColor: const Color(0xFFEE4961),
              onPressed: () {},
              child: const Text('+ Create'),
            ),
          ),
        ),
      ),
    );
  }

  Center _buildContent() {
    return Center(
        child: SingleChildScrollView(
      child: Container(
        alignment: Alignment.topCenter,
        padding: const EdgeInsets.all(12.0),
        decoration: const BoxDecoration(color: Color(0xFFF6F6F7)),
        child: Column(children: <Widget>[
          Container(
            child: Card(
              margin: EdgeInsets.zero,
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Container(
                width: double.maxFinite,
                height: MediaQuery.of(context).size.height * 0.24,
                margin: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.030,
                    vertical: MediaQuery.of(context).size.height * 0.03),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "        Finance",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 11.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              CircleAvatar(
                                radius: 26,
                                backgroundColor: Color(0xFFF6F6F7),
                                child: ClipOval(
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.dashboard,
                                            color: Colors.black))),
                              ),
                              Text(
                                "Dashboard",
                                style: TextStyle(fontSize: 10),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              CircleAvatar(
                                radius: 26,
                                backgroundColor: const Color(0xFFF6F6F7),
                                child: ClipOval(
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: const ImageIcon(
                                          AssetImage("assets/images/icon1.png"),
                                          color: Colors.black,
                                        ))),
                              ),
                              Text(
                                "MIS",
                                style: TextStyle(fontSize: 10),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              CircleAvatar(
                                radius: 26,
                                backgroundColor: Color(0xFFF6F6F7),
                                child: ClipOval(
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: const ImageIcon(
                                          AssetImage("assets/images/icon2.png"),
                                          color: Colors.black,
                                        ))),
                              ),
                              const Text(
                                "Cash Flow",
                                style: TextStyle(fontSize: 10),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              CircleAvatar(
                                radius: 26,
                                backgroundColor: Color(0xFFF6F6F7),
                                child: ClipOval(
                                    child: IconButton(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                       NewExpense()));
                                        },
                                        icon: ImageIcon(
                                          AssetImage("assets/images/icon3.png"),
                                          color: Colors.black,
                                        ))),
                              ),
                              Text(
                                "Expenses",
                                style: TextStyle(fontSize: 10),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              CircleAvatar(
                                radius: 26,
                                backgroundColor: Color(0xFFF6F6F7),
                                child: ClipOval(
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: ImageIcon(
                                          AssetImage("assets/images/icon4.png"),
                                          color: Colors.black,
                                        ))),
                              ),
                              Text(
                                "Invoices",
                                style: TextStyle(fontSize: 10),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              CircleAvatar(
                                radius: 26,
                                backgroundColor: Color(0xFFF6F6F7),
                                child: ClipOval(
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: ImageIcon(
                                          AssetImage("assets/images/icon5.png"),
                                          color: Colors.black,
                                        ))),
                              ),
                              Text(
                                "General Ledges",
                                style: TextStyle(fontSize: 10),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              CircleAvatar(
                                radius: 26,
                                backgroundColor: Color(0xFFF6F6F7),
                                child: ClipOval(
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: ImageIcon(
                                          AssetImage("assets/images/icon6.png"),
                                          color: Colors.black,
                                        ))),
                              ),
                              Text(
                                "Dashboard",
                                style: TextStyle(fontSize: 10),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              CircleAvatar(
                                radius: 26,
                                backgroundColor: Color(0xFFF6F6F7),
                                child: ClipOval(
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: ImageIcon(
                                          AssetImage("assets/images/icon7.png"),
                                          color: Colors.black,
                                        ))),
                              ),
                              Text(
                                "Dashboard",
                                style: TextStyle(fontSize: 10),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            alignment: Alignment.topCenter,
            child: Card(
              margin: EdgeInsets.zero,
              elevation: 0,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Container(
                width: double.maxFinite,
                height: MediaQuery.of(context).size.height * 0.14,
                margin: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.030,
                    vertical: MediaQuery.of(context).size.height * 0.03),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: const Text(
                        "        Human Resources",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 11.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              CircleAvatar(
                                radius: 26,
                                backgroundColor: const Color(0xFFF6F6F7),
                                child: ClipOval(
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.dashboard,
                                            color: Colors.black))),
                              ),
                              Text(
                                "PMS",
                                style: TextStyle(fontSize: 10),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              CircleAvatar(
                                radius: 26,
                                backgroundColor: Color(0xFFF6F6F7),
                                child: ClipOval(
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: ImageIcon(
                                          AssetImage("assets/images/icon1.png"),
                                          color: Colors.black,
                                        ))),
                              ),
                              Text(
                                "Timesheet",
                                style: TextStyle(fontSize: 10),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              CircleAvatar(
                                radius: 26,
                                backgroundColor: Color(0xFFF6F6F7),
                                child: ClipOval(
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: ImageIcon(
                                          AssetImage("assets/images/icon2.png"),
                                          color: Colors.black,
                                        ))),
                              ),
                              Text(
                                "EMP 360",
                                style: TextStyle(fontSize: 10),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              CircleAvatar(
                                radius: 26,
                                backgroundColor: Color(0xFFF6F6F7),
                                child: ClipOval(
                                    child: IconButton(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const HomeCasestudy()));
                                        },
                                        icon: ImageIcon(
                                          AssetImage("assets/images/icon3.png"),
                                          color: Colors.black,
                                        ))),
                              ),
                              Text(
                                "Leave Application",
                                style: TextStyle(fontSize: 10),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            alignment: Alignment.topCenter,
            child: Card(
              margin: EdgeInsets.zero,
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Container(
                width: double.maxFinite,
                height: MediaQuery.of(context).size.height * 0.14,
                margin: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.030,
                    vertical: MediaQuery.of(context).size.height * 0.03),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "        Project Management",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 11.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              CircleAvatar(
                                radius: 26,
                                backgroundColor: Color(0xFFF6F6F7),
                                child: ClipOval(
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.dashboard,
                                            color: Colors.black))),
                              ),
                              Text(
                                "PMS",
                                style: TextStyle(fontSize: 10),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              CircleAvatar(
                                radius: 26,
                                backgroundColor: Color(0xFFF6F6F7),
                                child: ClipOval(
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: ImageIcon(
                                          AssetImage("assets/images/icon1.png"),
                                          color: Colors.black,
                                        ))),
                              ),
                              Text(
                                "Timesheet",
                                style: TextStyle(fontSize: 10),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              CircleAvatar(
                                radius: 26,
                                backgroundColor: Color(0xFFF6F6F7),
                                child: ClipOval(
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: ImageIcon(
                                          AssetImage("assets/images/icon2.png"),
                                          color: Colors.black,
                                        ))),
                              ),
                              Text(
                                "EMP 360",
                                style: TextStyle(fontSize: 10),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              CircleAvatar(
                                radius: 26,
                                backgroundColor: Color(0xFFF6F6F7),
                                child: ClipOval(
                                    child: IconButton(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const HomeCasestudy()));
                                        },
                                        icon: ImageIcon(
                                          AssetImage("assets/images/icon3.png"),
                                          color: Colors.black,
                                        ))),
                              ),
                              Text(
                                "Leave Application",
                                style: TextStyle(fontSize: 10),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            alignment: Alignment.topCenter,
            child: Card(
              margin: EdgeInsets.zero,
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Container(
                width: double.maxFinite,
                height: MediaQuery.of(context).size.height * 0.14,
                margin: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.030,
                    vertical: MediaQuery.of(context).size.height * 0.03),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "        Ticketing System",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 11.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              CircleAvatar(
                                radius: 26,
                                backgroundColor: Color(0xFFF6F6F7),
                                child: ClipOval(
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.dashboard,
                                            color: Colors.black))),
                              ),
                              Text(
                                "PMS",
                                style: TextStyle(fontSize: 10),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              CircleAvatar(
                                radius: 26,
                                backgroundColor: Color(0xFFF6F6F7),
                                child: ClipOval(
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: ImageIcon(
                                          AssetImage("assets/images/icon1.png"),
                                          color: Colors.black,
                                        ))),
                              ),
                              Text(
                                "Timesheet",
                                style: TextStyle(fontSize: 10),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              CircleAvatar(
                                radius: 26,
                                backgroundColor: Color(0xFFF6F6F7),
                                child: ClipOval(
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: ImageIcon(
                                          AssetImage("assets/images/icon2.png"),
                                          color: Colors.black,
                                        ))),
                              ),
                              Text(
                                "EMP 360",
                                style: TextStyle(fontSize: 10),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              CircleAvatar(
                                radius: 26,
                                backgroundColor: Color(0xFFF6F6F7),
                                child: ClipOval(
                                    child: IconButton(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const HomeCasestudy()));
                                        },
                                        icon: ImageIcon(
                                          AssetImage("assets/images/icon3.png"),
                                          color: Colors.black,
                                        ))),
                              ),
                              Text(
                                "Leave Application",
                                style: TextStyle(fontSize: 10),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Positioned(
          //     top: 0,
          //     child: Image.asset(
          //       'assets/images/landing4.png',
          //       scale: 1.06,
          //     )),
          // Positioned(
          //     top: 147,
          //     left: 116,
          //     child: IconButton(
          //         icon: const Icon(Icons.work),
          //         onPressed: () {
          //           Navigator.push(
          //               context,
          //               MaterialPageRoute(
          //                   builder: (context) => const HomeCasestudy()));
          //         })),
          // Positioned(
          //   top: 190,
          //   left: 10,
          //   child: Image.asset("assets/images/landing5.png",
          //       fit: BoxFit.contain, height: 392, width: 360),
          // )

          //Positioned(child: Icon(Icons.work))
        ]),
      ),
    ));
  }
}

// import 'package:expense/pages/homepage.dart';
// import 'package:expense/utilities/appbar.dart';
// import 'package:expense/utilities/style.dart';
// import 'package:flutter/material.dart';

// class Dashboard extends StatefulWidget {
//   const Dashboard({super.key});

//   @override
//   State<Dashboard> createState() => _DashboardState();
// }

// class _DashboardState extends State<Dashboard> {
//   List<String> list = ["Expense", "HR"];
//   int currentIndex = 0;
//   void onTap(int index) {
//     setState(() {
//       currentIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         // appBar: const PreferredSize(
//         //   child: ExpenseAppBar(),
//         //   preferredSize: Size.fromHeight(60),
//         // ),
//         // drawer: const Drawer(
//         //   child: Center(child: Text("Profile")),
//         // ),
//         // bottomNavigationBar: BottomNavigationBar(
//         //     onTap: onTap,
//         //     selectedFontSize: 0,
//         //     unselectedFontSize: 0,
//         //     currentIndex: currentIndex,
//         //     selectedItemColor: Colors.red,
//         //     unselectedItemColor: Colors.grey.shade400,
//         //     type: BottomNavigationBarType.shifting,
//         //     //selectedItemColor: kCupertinoModalBarrierColor,
//         //     backgroundColor: Colors.white24,
//         //     items: const <BottomNavigationBarItem>[
//         //       BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
//         //       BottomNavigationBarItem(
//         //           icon: Icon(Icons.timelapse), label: 'Timesheet'),
//         //       BottomNavigationBarItem(
//         //           icon: Icon(Icons.work_history_outlined), label: 'Project'),
//         //       BottomNavigationBarItem(
//         //           icon: Icon(Icons.settings), label: 'Settings')
//         //     ]),
//         body: CustomScrollView(
//       slivers: [
//         SliverAppBar(
//           expandedHeight: 300,
//           //backgroundColor: Colors.redAccent,
//           flexibleSpace: FlexibleSpaceBar(
//             background: Image.asset(
//               'assets/images/kebs_logo.jpg',
//               width: double.maxFinite,
//               fit: BoxFit.cover,
//             ),
//           ),
//         ),
//         const SliverToBoxAdapter(
//           child: Text('dfbvdkfbbvjkkvbjv'),
//         )
//       ],
//     )

//         //  SafeArea(
//         //   child: Padding(
//         //     padding: const EdgeInsets.all(8.0),
//         //     child: Container(
//         //       //color: Colors.red,
//         //       child: Row(
//         //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         //         children: <Widget>[
//         //           GestureDetector(
//         //             onTap: () {
//         //               Navigator.push(
//         //                   context,
//         //                   MaterialPageRoute(
//         //                       builder: (context) => const HomePage()));
//         //             },
//         //             child: SizedBox(
//         //               height: 180,
//         //               width: 180,
//         //               child: Card(
//         //                 elevation: 8,
//         //                 shadowColor: Colors.grey,
//         //                 color: Colors.white,

//         //                 child: Column(
//         //                   // mainAxisAlignment: MainAxisAlignment.center,
//         //                   children: <Widget>[
//         //                     Image.asset(
//         //                       'assets/images/time_stats.png',
//         //                       height: 140,
//         //                       width: 75,
//         //                     ),

//         //                     Text(
//         //                       "HR",
//         //                       textAlign: TextAlign.center,
//         //                       style: kTextStyle,
//         //                     ),

//         //                     //Icon(Icons.stop),
//         //                   ],
//         //                 ),

//         //                 // (
//         //                 // GridView.builder(
//         //                 //   itemCount: list.length,
//         //                 //   itemBuilder: ((context, index) {
//         //                 //     return Padding(
//         //                 //       padding: const EdgeInsets.all(5.0),
//         //                 //       child:
//         //                 //       Card(
//         //                 //         color: Colors.white24,

//         //                 //         child: Column(
//         //                 //           // mainAxisAlignment: MainAxisAlignment.center,
//         //                 //           children: <Widget>[
//         //                 //             Image.asset(
//         //                 //               'assets/images/time_stats.png',
//         //                 //               height: 140,
//         //                 //               width: 75,
//         //                 //             ),
//         //                 //             // Text(
//         //                 //             //   list[index],
//         //                 //             //   textAlign: TextAlign.center,
//         //                 //             //   style: const TextStyle(
//         //                 //             //       fontSize: 20,
//         //                 //             //       fontWeight: FontWeight.bold,
//         //                 //             //       color: Colors.black38),
//         //                 //             // ),
//         //                 //             const Text(
//         //                 //               "Expense",
//         //                 //               textAlign: TextAlign.center,
//         //                 //               style: TextStyle(
//         //                 //                   fontSize: 20,
//         //                 //                   fontWeight: FontWeight.bold,
//         //                 //                   color: Colors.black38),
//         //                 //             ),

//         //                 //             //Icon(Icons.stop),
//         //                 //           ],
//         //                 //         ),

//         //                 //         // child: Card(
//         //                 //         //     color: Colors.red,
//         //                 //         //     child: Column(
//         //                 //         //       children: [Icon(Icons.stop), Text(list[index])],
//         //                 //         //     )),
//         //                 //       ),
//         //                 //     );
//         //                 //   }),
//         //                 //   gridDelegate:
//         //                 //       const SliverGridDelegateWithFixedCrossAxisCount(
//         //                 //           crossAxisCount: 2)
//         //                 //           )
//         //               ),
//         //             ),
//         //           ),
//         //           SizedBox(
//         //             height: 180,
//         //             width: 180,
//         //             child: Card(
//         //               elevation: 8,
//         //               shadowColor: Colors.grey,
//         //               color: Colors.white,
//         //               child: Column(
//         //                 // mainAxisAlignment: MainAxisAlignment.center,
//         //                 children: <Widget>[
//         //                   Image.asset(
//         //                     'assets/images/time_stats.png',
//         //                     height: 140,
//         //                     width: 75,
//         //                   ),

//         //                   Text("Expense",
//         //                       textAlign: TextAlign.center, style: kTextStyle),

//         //                   //Icon(Icons.stop),
//         //                 ],
//         //               ),
//         //             ),
//         //           ),
//         //         ],
//         //       ),
//         //     ),
//         //   ),
//         // ),
//         );
//   }
// }





// import 'package:kcsm/pages/casestudy.dart';
// import 'package:kcsm/pages/home_casestudy.dart';
// import 'package:kcsm/utilities/style.dart';
// import 'package:flutter/material.dart';

// class Dashboard extends StatefulWidget {
//   const Dashboard({super.key});

//   @override
//   State<Dashboard> createState() => _DashboardState();
// }

// class _DashboardState extends State<Dashboard> {
//   //List<String> list = ["Finance", "Account", "Project"];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: CustomScrollView(
//         // primary:

//         slivers: <Widget>[
//           //Image.asset('assets/images/landing2.png'),
//           // SliverGrid(
//           //     delegate: SliverChildBuilderDelegate((context, index) {
//           //       Container(
//           //         color: Colors.yellow,
//           //         child: Text(
//           //           'Welcome back',
//           //           style: kTextStyle,
//           //         ),
//           //       );
//           //     }),
//           //     gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
//           //         maxCrossAxisExtent: 200)
//           //         ),
//           SliverAppBar(
//             automaticallyImplyLeading: false,
//             title: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Container(
//                   //decoration: BoxDecoration(),
//                   child: Image.asset('assets/images/landing1.png'),
//                 ),
//                 Text(
//                   "KEBS",
//                   style: kTitleStyle,
//                 ),
//                 const SizedBox(
//                   width: 85,
//                 ),
//                 Container(
//                   child: Image.asset('assets/images/search.png'),
//                 ),
//                 Container(
//                   child: Image.asset('assets/images/doc.png'),
//                 ),
//                 Container(
//                   child: Image.asset('assets/images/notifi.png'),
//                 )
//               ],
//             ),
//             bottom: PreferredSize(
//                 preferredSize: const Size.fromHeight(20),
//                 child: Container(
//                   //color: Colors.yellow,
//                   decoration: const BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.only(
//                           topLeft: Radius.circular(20),
//                           topRight: Radius.circular(20))),
//                   width: double.maxFinite,
//                   padding: const EdgeInsets.only(top: 5, bottom: 10),
//                   child: Center(
//                       child: Container(
//                     decoration: BoxDecoration(
//                         color: const Color.fromARGB(131, 158, 158, 158),
//                         borderRadius: BorderRadius.circular(10)),
//                     width: 60,
//                     height: 7,
//                   )),
//                 )),
//             iconTheme: const IconThemeData(
//               color: Colors.black,
//             ),
//             backgroundColor: Colors.redAccent,
//             pinned: true,
//             expandedHeight: 300,
//             flexibleSpace: FlexibleSpaceBar(
//               // title: Text(
//               //   'Portfolio',
//               //   style: TextStyle(color: Colors.black),
//               // ),
//               background: Container(
//                 color: const Color.fromARGB(175, 255, 82, 82),
//                 child: Stack(
//                   children: <Widget>[
//                     Container(
//                         alignment: Alignment.topRight,
//                         //color: Colors.yellow,
//                         child: Image.asset('assets/images/landing2.png')),
//                     Container(
//                       alignment: Alignment.topRight,
//                       //color: Colors.blue,
//                       //width: double.maxFinite,
//                       child: Image.asset(
//                         'assets/images/landing3.png',
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.symmetric(
//                           vertical: 98.0, horizontal: 25),
//                       child: Container(
//                         child: Column(
//                           children:const [
//                             Text(
//                               'Welcome Back,John!',
//                               style:
//                                   TextStyle(color: Colors.white, fontSize: 20),
//                             ),
//                             SizedBox(
//                               height: 7,
//                             ),
//                             Text(
//                               '02 November 2022',
//                               style:
//                                   TextStyle(color: Colors.white, fontSize: 12),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(top: 190.0),
//                       child: Container(
//                         child: Row(
//                           //crossAxisAlignment: CrossAxisAlignment.center,
//                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                           children: [
//                             Container(
//                               width: 100,
//                               height: 100,
//                               decoration: BoxDecoration(
//                                 color: const Color.fromARGB(210, 214, 35, 22),
//                                 borderRadius: BorderRadius.circular(20),
//                               ),
//                               child: const Center(
//                                   child: Text(
//                                 'Approvals',
//                                 style: TextStyle(color: Colors.white),
//                               )),

//                               //color: Colors.yellow,

//                               // Padding(
//                               //   padding: const EdgeInsets.only(top: 128.0),
//                               //   child: Row(
//                               //     children: [
//                               //       Container(
//                               //         decoration: ,
//                               //         color: Colors.red,
//                               //       )
//                               //     ],
//                               //   ),
//                               //   // child: GridView.builder(
//                               //   //   itemCount: list.length,
//                               //   //   itemBuilder: (context, index) {
//                               //   //     return Card(
//                               //   //       color: Colors.red,
//                               //   //     );
//                               //   //   },
//                               //   //   gridDelegate:
//                               //   //       SliverGridDelegateWithFixedCrossAxisCount(
//                               //   //           crossAxisCount: 3),
//                               //   // ),
//                               // ),
//                             ),
//                             Container(
//                               child: const Center(
//                                   child: Text('Leave\nRequest',
//                                       style: TextStyle(color: Colors.white))),
//                               width: 100,
//                               height: 100,
//                               decoration: BoxDecoration(
//                                 color: const Color.fromARGB(210, 214, 35, 22),
//                                 borderRadius: BorderRadius.circular(20),
//                               ),
//                             ),
//                             Container(
//                               width: 100,
//                               height: 100,
//                               child: const Center(
//                                   child: Text('Tasks',
//                                       style: TextStyle(color: Colors.white))),
//                               decoration: BoxDecoration(
//                                 color: const Color.fromARGB(210, 214, 35, 22),
//                                 borderRadius: BorderRadius.circular(20),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                     // Positioned(
//                     //     top: 100,
//                     //     left: 20,
//                     //     child: Container(
//                     //       child: const Text(
//                     //         'Welcome Back,John!',
//                     //         style: TextStyle(color: Colors.white, fontSize: 20),
//                     //       ),
//                     //     )),
//                     // Positioned(
//                     //     top: 130,
//                     //     left: 20,
//                     //     child: Container(
//                     //       child: const Text(
//                     //         '02 November 2022',
//                     //         style: TextStyle(color: Colors.white, fontSize: 12),
//                     //       ),
//                     //     )),
//                     // Positioned(
//                     //   // top: 150,
//                     //   child: Padding(
//                     //     padding: const EdgeInsets.only(top: 198.0),
//                     //     child:

//                     //   ),
//                     // )
//                   ],
//                 ),
//               ),
//             ),
//           ),
//           SliverFillRemaining(
//             child: _buildContent(),
//           ),
//         ],
//       ),
//       floatingActionButton: Center(
//         child: Padding(
//           padding: const EdgeInsets.only(top: 600.0, left: 40),
//           child: SizedBox(
//             // decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
//             width: 130,
//             child: FloatingActionButton(
//               elevation: 20,
//               shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(40)),
//               backgroundColor: Colors.redAccent,
//               onPressed: () {},
//               child: const Text('+ Create'),
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Center _buildContent() {
//     return Center(
//       child: SingleChildScrollView(
//         child: Container(
//           decoration: const BoxDecoration(color: Colors.white),
//           child: Column(
//               //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: <Widget>[
//                 Container(
//                     width: double.maxFinite,
//                     //color: Colors.yellow,
//                     alignment: Alignment.topCenter,
//                     child: Stack(children: [
//                       Image.asset(
//                         'assets/images/landing6.png',
//                         fit: BoxFit.contain,
//                       ),
//                       Column(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: [
//                           Row(
//                             //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: const [
//                               SizedBox(
//                                 width: 10,
//                               ),
//                               Icon(Icons.wallet),
//                               Text(
//                                 "  CRM",
//                                 style: TextStyle(
//                                     fontWeight: FontWeight.bold, fontSize: 18),
//                               )
//                             ],
//                           ),
//                           const SizedBox(
//                             height: 80,
//                           ),
//                           Center(
//                             child: Container(
//                               child: Row(
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceAround,
//                                 children: [
//                                   Column(
//                                     children: const [
//                                       // Icon(
//                                       //   Icons.dashboard,
//                                       //   size: 40,
//                                       // ),
//                                       // Text("Dashboard"),
//                                       Icon(
//                                         Icons.contact_page,
//                                         size: 40,
//                                       ),
//                                       Text("Contacts")
//                                     ],
//                                   ),
//                                   Column(
//                                     children: const [
//                                       Icon(
//                                         Icons.leaderboard,
//                                         size: 40,
//                                       ),
//                                       Text("Leads")
//                                     ],
//                                   ),
//                                   Column(
//                                     children: [
//                                       // Icon(
//                                       //   Icons.summarize,
//                                       //   size: 40,
//                                       // ),
//                                       // Text("Reports"),
//                                       IconButton(
//                                           onPressed: () {
//                                             Navigator.push(
//                                                 context,
//                                                 MaterialPageRoute(
//                                                     builder: (context) =>
//                                                         const HomeCasestudy()));
//                                           },
//                                           icon: const Icon(
//                                             Icons.folder_shared,
//                                             color: Colors.redAccent,
//                                             size: 40,
//                                           )),

//                                       const Text("Customer\nCase Study")
//                                     ],
//                                   ),
//                                   Column(
//                                     children: const [
//                                       Icon(Icons.vpn_key, size: 40),
//                                       Text("Oppurtunities")
//                                     ],
//                                   )
//                                 ],
//                               ),
//                             ),
//                           ),
//                           const SizedBox(
//                             height: 20,
//                           ),
//                           // Row(
//                           //   crossAxisAlignment: CrossAxisAlignment.start,
//                           //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                           //   children: [
//                           //     Column(
//                           //       children: [],
//                           //     ),
//                           //     Column(
//                           //       children: [],
//                           //     ),
//                           //   ],
//                           // )
//                         ],
//                       ),
//                     ])),

//                 Container(
//                     //color: Colors.yellow,
//                     //alignment: Alignment.topCenter,
//                     child: Image.asset(
//                   'assets/images/landing5.png',
//                   fit: BoxFit.contain,
//                   width: MediaQuery.of(context).size.width * 0.95,
//                 )),

//                 // Positioned(top: 0, child: Image.asset('assets/images/landing6.png')),
//                 // Positioned(
//                 //     top: 156,
//                 //     left: 125,
//                 //     child: IconButton(
//                 //         icon: const Icon(Icons.work),
//                 //         onPressed: () {
//                 //           Navigator.push(context,
//                 //               MaterialPageRoute(builder: (context) => HomeCasestudy()));
//                 //         })),
//                 // Positioned(
//                 //   top: 190,
//                 //   left: 10,
//                 //   child: Image.asset("assets/images/landing5.png",
//                 //       fit: BoxFit.contain, height: 392, width: 360),
//                 // )

//                 //Positioned(child: Icon(Icons.work))
//               ]),
//         ),
//       ),
//     );
//   }
// }

// // import 'package:expense/pages/homepage.dart';
// // import 'package:expense/utilities/appbar.dart';
// // import 'package:expense/utilities/style.dart';
// // import 'package:flutter/material.dart';

// // class Dashboard extends StatefulWidget {
// //   const Dashboard({super.key});

// //   @override
// //   State<Dashboard> createState() => _DashboardState();
// // }

// // class _DashboardState extends State<Dashboard> {
// //   List<String> list = ["Expense", "HR"];
// //   int currentIndex = 0;
// //   void onTap(int index) {
// //     setState(() {
// //       currentIndex = index;
// //     });
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //         // appBar: const PreferredSize(
// //         //   child: ExpenseAppBar(),
// //         //   preferredSize: Size.fromHeight(60),
// //         // ),
// //         // drawer: const Drawer(
// //         //   child: Center(child: Text("Profile")),
// //         // ),
// //         // bottomNavigationBar: BottomNavigationBar(
// //         //     onTap: onTap,
// //         //     selectedFontSize: 0,
// //         //     unselectedFontSize: 0,
// //         //     currentIndex: currentIndex,
// //         //     selectedItemColor: Colors.red,
// //         //     unselectedItemColor: Colors.grey.shade400,
// //         //     type: BottomNavigationBarType.shifting,
// //         //     //selectedItemColor: kCupertinoModalBarrierColor,
// //         //     backgroundColor: Colors.white24,
// //         //     items: const <BottomNavigationBarItem>[
// //         //       BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
// //         //       BottomNavigationBarItem(
// //         //           icon: Icon(Icons.timelapse), label: 'Timesheet'),
// //         //       BottomNavigationBarItem(
// //         //           icon: Icon(Icons.work_history_outlined), label: 'Project'),
// //         //       BottomNavigationBarItem(
// //         //           icon: Icon(Icons.settings), label: 'Settings')
// //         //     ]),
// //         body: CustomScrollView(
// //       slivers: [
// //         SliverAppBar(
// //           expandedHeight: 300,
// //           //backgroundColor: Colors.redAccent,
// //           flexibleSpace: FlexibleSpaceBar(
// //             background: Image.asset(
// //               'assets/images/kebs_logo.jpg',
// //               width: double.maxFinite,
// //               fit: BoxFit.cover,
// //             ),
// //           ),
// //         ),
// //         const SliverToBoxAdapter(
// //           child: Text('dfbvdkfbbvjkkvbjv'),
// //         )
// //       ],
// //     )

// //         //  SafeArea(
// //         //   child: Padding(
// //         //     padding: const EdgeInsets.all(8.0),
// //         //     child: Container(
// //         //       //color: Colors.red,
// //         //       child: Row(
// //         //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// //         //         children: <Widget>[
// //         //           GestureDetector(
// //         //             onTap: () {
// //         //               Navigator.push(
// //         //                   context,
// //         //                   MaterialPageRoute(
// //         //                       builder: (context) => const HomePage()));
// //         //             },
// //         //             child: SizedBox(
// //         //               height: 180,
// //         //               width: 180,
// //         //               child: Card(
// //         //                 elevation: 8,
// //         //                 shadowColor: Colors.grey,
// //         //                 color: Colors.white,

// //         //                 child: Column(
// //         //                   // mainAxisAlignment: MainAxisAlignment.center,
// //         //                   children: <Widget>[
// //         //                     Image.asset(
// //         //                       'assets/images/time_stats.png',
// //         //                       height: 140,
// //         //                       width: 75,
// //         //                     ),

// //         //                     Text(
// //         //                       "HR",
// //         //                       textAlign: TextAlign.center,
// //         //                       style: kTextStyle,
// //         //                     ),

// //         //                     //Icon(Icons.stop),
// //         //                   ],
// //         //                 ),

// //         //                 // (
// //         //                 // GridView.builder(
// //         //                 //   itemCount: list.length,
// //         //                 //   itemBuilder: ((context, index) {
// //         //                 //     return Padding(
// //         //                 //       padding: const EdgeInsets.all(5.0),
// //         //                 //       child:
// //         //                 //       Card(
// //         //                 //         color: Colors.white24,

// //         //                 //         child: Column(
// //         //                 //           // mainAxisAlignment: MainAxisAlignment.center,
// //         //                 //           children: <Widget>[
// //         //                 //             Image.asset(
// //         //                 //               'assets/images/time_stats.png',
// //         //                 //               height: 140,
// //         //                 //               width: 75,
// //         //                 //             ),
// //         //                 //             // Text(
// //         //                 //             //   list[index],
// //         //                 //             //   textAlign: TextAlign.center,
// //         //                 //             //   style: const TextStyle(
// //         //                 //             //       fontSize: 20,
// //         //                 //             //       fontWeight: FontWeight.bold,
// //         //                 //             //       color: Colors.black38),
// //         //                 //             // ),
// //         //                 //             const Text(
// //         //                 //               "Expense",
// //         //                 //               textAlign: TextAlign.center,
// //         //                 //               style: TextStyle(
// //         //                 //                   fontSize: 20,
// //         //                 //                   fontWeight: FontWeight.bold,
// //         //                 //                   color: Colors.black38),
// //         //                 //             ),

// //         //                 //             //Icon(Icons.stop),
// //         //                 //           ],
// //         //                 //         ),

// //         //                 //         // child: Card(
// //         //                 //         //     color: Colors.red,
// //         //                 //         //     child: Column(
// //         //                 //         //       children: [Icon(Icons.stop), Text(list[index])],
// //         //                 //         //     )),
// //         //                 //       ),
// //         //                 //     );
// //         //                 //   }),
// //         //                 //   gridDelegate:
// //         //                 //       const SliverGridDelegateWithFixedCrossAxisCount(
// //         //                 //           crossAxisCount: 2)
// //         //                 //           )
// //         //               ),
// //         //             ),
// //         //           ),
// //         //           SizedBox(
// //         //             height: 180,
// //         //             width: 180,
// //         //             child: Card(
// //         //               elevation: 8,
// //         //               shadowColor: Colors.grey,
// //         //               color: Colors.white,
// //         //               child: Column(
// //         //                 // mainAxisAlignment: MainAxisAlignment.center,
// //         //                 children: <Widget>[
// //         //                   Image.asset(
// //         //                     'assets/images/time_stats.png',
// //         //                     height: 140,
// //         //                     width: 75,
// //         //                   ),

// //         //                   Text("Expense",
// //         //                       textAlign: TextAlign.center, style: kTextStyle),

// //         //                   //Icon(Icons.stop),
// //         //                 ],
// //         //               ),
// //         //             ),
// //         //           ),
// //         //         ],
// //         //       ),
// //         //     ),
// //         //   ),
// //         // ),
// //         );
// //   }
// // }
