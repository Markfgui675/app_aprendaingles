import 'package:flutter/cupertino.dart';

class TelaVogais extends StatefulWidget {
  const TelaVogais({Key? key}) : super(key: key);

  @override
  State<TelaVogais> createState() => _TelaVogaisState();
}

class _TelaVogaisState extends State<TelaVogais> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text('Vogais')
          ],
        ),
      ),
    );
  }
}
