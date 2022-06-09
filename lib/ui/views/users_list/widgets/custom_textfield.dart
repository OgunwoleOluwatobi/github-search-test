import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:phonon_test/core/utils/exports.dart';

class CustomTextField extends StatelessWidget {
  final Function(String) onChanged;
  
  const CustomTextField({Key? key, required this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
            isDense: true,
            filled: true,
            fillColor: const Color(0xFFF9F9F9),
            hintText: 'Enter Username',
            hintStyle: TextStyle(
              fontSize: 14.sp,
              color: Color(0xFFACACAC),
              fontWeight: FontWeight.w300
            ),
            border: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Color(0xFFD9D9D9)
              ),
              borderRadius: BorderRadius.circular(7.r)
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Color(0xFFD9D9D9)
              ),
              borderRadius: BorderRadius.circular(7.r)
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Color(0xFFD9D9D9)
              ),
              borderRadius: BorderRadius.circular(7.r)
            ),
            errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.red
              ),
              borderRadius: BorderRadius.circular(7.r)
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 18.h, horizontal: 25.w),
            prefixIcon: Icon(
              Icons.search,
              size: 18.h,
            )
          ),
    );
  }
}