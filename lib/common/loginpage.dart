import 'package:expense/extra/dashboard.dart';
import 'package:expense/pages/dashboard.dart';
import 'package:expense/utilities/style.dart';
//import 'package:kcsm/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:aad_oauth/aad_oauth.dart';
import 'package:aad_oauth/model/config.dart';
import 'package:expense/pages/dashboard.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() => runApp(Oauth());

final navigatorKey = GlobalKey<NavigatorState>();

class Oauth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AAD OAuth Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(),
      navigatorKey: navigatorKey,
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String uname = "a@kebs.com";
  TextEditingController loginController = TextEditingController();
  // Must configure flutter to start the web server for the app on
  // the port listed below. In VSCode, this can be done with
  // the following run settings in launch.json
  // "args": ["-d", "chrome","--web-port", "8483"]
  static final Config config = Config(
    // tenant: '87a25c2a-2cb4-4c40-9cbc-5268c0ed1eeb',
    // clientId: 'a6e8463c-c987-41de-bc92-5dced6f40ef5',
    // tenant: '91c42ae5-a41e-45c7-854a-9bd622039f75',
    tenant: '87a25c2a-2cb4-4c40-9cbc-5268c0ed1eeb',
    // clientId: '8e70fbf9-e3f8-490f-976a-488b7c76a86d',
    clientId: '8e70fbf9-e3f8-490f-976a-488b7c76a86d',
    scope: 'https://graph.microsoft.com/.default',
    redirectUri: 'https://kaar.kebs.app/login',
    // kIsWeb
    // ? 'http://localhost:8483'
    // : 'https://login.live.com/oauth20_desktop.srf',
    navigatorKey: navigatorKey,
  );
  final AadOAuth oauth = AadOAuth(config);
  @override
  // void dispose() {
  //   logout();
  //   // TODO: implement dispose
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    // final emailController = TextEditingController();
    // final passController = TextEditingController();
    // String uname = "kebs";
    // String pass = "123";

    return Scaffold(
      backgroundColor: Colors.white,
      // navigationBar: const CupertinoNavigationBar(
      //   automaticallyImplyLeading: false,
      // ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: double.maxFinite,
                  child: Stack(
                    alignment: AlignmentDirectional.topStart,
                    //clipBehavior: Clip.hardEdge,
                    fit: StackFit.loose,
                    children: [
                      Positioned(
                        top: 0,
                        right: 176,

                        //rect: Rect.fromLTRB(10, 20, 10, 20),
                        child: SvgPicture.asset(
                          "assets/images/Logo.svg",
                          height: 180,
                        ),
                      ),
                      Positioned(
                        top: 170,
                        left: 210,
                        //rect: Rect.fromLTRB(10, 20, 10, 20),
                        child: SvgPicture.asset(
                          "assets/images/Logo.svg",
                          height: 100,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 58.0),
                        child: Center(
                          child: Image.asset(
                            "assets/images/splash5.png",
                            height: 200,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(
                  height: 40,
                ),
                Text("Welcome to KEBS!", style: kTitleStyle),
                const SizedBox(height: 18),
                const Text(
                    "Manage tasks,delegate jobs\n       business clutter-free",
                    style: TextStyle(color: Colors.grey, fontSize: 13)),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  // decoration:
                  //     BoxDecoration(borderRadius: BorderRadius.circular(8)),
                  height: 55,
                  width: 260,
                  child: OutlinedButton(
                      onPressed: () {
                        login();
                      },
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8))

                          //backgroundColor: Colors.white,
                          ),
                      child: Row(
                        children: [
                          Image.asset('assets/images/o365.png'),
                          const Text(
                            ' Sign in with Office 365',
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Plus Jakarta Sans'),
                          ),
                        ],
                      )),
                ),
                SizedBox(
                  height: 45,
                  child: TextButton(
                      onPressed: () {
                        logout();
                        dispose();
                      },
                      child: Text("Log out")),
                ),
                const Text("Or, Sign in with your Email ID",
                    style: TextStyle(color: Colors.grey, fontSize: 13)),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(16)),
                  height: 55,
                  width: 260,
                  child: TextField(
                    controller: loginController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8)),
                        hintText: "name@example.com"),
                  ),

                  // child: OutlinedButton(
                  //     onPressed: () {},

                  //     child:
                  //     style: OutlinedButton.styleFrom(

                  //         //backgroundColor: Colors.white,

                  //         )),
                ),
                const SizedBox(
                  height: 25,
                ),
                SizedBox(
                  height: 48,
                  width: 264,
                  child: ElevatedButton(
                      onPressed: () {
                        if (uname == loginController.text) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Dashboard()));
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text("Enter {$uname} for now")));
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        elevation: 20,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(11)),
                        backgroundColor: kprimary,
                      ),
                      child: const Text(
                        'Sign In',
                        style: TextStyle(color: Colors.white),
                      )),
                ),
                // ElevatedButton(
                //   style: ElevatedButton.styleFrom(
                //       elevation: 20,
                //       shape: const ,
                //       backgroundColor: Colors.redAccent),
                //   onPressed: () {
                //     // Navigator.push(
                //     //    context,
                //     //     MaterialPageRoute(
                //     //         builder: (context) => LoginPage()));
                //   },
                //   // onPressed: () => Navigator.pushNamed(context, '/login'),
                //   child: const Text('Sing In'),
                // ),
                // ElevatedButton(
                //   style: ElevatedButton.styleFrom(
                //       padding: const EdgeInsets.only(
                //           top: 13, bottom: 13, left: 20, right: 20),
                //       elevation: 20,
                //       shape: const StadiumBorder(
                //           side: BorderSide(
                //               style: BorderStyle.solid,
                //               color: Colors.redAccent,
                //               width: 2.0)),
                //       backgroundColor: Colors.redAccent),
                //   onPressed: () {
                //     // Navigator.push(
                //     //    context,
                //     //     MaterialPageRoute(
                //     //         builder: (context) => LoginPage()));
                //   },
                //   // onPressed: () => Navigator.pushNamed(context, '/login'),
                //   child: const Text('Get Started'),
                // ),
                const SizedBox(height: 40),
              ],
            ),
          ),
          //  ListView(
          //   restorationId: 'text_field_demo_list_view',
          //   padding: const EdgeInsets.all(16),
          //   children: [
          //     Padding(
          //         padding: const EdgeInsets.symmetric(vertical: 10),
          //         child: Image.asset(
          //           "assets/images/splash5.png",
          //           height: 200,
          //         )),

          //     Padding(
          //       padding: const EdgeInsets.symmetric(vertical: 18),
          //       child: CupertinoTextField(
          //         controller: emailController,
          //         textInputAction: TextInputAction.next,
          //         restorationId: 'email_address_text_field',
          //         placeholder: "Email",
          //         keyboardType: TextInputType.emailAddress,
          //         clearButtonMode: OverlayVisibilityMode.editing,
          //         autocorrect: false,
          //         // onChanged: ((value) {
          //         //   email = value;
          //         // }),
          //       ),
          //     ),
          //     Padding(
          //       padding: const EdgeInsets.symmetric(vertical: 25),
          //       child: CupertinoTextField(
          //         controller: passController,
          //         textInputAction: TextInputAction.next,
          //         restorationId: 'login_password_text_field',
          //         placeholder: "Password",
          //         clearButtonMode: OverlayVisibilityMode.editing,
          //         obscureText: true,
          //         autocorrect: false,
          //         // onChanged: ((value) {
          //         //   password = value;
          //         // }),
          //       ),
          //     ),
          //     Padding(
          //         padding: const EdgeInsets.all(30),
          //         child: ExpenseButton(
          //             onPressed: () {
          //               if (uname == emailController.text &&
          //                   pass == passController.text) {
          //                 Fluttertoast.showToast(msg: "Login Successful");
          //                 // Navigator.of(context).pop();
          //                 Navigator.push(
          //                     context,
          //                     MaterialPageRoute(
          //                         builder: (context) => const Dashboard()));
          //               } else {
          //                 Fluttertoast.showToast(
          //                     msg: "Invalid Username or password");
          //                 emailController.text = "";
          //                 passController.text = "";
          //               }
          //             },
          //             text: 'SignIn',
          //             width: 20)
          //         // ElevatedButton(
          //         //     style: ElevatedButton.styleFrom(
          //         //         backgroundColor: Colors.red,
          //         //         fixedSize: const Size(10, 50),
          //         //         shape: RoundedRectangleBorder(
          //         //             borderRadius: BorderRadius.circular(25))),
          //         //     onPressed: () {
          //         //       if (uname == emailController.text &&
          //         //           pass == passController.text) {
          //         //         Fluttertoast.showToast(msg: "Login Successful");
          //         //         // Navigator.of(context).pop();
          //         //         Navigator.push(
          //         //             context,
          //         //             MaterialPageRoute(
          //         //                 builder: (context) => const Dashboard()));
          //         //       } else {
          //         //         Fluttertoast.showToast(
          //         //             msg: "Invalid Username or password");
          //         //         emailController.text = "";
          //         //         passController.text = "";
          //         //       }
          //         //       // setState(() {
          //         //       //   _isLoading = true;
          //         //       // });
          //         //       // signup();
          //         //       // signup(emailController.text.toString(),
          //         //       //     passwordController.text.toString(), context);
          //         //       // print(email);
          //         //       // print(password);
          //         //     },
          //         //     child: const Text("SignIn")
          //         //     )
          //         ),
          //     //OutlinedButton(onPressed: () {}, child: Text("heheh")),

          //     Padding(
          //       padding: const EdgeInsets.fromLTRB(70, 0, 70, 70),
          //       child: TextButton(
          //           // style: TextButton.styleFrom(maximumSize: Size.fromWidth(4)),
          //           onPressed: () {
          //             Navigator.of(context).push(MaterialPageRoute(
          //                 builder: (context) => const Signup()));
          //           },
          //           child: const Text(
          //             "New User?SignUp",
          //             style: TextStyle(
          //               color: Colors.blue,
          //             ),
          //           )),
          //     ),
          //     //ListView.builder(itemBuilder: itemBuilder)
          //   ],
        ),
      ),
    );
  }

  void showError(dynamic ex) {
    showMessage(ex.toString());
  }

  void showMessage(String text) {
    var alert = AlertDialog(content: Text(text), actions: <Widget>[
      TextButton(
          child: const Text('Ok'),
          onPressed: () {
            //  initState(){
            //   setState(() {
            //     void dispose{

            //     }
            //   });
          }

          // Navigator.push(
          //     context, MaterialPageRoute(builder: (context) => LoginPage()));
          // Navigator.of(context).pop();
          )
    ]);
    showDialog(context: context, builder: (BuildContext context) => alert);
  }

  void login() async {
    try {
      await oauth.login();
      var accessToken = await oauth.getAccessToken();
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Dashboard()));
      // ScaffoldMessenger.of(context)
      //     .showSnackBar(SnackBar(content: Text('$accessToken')));
      // showMessage('Logged in successfully, your access token: $accessToken');
    } catch (e) {
      showError(e);
    }
  }

  void logout() async {
    await oauth.logout();
    // Navigator.pop(context);
    // showMessage('Logged out');
    //Navigator.popUntil(context, ModalRoute.withName("/login"));
  }
}
