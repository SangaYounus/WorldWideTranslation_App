import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:world_wide_translation_app/res/AppColors/AppColors.dart';
import 'package:world_wide_translation_app/res/components/InputTextField/InputTextField.dart';

class EmailTextField extends StatefulWidget {
  @override
  State<EmailTextField> createState() => _EmailTextFieldState();
}

class _EmailTextFieldState extends State<EmailTextField> {
  final _formKey = GlobalKey<FormState>();
  var emailController = TextEditingController();

  final emailFocusNode = FocusNode();
  late String _email, _password;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailController.dispose();

    emailFocusNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              onChanged: (value) {
                _email = value;
              },
              controller: emailController,
              focusNode: emailFocusNode,
              onFieldSubmitted: (value) {},
              validator: (value) {
                return value!.isEmpty ? 'Enter Email' : null;
              },
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: 'jameswilliam@example.com',
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
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColors.BorderColor,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.TextColor, width: 2),
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.alertColor),
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                ),
              ),
            ),
          ],
        ));
  }
}
