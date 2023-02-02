import 'package:expense/pages/expense/createnewclaim.dart';
import 'package:expense/pages/expense/expenseLanding.dart';
import 'package:expense/pages/expense/new_expense.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NewClaimCreated extends StatelessWidget {
  const NewClaimCreated({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/gif-unscreen.gif",
              height: 200,
              width: 200,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Well,The Claim Cas Been Submitted. ",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  fontFamily: "Plus Jakarta Sans"),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "You will be notified while someone at your company opens\nthis request and take relevant action.",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color(0xff868686),
                  fontSize: 12,
                  fontFamily: "Plus Jakarta Sans"),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 28.0),
              child: SizedBox(
                width: 211,
                height: 64,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: const StadiumBorder(),
                        elevation: 20,
                        backgroundColor: const Color(0xffee4961)),
                    onPressed: () {
                      Navigator.of(context)
                        ..pop()
                        ..pop();
                      // int count = 0;

                      // Navigator.popUntil(context, (route) {
                      //   return count++ == 2;
                      // });

                      // Navigator.of(context).push(MaterialPageRoute(
                      //     builder: (context) => const CreateNewClaim()));
                    },
                    child: const Text(
                      " +  Create New Claim",
                      style: TextStyle(fontSize: 14),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ExpenseLanding()));
                  },
                  child: const Text(
                    "Or, Go back to My Claims",
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
