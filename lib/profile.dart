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
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 75,
              backgroundImage: AssetImage('images/me.jpg'),
            ),
            Text(
              'Natchapat Laotrakul',
              style: Theme.of(context).textTheme.headline1,
            ),
            Text(
              'Flutter Developer',
              style: TextStyle(
                color: Colors.teal.shade200,
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.phone),
                title: Text('0258569569'),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.email),
                title: Text('natchapat@gmail.com'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
