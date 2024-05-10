import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

// ignore: must_be_immutable
class FormFields extends StatefulWidget {
  String? text;
  TextEditingController texteditingcontroller;
  bool? conds;
  bool passwordVisible = true;
  GlobalKey keypw;
  GlobalKey keynopw;

  FormFields(this.text, this.conds, this.texteditingcontroller, this.keypw,
      this.keynopw);

  @override
  State<FormFields> createState() => _FormFieldState();
}

class _FormFieldState extends State<FormFields> {
  widget_value() {
    if (widget.conds == true) {
      return Widget_Password();
    } else {
      return Widget_nonPassword();
    }
  }

  @override
  Widget build(BuildContext context) {
    return widget_value();
  }

  Widget Widget_nonPassword() {
    return Form(
      key: widget.keynopw,
      child: TextFormField(
        textInputAction: TextInputAction.next,
      
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Maaf form harus diisi';
          }
          return null;
        },
        controller: widget.texteditingcontroller,
        decoration: InputDecoration(
          
          contentPadding: EdgeInsets.only(left: 12, right: 12),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.circular(10),
          ),
          hintText: widget.text,
          hintStyle: TextStyle(
              color: HexColor("#343434"),
              fontSize: 15,
              fontWeight: FontWeight.w400),
          filled: true,
          fillColor: HexColor("#D9D9D9"),
        ),
      ),
    );
  }

  Widget Widget_Password() {
    return Form(
      key: widget.keypw,
      child: TextFormField(
        textAlignVertical: TextAlignVertical.center,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Maaf form harus diisi';
          }
          return null;
        },
        controller: widget.texteditingcontroller,
        obscureText: widget.passwordVisible,
        decoration: InputDecoration(
          
          suffixIcon: IconButton(
            icon: Icon(widget.passwordVisible
                ? Icons.visibility
                : Icons.visibility_off),
            onPressed: () {
              setState(
                () {
                  widget.passwordVisible = !widget.passwordVisible;
                },
              );
            },
          ),
          contentPadding: EdgeInsets.only(left: 12, right: 12),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.circular(10),
          ),
          hintText: widget.text,
          hintStyle: TextStyle(
              color: HexColor("#343434"),
              fontSize: 15,
              fontWeight: FontWeight.w400),
          filled: true,
          fillColor: HexColor("#D9D9D9"),
        ),
      ),
    );
  }
}
