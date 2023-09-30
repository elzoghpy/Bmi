// ignore_for_file: non_constant_identifier_names, prefer_const_constructors, import_of_legacy_library_into_null_safe, prefer_const_literals_to_create_immutables, avoid_types_as_parameter_names, unused_local_variable, sized_box_for_whitespace, avoid_print

import 'package:bmi/shared/styles/colors.dart';
import 'package:flutter/material.dart';

typedef Validator = String? Function(String?)?;
Widget defaultButton({
  double hight = 40,
  double width = double.infinity,
  Color background = defaultColor,
  bool isUpperCase = true,
  Function()? function,
  required String text,
  String? TextField,
}) =>
    Container(
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          5.0,
        ),
        color: background,
      ),
      child: MaterialButton(
        onPressed: function,
        child: Text(
          isUpperCase ? text.toUpperCase() : text,
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.white,
          ),
        ),
      ),
    );

Widget defaultTextButton({
  Function()? function,
  required String text,
}) =>
    TextButton(
        onPressed: function,
        child: Text(
          text.toUpperCase(),
        ));

Widget defaultFormFaild({
  required TextEditingController controller,
  required TextInputType type,
  Function(String)? onsubmet,
  Function(String)? onchange,
  Function()? onTap,
  required Validator validate,
  required String Label,
  required IconData prefix,
  bool isPassword = false,
  bool isClikable = true,
  IconData? suffix,
  Function()? sufixpressed,
  Function(String?)? onsaved,
}) =>
    TextFormField(
      controller: controller,
      keyboardType: type,
      obscureText: isPassword,
      enabled: isClikable,
      onFieldSubmitted: onsubmet,
      onChanged: onchange,
      validator: validate,
      onTap: onTap,
      onSaved: onsaved,
      decoration: InputDecoration(
        labelText: Label,
        prefixIcon: Icon(
          prefix,
        ),
        suffixIcon: suffix != null
            ? IconButton(
                onPressed: sufixpressed,
                icon: Icon(
                  suffix,
                ),
              )
            : null,
        border: const OutlineInputBorder(),
      ),
    );
Widget defaultAppBar({
  required BuildContext context,
  String? titel,
  List<Widget>? actions,
}) =>
    AppBar(
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(Icons.arrow_back_ios_outlined),
      ),
      title: Text(titel!),
      actions: actions,
    );

// ignore: use_function_type_syntax_for_parameters

void NavigateTo(context, Widget) => Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Widget),
    );

void NavigateAndFinsh(context, Widget) => Navigator.pushAndRemoveUntil(
    context,
    MaterialPageRoute(
      builder: (context) => Widget,
    ),
    (route) => false);
