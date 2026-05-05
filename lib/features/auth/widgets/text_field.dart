import 'package:flutter/material.dart';

class ZartTextField extends StatelessWidget {
  const ZartTextField({
    super.key,
    required this.hintText,
    required this.labelText,
    this.isRequired = false,
    this.validator,
    this.onChanged,
    this.helperText,
    this.onHelperTap,
    this.keyboardType,
    this.isPhoneNumber = false,
    this.maxLength,
  });

  final String hintText;
  final String labelText;
  final bool isRequired;
  final String? Function(String?)? validator;
  final Function(String)? onChanged;
  final String? helperText;
  final Function()? onHelperTap;
  final TextInputType? keyboardType;
  final bool isPhoneNumber;
  final int? maxLength;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 4,
      children: [
        Text('$labelText ${isRequired ? '*' : ''}'),
        TextFormField(
          validator: validator,
          onChanged: onChanged,
          cursorHeight: 16,
          maxLength: maxLength,
          keyboardType: keyboardType,
          decoration: InputDecoration(
            prefixIcon: isPhoneNumber
                ? Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Row(mainAxisSize: MainAxisSize.min, children: [Text('+234', style: TextStyle(fontSize: 16),)]),
                )
                : null,
            helper: helperText != null
                ? GestureDetector(
                    onTap: onHelperTap,
                    child: Text(
                      helperText!,
                      maxLines: 1,
                      style: TextStyle(
                        fontSize: 12,
                        color: onHelperTap != null
                            ? theme.colorScheme.onPrimaryContainer
                            : Color(0xffb0b5b3),
                      ),
                    ),
                  )
                : null,
            contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            hintText: hintText,
            hintStyle: TextStyle(color: Color(0xffd4d4d4)),
            filled: true,
            fillColor: Color(0xfff5f5f5),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ],
    );
  }
}
