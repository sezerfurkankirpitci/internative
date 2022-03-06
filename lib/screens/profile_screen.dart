import 'package:flutter/material.dart';
import 'package:internative/data/users_model.dart';
import 'package:internative/widgets/button_widgets.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void _logout() async {
      Provider.of<User>(context,listen:false).clearAll();
      Navigator.pushNamedAndRemoveUntil(context, '/login', (route) => false);
    }
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Profile')),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Container(
              color: Colors.yellow,
              height: 200,
              width: double.infinity,
              child: Text('Profile Photo'),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
                height: 200,
                color: Colors.red,
                width: double.infinity,
                child: Text('Map')),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child:
                  WhiteButton(text: 'Save', onTap: () {}, iconData: Icons.logout),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: BlackButton(
                  text: 'Log Out', onTap: _logout, iconData: Icons.logout),
            )
          ],
        ),
      ),
    );
  }
}
