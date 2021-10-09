import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:matcha/data/api/api.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:matcha/data/provider/provider.dart';
import 'package:matcha/factory/util/alert.dart';

class LoginScreen extends StatelessWidget {
  String _userid = '';
  String _password = '';

  @override
  Widget build(BuildContext context) {
    final userProvider = useProvider(userdataProvider.notifier);
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.tealAccent[400],
        title: Text(
          'Login',
          style: GoogleFonts.getFont(
            'Arizonia',
            fontSize: 30,
            color: Colors.white,
          ),
          //Style Script
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(
              0,
              30,
              0,
              20,
            ),
            child: Icon(
              Icons.account_circle,
              size: 150,
            ),
          ),
          Form(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(
                    10,
                    0,
                    10,
                    10,
                  ),
                  child: TextFormField(
                    onChanged: (value) => this._userid = value,
                    decoration: const InputDecoration(
                      icon: Icon(Icons.person),
                      hintText: 'Please input your userid',
                      labelText: 'UserID *',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(
                    10,
                    10,
                    10,
                    30,
                  ),
                  child: TextFormField(
                    onChanged: (value) => this._password = value,
                    obscureText: true,
                    decoration: const InputDecoration(
                      icon: Icon(Icons.password_sharp),
                      hintText: 'Please input your password',
                      labelText: 'Password *',
                    ),
                  ),
                ),
                RaisedButton(
                  onPressed: () {
                    api.User(_userid, _password);
                    bool flag = false;
                    api.login().then((value) {
                      flag = value;
                      if (flag) {
                        print('login success');
                        userProvider.setPassword(_password);
                        userProvider.setUserid(_userid);
                        userProvider.saveKeyChain();
                        Navigator.of(context).pushReplacementNamed("/home");
                      } else {
                        login_failed_alert(context);
                      }
                    });
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.white),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
