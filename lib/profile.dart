import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.blue,
                height: 100,
                child: Text('Hello'),
              ),
            ),
            Expanded(
                flex: 3,
                child: Container(
                  color: Colors.red,
                  height: 100,
                  child: Text('Hello'),
                )),
            Expanded(
              child: Container(
                color: Colors.green,
                height: 100,
                child: Text('Hello'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
