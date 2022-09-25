import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:powerful_daegu/main.dart';
import 'package:powerful_daegu/last2.dart';

class Apply2 extends StatefulWidget {
  const Apply2({Key? key}) : super(key: key);
  @override
  _Apply2 createState() => _Apply2();
}

class _Apply2 extends State<Apply2> {
  FocusNode _emailFocus = new FocusNode();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Write email')),
      body: new Form(
          key: formKey,
          child: Column(
            children: [_showEmailInput(), _showOkBtn()],
          )),
    );
  }

  Widget _showEmailInput() {
    return Padding(
        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
        child: Column(
          children: [
            Padding(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  focusNode: _emailFocus,
                  decoration: _textFormDecoration('이메일', '이메일을 입력해주세요'),
                )),
          ],
        ));
  }

  InputDecoration _textFormDecoration(hintText, helperText) {
    return new InputDecoration(
      contentPadding: EdgeInsets.fromLTRB(0, 16, 0, 0),
      hintText: hintText,
      helperText: helperText,
    );
  }

  Widget _showOkBtn() {
    return Padding(
        padding: EdgeInsets.only(top: 20),
        child: MaterialButton(
          height: 50,
          child: Text('확인'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Last2()),
            );
          },
        ));
  }
}
