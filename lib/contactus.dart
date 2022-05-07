import 'package:day_1/profile.dart';
import 'package:flutter/material.dart';

class ContactUsScreen extends StatefulWidget {
  const ContactUsScreen({Key? key}) : super(key: key);

  @override
  State<ContactUsScreen> createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends State<ContactUsScreen> {
  var _key = GlobalKey<FormState>();
  String name = '';
  String email = '';
  @override
  Widget build(BuildContext context) {
    Profile profile = ModalRoute.of(context)!.settings.arguments as Profile;

    return Scaffold(
      appBar: AppBar(
        title: Text(profile.name),
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: Form(
          key: _key,
          child: Column(
            children: [
              TextFormField(
                onSaved: (String? value) {
                  name = value!;
                },
                validator: validateString,
                decoration:
                    InputDecoration(hintText: 'Name', labelText: 'Name'),
              ),
              TextFormField(
                onSaved: (String? value) {
                  email = value!;
                },
                validator: validateString,
                decoration:
                    InputDecoration(hintText: 'Email', labelText: 'Email'),
              ),
              ElevatedButton(onPressed: submit, child: Text('Submit'))
            ],
          ),
        ),
      ),
    );
  }

  submit() {
    if (_key.currentState!.validate()) {
      _key.currentState!.save();
      print('username: $name email:$email');
    }
  }

  String? validateString(String? value) {
    if (value == null || value == '') {
      return 'Please fill data';
    }
    if (value.length > 10) {
      return 'length limit 10';
    }

    return null;
  }
}
