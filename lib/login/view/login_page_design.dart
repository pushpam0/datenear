import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../size/measurement.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class LoginPageDesign extends StatefulWidget {
  const LoginPageDesign({Key? key}) : super(key: key);

  @override
  _LoginPageDesignState createState() => _LoginPageDesignState();
}

class _LoginPageDesignState extends State<LoginPageDesign> {
  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: ListView(children: [
        Container(
          margin: EdgeInsets.all(10),
          height: Measurement(context: context).height * 0.3,
          child: FlutterLogo(),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Mobile",
                hintText: "Enter Mobile Number"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: TextField(
            obscureText: !_passwordVisible,
            //This will obscure text dynamically
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Password",
              hintText: "Enter Your Password",
              suffixIcon: IconButton(
                icon: Icon(
                  // Based on passwordVisible state choose the icon
                  _passwordVisible ? Icons.visibility : Icons.visibility_off,
                  color: Theme.of(context).primaryColorDark,
                ),
                onPressed: () {
                  // Update the state i.e. toogle the state of passwordVisible variable
                  setState(() {
                    _passwordVisible = !_passwordVisible;
                  });
                },
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
              child: Text("Forget Password?"),
            )
          ],
        ),
        Container(
          padding: EdgeInsets.fromLTRB(80, 10, 80, 0),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 3,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
            ),
            onPressed: () {},
            child: Text('Login'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(1.0),
          child: Center(
              child: Text(
            "OR",
            style: TextStyle(fontWeight: FontWeight.bold),
          )),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(80, 0, 80, 10),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 3,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
            ),
            onPressed: () {

            },
            child: Text('Register'),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.email_outlined,
              size: 50,
            ),
            SizedBox(
              width: 20,
            ),
            Icon(
              Icons.facebook,
              size: 50,
            ),
          ],
        )
      ]),
    ));
  }
}
