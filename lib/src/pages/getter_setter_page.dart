import 'package:flutter/material.dart';

class ExampleOfGetterSetter extends StatelessWidget {
  const ExampleOfGetterSetter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Example of getter setter'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          children: [
            Text('Example of Getter Setter'),
            Divider(
              thickness: 2,
            )
          ],
        ),
      ),
    );
  }
}
