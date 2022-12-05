import 'package:flutter/material.dart';
import 'package:flutter_twenty_lesson/ProfilePage.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  List<String> listOfImage = [
    "https://images.unsplash.com/photo-1668603145974-c05f7a0e4552?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNHx8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60",
    "https://images.unsplash.com/photo-1669837246150-861dfbd0d31f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxMnx8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60",
    "https://images.unsplash.com/photo-1664575196412-ed801e8333a1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwxfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60",
    "https://images.unsplash.com/photo-1668603145974-c05f7a0e4552?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNHx8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60",
  ];

  TextEditingController firstName = TextEditingController();

  TextEditingController lastName = TextEditingController();

  TextEditingController avatar = TextEditingController();



  int selectIndexImage = -1;

  bool isNameEmpty = false;
  bool isLastNameEmpty = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 100,
              child: ListView.builder(
                  itemCount: listOfImage.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.all(4),
                      child: InkWell(
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16)),
                              border: Border.all(
                                  color: selectIndexImage == index
                                      ? Colors.blue
                                      : Colors.grey,
                                  width: 4),
                              image: DecorationImage(
                                image: NetworkImage(listOfImage[index]),
                                fit: BoxFit.cover,
                              )),
                        ),
                        onTap: () {
                          if (selectIndexImage == index) {
                            selectIndexImage = -1;
                          } else {
                            selectIndexImage = index;
                          }
                          setState(() {});
                        },
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 24,
            ),
            TextFormField(
              controller: firstName,
              onChanged: (s) {
                isNameEmpty = false;
                setState(() {});
              },
              decoration: InputDecoration(
                labelText: "First name",
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(),
                errorBorder: OutlineInputBorder(),
              ),
            ),
            isNameEmpty
                ? Text(
                    "You must write name",
                    style: TextStyle(color: Colors.red),
                  )
                : SizedBox.shrink(),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: lastName,
              onChanged: (a) {
                isLastNameEmpty = false;
                setState(() {});
              },
              decoration: InputDecoration(
                labelText: "Last name",
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(),
                errorBorder: OutlineInputBorder(),
              ),
            ),
            isLastNameEmpty
                ? Text(
                    "You must write LastNmae",
                    style: TextStyle(color: Colors.red),
                  )
                : SizedBox.shrink(),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {

                //   if(firstName.text == "abs"){
                //   print("object");
                // }
                  if (firstName.text.isNotEmpty && lastName.text.isNotEmpty) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) {
                          return ProfilePage(
                            name: firstName.text,
                            lastName: lastName.text,
                            avatar: selectIndexImage == -1
                                ? ""
                                : listOfImage[selectIndexImage],
                          );
                        },
                      ),
                    );
                  } else if (firstName.text.isEmpty && lastName.text.isEmpty) {
                    isNameEmpty = true;
                    isLastNameEmpty = true;
                    setState(() {});
                  } else if (firstName.text.isEmpty) {
                    isNameEmpty = true;
                    setState(() {});
                  } else if (lastName.text.isEmpty) {
                    isLastNameEmpty = true;
                    setState(() {});
                  }
                },
                child: Container(child: Text("Login")))
          ],
        ),
      ),
    );
  }
}
