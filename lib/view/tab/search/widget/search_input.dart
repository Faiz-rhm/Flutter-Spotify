import 'package:flutter/material.dart';
import 'package:spotify/constants/colors.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(
        color: Colors.white,
        fontSize: 11
      ),
      decoration: InputDecoration(
        filled: true,
        fillColor: ColorConstants.cardBackGroundColor,
        hintText: 'Search',
        hintStyle: TextStyle(
          color: ColorConstants.inputHintColor,
          fontSize: 11
        ),
        prefixIcon: const Icon(Icons.search),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: ColorConstants.primaryColor
          )
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
