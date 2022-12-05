import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final String name;
  final String lastName;
  final String avatar;

  const ProfilePage(
      {Key? key,
      required this.name,
      required this.lastName,
      required this.avatar})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            avatar.isEmpty
                ? Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.grey,
              ),
              child: Center(
                child: Text("${name[0]}${lastName[0]}".toUpperCase(), style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, letterSpacing: .5, color: Colors.red),),
              ),
            )
                : Container(
              margin: EdgeInsets.only(bottom:20 ),
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                image: DecorationImage(
                  image: NetworkImage(avatar),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text(
              "Profile name : $name",
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(
              height: 24,
            ),
            Text(
              "Profile last name : $lastName",
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
