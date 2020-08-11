import 'package:flutter/material.dart';

import 'Pages/SlashScream.dart';

@override
Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Ckecklist Digital',
    theme: ThemeData(
      primarySwatch: Colors.red,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    ),
    home: SlashScream(),
  );
}
