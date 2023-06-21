import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:world_wide_translation_app/res/AppColors/AppColors.dart';

class PasswordTextField extends StatefulWidget {
  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  final _formKey = GlobalKey<FormState>();
  var passwordController = TextEditingController();
  bool _obscuretext = true;

  final passwordFocusNode = FocusNode();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    passwordController.dispose();

    passwordFocusNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              obscuringCharacter: "*",
              controller: passwordController,
              focusNode: passwordFocusNode,
              obscureText: _obscuretext,
              onFieldSubmitted: (value) {},
              validator: (value) {
                return value!.isEmpty ? 'Enter Password' : null;
              },
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        _obscuretext = !_obscuretext;
                      });
                    },
                    child: Icon(_obscuretext
                        ? Icons.visibility
                        : Icons.visibility_off)),
                hintText: '*************',
                contentPadding: EdgeInsets.all(15),
                hintStyle: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  height: 0,
                  color: AppColors.hintColor.withOpacity(0.8),
                ),
                border: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: AppColors.textFieldDefaultFocus),
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.TextColor),
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.alertColor),
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                ),
              ),
            )
          ],
        ));
  }
}
