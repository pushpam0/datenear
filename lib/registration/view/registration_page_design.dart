import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app/registration/model/user_input_data.dart';

import '../../gloal/widget/otp_dilog.dart';
import '../../size/measurement.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class RegistrationPageDesign extends StatefulWidget {
  const RegistrationPageDesign({Key? key}) : super(key: key);

  @override
  _RegistrationPageDesignState createState() => _RegistrationPageDesignState();
}

class _RegistrationPageDesignState extends State<RegistrationPageDesign> {
  bool _passwordVisible = false;
  String gender="Gender";
  bool autofocuas=true;
  TextEditingController controllerMobile = TextEditingController();
  TextEditingController controllerName = TextEditingController();
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
            controller: controllerMobile,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Mobile",
                hintText: "Enter Mobile Number"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: TextField(
            controller: controllerName,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Name",
                hintText: "Enter Your Profile Name"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: TextField(
            readOnly: true,
            //enabled: false,
            //autofocus: false,
           // focusNode: new AlwaysDisabledFocusNode(),
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: gender,
              hintText: gender,
              suffixIcon:
              DropdownButtonHideUnderline(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: DropdownButton<String>(
                      items: <String>['Male', 'Female', 'Other',].map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (value) {
                        setState(() {
                         // autofocuas=true;
                          gender=value.toString();
                        });
                      },
                    ),
                  ),
                ),

               ),
          ),
        ),
        /*Padding(
          padding: const EdgeInsets.all(10),
          child: TextField(
            decoration: InputDecoration(
              suffix: IconButton(icon: Icon(Icons.arrow_drop_down),onPressed: (){
                DropdownButton<String>(
                  items: <String>['A', 'B', 'C', 'D'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (_) {},
                );
              }),
                hintText: "Gender"),
          ),
        ),*/
        Container(
          padding: EdgeInsets.fromLTRB(80, 0, 80, 10),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 3,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
            ),
            onPressed: () {
              CollectUserInputData().registrationRequiedData(mobile: controllerMobile.text, name:controllerName.text, gender: gender);
              showDialog(
                context: context,
                builder: (BuildContext context) => OtpPopUpDilog(context),
              );
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
        ),
      ]),
    ));
  }
}
