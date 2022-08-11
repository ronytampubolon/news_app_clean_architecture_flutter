import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class HomeSearch extends StatelessWidget {
  const HomeSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(
        fontSize: 12
      ),
        decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(vertical: 11.0, horizontal: 15),
            fillColor: Colors.white,
            filled: true,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.0),
                borderSide: const BorderSide(width: 0.8)),
            hintText: "Search here ...",
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
              borderSide:
                  BorderSide(width: 0.8, color: Theme.of(context).cardColor),
            ),
            suffixIcon: OutlinedButton(
              onPressed: () => {},
              child: Icon(
                Ionicons.search,
                color: Colors.white,
                size: 24.0,
              ),
              style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.orange,
                  backgroundColor: Theme.of(context).primaryColor,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12)))),
            )));
  }
}
