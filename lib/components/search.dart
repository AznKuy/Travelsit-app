import 'package:flutter/material.dart';
import 'package:trevalin_app/utils/style.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            autocorrect: false,
            enableSuggestions: false,
            style: p1,
            cursorColor: accent,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: small),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none,
              ),
              prefixIcon: Icon(
                Icons.search,
                color: text,
              ),
              hintText: 'Search Destination',
              hintStyle: p1,
              fillColor: white,
              filled: true,
            ),
          ),
        ),
        SizedBox(width: small,),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: const Color(0xFF00BFA6),
          ),
          height: 50,
          width: 50,
          child: Icon(
            Icons.swap_horiz,
            color: white,
          ),
        )
      ],
    );
  }
}
