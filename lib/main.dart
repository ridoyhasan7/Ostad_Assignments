import 'package:flutter/material.dart';
import 'flags.dart' ;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Assignment 2'),
        ),
        body: LayoutBuilder(
          builder: (context, constraints) {
            int crossAxisCount;

            if (constraints.maxWidth > 1024) {
              crossAxisCount = 4; 
            } else if (constraints.maxWidth > 768) {
              crossAxisCount = 3; 
            } else {
              crossAxisCount = 2; 
            }

            return GridView.count(
              crossAxisCount: crossAxisCount,
              padding: EdgeInsets.all(10),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              children: countries.map((countries) {
                return FlagCard(
                  image: countries['image']!,
                  country: countries['country']!,
                  title: countries['title']!,
                  details: countries['details']!,
                );
              }).toList(),
            );
          },
        ),
      ),
    );
  }
}
