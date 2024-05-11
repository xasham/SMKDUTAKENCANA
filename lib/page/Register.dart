import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:smk_duta_kencana/component/Button.dart';
import 'package:smk_duta_kencana/component/FormFields.dart';

import 'package:smk_duta_kencana/component/TextHeader.dart';
import 'package:smk_duta_kencana/component/TextConfirmation.dart';
import 'package:smk_duta_kencana/data/DataText.dart';
import 'package:smk_duta_kencana/page/example.dart';
import 'package:smk_duta_kencana/services/AuthController.dart';
import 'package:smk_duta_kencana/services/RegisterController.dart';

class Register extends StatefulWidget {
  Register({super.key});
  final passc = TextEditingController();
  final emailc = TextEditingController();
  final userc = TextEditingController();
  final ulangkatasandic = TextEditingController();
  RegisterController reg = RegisterController();

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final keytwo = GlobalKey<FormState>();
  final keyone = GlobalKey<FormState>();
  String subtextHeader = TEXT.register.subtextHeader;
  String textHeader = TEXT.register.textHeader;
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
                    // FormFields("Username", false, widget.userc, keys, keyz),
                    // SizedBox(
                    //   height: 12,
                    // ),
                    FormFields(
                        "Email", false, widget.reg.emailc, keytwo, keyone),
                    SizedBox(
                      height: 12,
                    ),
                    FormFields(
                        "Kata Sandi", true, widget.reg.passc, keytwo, keyone),
                    SizedBox(
                      height: 12,
                    ),
                    // FormFields("Ulangi Kata Sandi", true, widget.ulangkatasandic, keytwo, keyone),

                    SizedBox(
                      height: 24,
                    ),
                    Button(
                      "Register dan masuk",
                      () {
                        if (keyone.currentState!.validate() |
                            keytwo.currentState!.validate()) {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return example(
                                    "konfirmasi",
                                    Text(
                                        'Apakah anda ingin mendaftarkan akun?'),
                                    [
                                      TextButton(
                                        onPressed: () {
                                          context.pop();
                                        },
                                        child: Text("Tidak"),
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          context.pop();
                                          model.register(widget.reg.emailc.text,
                                              widget.reg.passc.text, context);
                                        },
                                        child: Text("Oke"),
                                      ),
                                    ]);
                              });
                        }
                      },
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    TextConfirmation(false)
                  ],
                )),
          );
        },
      ),
    );
  }
}
