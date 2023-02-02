import 'package:flutter/material.dart';

AppBar AppbarWidget() {
  return AppBar(
    backgroundColor: Colors.white,
    leading: IconButton(
      icon: const Icon(
        Icons.arrow_back_ios,
        color: Colors.black,
      ),
      onPressed: () {},
    ),
    centerTitle: true,
    title: const Text(
      'Class',
      style: TextStyle(color: Colors.black),
    ),
    actions: <Widget>[
      IconButton(
        icon: const Icon(
          Icons.notifications,
          color: Colors.black,
        ),
        onPressed: () {},
      ),
      IconButton(
        icon: const Icon(
          Icons.person,
          color: Colors.black,
        ),
        onPressed: () {},
      ),
    ],
  );
}
