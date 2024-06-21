import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {

  final String? label;
  final String? hint;
  final String? errorMessage;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;
  final bool obscureText;

  const CustomTextFormField({super.key, this.label, this.hint, this.errorMessage, this.onChanged, this.validator, this.obscureText = false});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    final border = OutlineInputBorder(
      // borderSide: BorderSide(color: colors.primary),
      borderRadius: BorderRadius.circular(40)
    );

    return TextFormField(
      onChanged: onChanged,
      validator: validator,
      obscureText: obscureText,
      // (value){
      //   // if(value == null || value.isEmpty || value.trim().isEmpty ) return 'Campo es requerido';
      //   if(value == null) return 'Campo es requerido';
      //   if(value.isEmpty ) return 'Campo es requerido';
      //   if(value.trim().isEmpty) return 'Campo es requerido';
      //   return null;
      // },
      decoration: InputDecoration(
        enabledBorder: border,
        focusedBorder: border.copyWith(borderSide: BorderSide(color: colors.primary)),
        errorBorder: border.copyWith(borderSide: const BorderSide(color: Colors.red)),
        focusedErrorBorder: border.copyWith(borderSide: const BorderSide(color: Colors.red)),
        isDense: true,
        // label: const Text('Cualquier cosa'),
        label: label != null ? Text(label!) : null,
        hintText: hint,
        errorText: errorMessage,
        focusColor: colors.primary,
        // prefixIcon: Icon(Icons.supervised_user_circle_outlined, color: colors.primary,),
        // suffixIcon: Icon(Icons.supervised_user_circle_outlined, color: colors.primary,),
        // icon: Icon(Icons.supervised_user_circle_outlined, color: colors.primary,),
      ),
    );
  }
}