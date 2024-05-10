import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:smk_duta_kencana/component/Button.dart';
import 'package:smk_duta_kencana/component/FormFields.dart';
import 'package:smk_duta_kencana/component/TextHeader.dart';
import 'package:smk_duta_kencana/component/TextConfirmation.dart';
import 'package:smk_duta_kencana/data/DataText.dart';
import 'package:smk_duta_kencana/services/AuthController.dart';
import 'package:smk_duta_kencana/services/LoginController.dart';

// ignore: must_be_immutable
class Login extends StatefulWidget {
  Login();

  LoginController logincontroller = LoginController();
  final authc = AuthController();

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String subtextHeader = TEXT.login.subtextHeader;
  String textHeader = TEXT.login.textHeader;
  final keytwo = GlobalKey<FormState>();
  final keyone = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    // Size screenSize = MediaQuery.of(context).size;
    // Orientation orientation = MediaQuery.of(context).orientation;
    return ChangeNotifierProvider(
      create: (_) => AuthController(),
      child: Consumer<AuthController>(
        builder: (context, model, _) {
          return Scaffold(
            body: Container(
                padding: EdgeInsets.only(left: 18, right: 18, top: 12),
                child: ListView(
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    TextHeader(textHeader, subtextHeader),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 12,
                      ),
                      child: model.isLoading
                          ? LinearProgressIndicator()
                          : Container(),
                    ),
                    SizedBox(
                      height: 102,
                    ),
                    FormFields("Email/Username", false,
                        widget.logincontroller.emailc, keytwo, keyone),
                    SizedBox(
                      height: 12,
                    ),
                    FormFields("Kata Sandi", true, widget.logincontroller.passc,
                        keytwo, keyone),
                    SizedBox(
                      height: 24,
                    ),
                    Button(
                      "Log in",
                      () {
                        if (keyone.currentState!.validate() |
                            keytwo.currentState!.validate()) {
                          model.login(widget.logincontroller.emailc.text,
                              widget.logincontroller.passc.text, context);
                        }
                      },
                    ),
                    TextConfirmation(true),
                  ],
                )),
          );
        },
      ),
    );
  }
}
