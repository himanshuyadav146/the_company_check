import 'package:flutter/material.dart';

typedef StringToVoidFunc = Function(String);
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  final double height;
  final StringToVoidFunc onChanged;

  const CustomAppBar(
      {super.key, this.height = kToolbarHeight, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4), color: Colors.white),
            child: Padding(
                padding: const EdgeInsets.only(left: 12.0, right: 12),
                child: TextField(
                    style: const TextStyle(
                        color: Colors.black38, fontWeight: FontWeight.w500),
                    onChanged: onChanged,
                    decoration: const InputDecoration(
                        hintText: 'Search',
                        focusedBorder: InputBorder.none,
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                            color: Colors.black38,
                            fontWeight: FontWeight.w500))))));
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
