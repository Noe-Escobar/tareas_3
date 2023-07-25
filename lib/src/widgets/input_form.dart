import 'package:flutter/material.dart';

class InputForm extends StatefulWidget {
  InputForm(
      {super.key,
      required this.label,
      required this.icon,
      required this.controller,
      required this.validator,
      this.showbutton = false,
      this.type = TextInputType.text,
      this.obscureText = false});

  final TextEditingController controller;
  final TextInputType type;
  bool obscureText;
  final IconData icon;
  final String label;
  final bool showbutton;

  final String? Function(String?) validator;

  @override
  State<InputForm> createState() => _InputFormState();
}

class _InputFormState extends State<InputForm> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      keyboardType: widget.type,
      obscureText: widget.obscureText,
      decoration: InputDecoration(
        label: Text(widget.label),
        prefixIcon: Icon(widget.icon),
        suffixIcon: widget.showbutton
            ? IconButton(
                onPressed: () {
                  widget.obscureText = !widget.obscureText;
                  setState(() {});
                },
                icon: Icon(widget.obscureText
                    ? Icons.remove_red_eye
                    : Icons.visibility_off))
            : null,
        border: const OutlineInputBorder(),
      ),
      validator: widget.validator,
      onChanged: (value) {},
    );
  }
}
