import 'package:acadamicConnect/Components/LoginRoundedButton.dart';
import 'package:acadamicConnect/Components/ReusableRoundedButton.dart';
import 'package:acadamicConnect/Components/TopBar.dart';
import 'package:flutter/material.dart';
import '../constants.dart';

class MobileLoginPage extends StatefulWidget {
  @override
  _MobileLoginPageState createState() => _MobileLoginPageState();
}

class _MobileLoginPageState extends State<MobileLoginPage> {
  bool isEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: TopBar(
        title: 'Mobile',
        child: kBackBtn,
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                TextField(
                  enabled: isEnabled,
                  onChanged: (id) {},
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  decoration: kTextFieldDecoration.copyWith(
                    hintText: 'One which school gave',
                    labelText: 'Student/Teacher Id',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  enabled: isEnabled,
                  onChanged: (email) {},
                  keyboardType: TextInputType.number,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  decoration: kTextFieldDecoration.copyWith(
                    hintText: '+91999999999',
                    labelText: 'Mobile No',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  onChanged: (password) {},
                  keyboardType: TextInputType.number,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  decoration: kTextFieldDecoration.copyWith(
                    hintText: '_ _ _ _ _ _',
                    labelText: 'OTP',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: ReusableRoundedButton(
                      child: Text(
                        "Send OTP",
                        style: TextStyle(
                          // color: kmainColorTeacher,
                          fontSize: 15,
                        ),
                      ),
                      // text: "Forgot Pass?",
                      onPressed: () {
                        setState(() {
                          isEnabled = !isEnabled;
                        });
                      },
                      height: 40,
                    ),
                  ),
                ),
              ],
            ),
          ),
          LoginRoundedButton(
            onPressed: () {},
            ),
          Positioned(
            bottom: 50,
            left: 30,
            width: MediaQuery.of(context).size.width,
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Hero(
                tag: 'mobile',
                transitionOnUserGestures: true,
                child: ReusableRoundedButton(
                  child: RotationTransition(
                    turns: AlwaysStoppedAnimation(270 / 360),
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                  ),
                  // text: 'Mobile',
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  height: 50,
                  backgroundColor: kmainColorParents,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}