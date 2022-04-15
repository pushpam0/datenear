import 'package:flutter/material.dart';

Widget OtpPopUpDilog(context) {
  return AlertDialog(
    title: Text("Enter your otp"),
    content: Row(children: [
      Padding(
        padding: const EdgeInsets.fromLTRB(0,8,8,8),
        child: SizedBox(height: 60,width: 50,
          child: TextField(
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            autofocus: true,
            maxLength: 1,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
            onChanged: (value) {
              if (value.length == 1) {
                FocusScope.of(context).nextFocus();
              }
            },
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(0,8,8,8),
        child: SizedBox(height: 60,width: 50,
          child: TextField(
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            autofocus: true,
            maxLength: 1,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
            onChanged: (value) {
              if (value.length == 1) {
                FocusScope.of(context).nextFocus();
              }
            },
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(0,8,8,8),
        child: SizedBox(height: 60,width: 50,
          child: TextField(
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            autofocus: true,
            maxLength: 1,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
            onChanged: (value) {
              if (value.length == 1) {
                FocusScope.of(context).nextFocus();
              }
            },
          ),
        ),
      ),
      SizedBox(height: 60,width: 50,
        child: TextField(
          textAlign: TextAlign.center,
          keyboardType: TextInputType.number,
          autofocus: true,
          maxLength: 1,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
          ),
          onChanged: (value) {
            if (value.length == 1) {
              FocusScope.of(context).nextFocus();
            }
          },
        ),
      )
    ]),
  );
}
