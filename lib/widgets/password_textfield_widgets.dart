import 'package:flutter/material.dart';
import 'package:internative/core/all_color.dart';

class PassWordTextFieldWidget extends StatefulWidget {
  final String? hintText;
  final TextEditingController controller;

  const PassWordTextFieldWidget(
      {Key? key, this.hintText, required this.controller})
      : super(key: key);

  @override
  _PassWordTextFieldWidgetState createState() =>
      _PassWordTextFieldWidgetState();
}

class _PassWordTextFieldWidgetState extends State<PassWordTextFieldWidget> {
  bool _showPassword = false;

  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: widget.controller,
        obscureText: !_showPassword,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
          prefixIcon: const Icon(
            Icons.lock,
          ),
          suffixIcon: InkWell(
            child: Icon(
              Icons.remove_red_eye,
              color: (_showPassword) ? Colors.blue : Colors.grey,
            ),
            onTap: () {
              setState(() {
                _showPassword = !_showPassword;
              });
            },
          ),
          hintText: widget.hintText,
        ));
  }
}
