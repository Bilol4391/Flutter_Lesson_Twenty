import 'package:flutter/material.dart';
import 'package:flutter_twenty_homework/PageTwo.dart';

class PageOne extends StatefulWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  TextEditingController firstName = TextEditingController();

  TextEditingController lastName = TextEditingController();

  TextEditingController password = TextEditingController();

  TextEditingController avatar = TextEditingController();


  List <String> listOfAvatar = [
    "https://cdn-icons-png.flaticon.com/512/2702/2702602.png",
    "https://cdn-icons-png.flaticon.com/512/0/747.png"
  ];

  int selectIndexImage = -1;

  bool isNameEmpty = false;
  bool isLastNameEmpty = false;
  bool isPasswordEmpty = false;
  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Color(0xff1E1E1E),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  height: 32,
                  width: 32,
                  padding: EdgeInsets.only(left: 7),
                  margin: EdgeInsets.only(top: 60, left: 20),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.03),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.arrow_back_ios,
                    size: 15,
                    color: Color(0xffDDDDDD),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 55, left: 105),
                  child: Image.asset("assets/Vector 23.03.54.png"),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 30, left: 146),
              child: Text(
                "Register",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 18, left: 100),
                  child: Text(
                    "If You Need Any Support",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        letterSpacing: .5,
                        fontSize: 13,
                        color: Color(
                          0xffE1E1E1,
                        )),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 18, left: 3),
                  child: Text(
                    "Click Here",
                    style: TextStyle(
                        fontWeight: FontWeight.w800,
                        letterSpacing: .5,
                        fontSize: 13,
                        color: Color(
                          0xff38B432,
                        )),
                  ),
                ),
              ],
            ),
            Container(
              width: 400,
              height: 80,
              padding: EdgeInsets.only(left: 30, top: 16),
              margin: EdgeInsets.only(left: 20, right: 20, top: 30),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  border:
                      Border.all(color: Color(0xffffffff).withOpacity(0.14))),
              child: TextFormField(
                controller: firstName,
                onChanged: (s) {
                  isNameEmpty = false;
                  setState(() {});
                },
                cursorColor: Color(0xffFFCC00),
                keyboardType: TextInputType.text,
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Full Name",
                    hintStyle:
                        TextStyle(color: Color(0xffA7A7A7).withOpacity(0.6))),
              ),
            ),
            isNameEmpty
                ? Padding(
                    padding: EdgeInsets.only(left: 30, top: 5),
                    child: Text(
                      "You must write name",
                      style: TextStyle(color: Colors.red),
                    ),
                  )
                : SizedBox.shrink(),
            Container(
              width: 400,
              height: 80,
              padding: EdgeInsets.only(left: 30, top: 16),
              margin: EdgeInsets.only(left: 20, right: 20, top: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  border:
                      Border.all(color: Color(0xffffffff).withOpacity(0.14))),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                controller: lastName,
                onChanged: (a) {
                  isLastNameEmpty = false;
                  setState(() {});
                },
                cursorColor: Color(0xffFFCC00),
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Enter Email",
                    hintStyle:
                        TextStyle(color: Color(0xffA7A7A7).withOpacity(0.6))),
              ),
            ),
            isLastNameEmpty
                ? Padding(
                    padding: EdgeInsets.only(left: 30, top: 5),
                    child: Text(
                      "You must write email",
                      style: TextStyle(color: Colors.red),
                    ),
                  )
                : SizedBox.shrink(),
            Container(
              width: 400,
              height: 80,
              padding: EdgeInsets.only(left: 30, top: 16),
              margin: EdgeInsets.only(left: 20, right: 20, top: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  border:
                      Border.all(color: Color(0xffffffff).withOpacity(0.14))),
              child: TextFormField(
                obscureText: isPasswordVisible,
                keyboardType: TextInputType.visiblePassword,
                controller: password,
                onChanged: (a) {
                  isPasswordEmpty = false;
                  setState(() {});
                },
                cursorColor: Color(0xffFFCC00),
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                decoration: InputDecoration(
                    suffixIcon: Container(
                      margin: EdgeInsets.only(right: 13),
                      child: IconButton(
                        icon: Icon(
                          isPasswordVisible
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: Color(0xff5B5B5B),
                        ),
                        onPressed: () {
                          setState(() {
                            isPasswordVisible = !isPasswordVisible;
                          });
                        },
                      ),
                    ),
                    border: InputBorder.none,
                    hintText: "Password",
                    hintStyle:
                        TextStyle(color: Color(0xffA7A7A7).withOpacity(0.6))),
              ),
            ),
            isPasswordEmpty
                ? Padding(
                    padding: EdgeInsets.only(left: 30, top: 5),
                    child: Text(
                      "You must write Password",
                      style: TextStyle(color: Colors.red),
                    ),
                  )
                : SizedBox.shrink(),

            InkWell(
              onTap: () {
                //   if(firstName.text == "abs"){
                //   print("object");
                // }
                if (firstName.text.isNotEmpty && lastName.text.isNotEmpty) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) {
                        return PageTwo(
                          name: firstName.text,
                          lastName: lastName.text,
                          avatar: selectIndexImage == -1
                              ? ""
                              : listOfAvatar[selectIndexImage],
                        );
                      },
                    ),
                  );
                } else if (firstName.text.isEmpty &&
                    lastName.text.isEmpty &&
                    password.text.isEmpty) {
                  isNameEmpty = true;
                  isLastNameEmpty = true;
                  isPasswordEmpty = true;
                  setState(() {});
                } else if (firstName.text.isEmpty) {
                  isNameEmpty = true;
                  setState(() {});
                } else if (lastName.text.isEmpty) {
                  isLastNameEmpty = true;
                  setState(() {});
                } else if (password.text.isEmpty) {
                  isPasswordEmpty = true;
                  setState(() {});
                }
              },
              child: Container(
                  width: 400,
                  height: 90,
                  margin: EdgeInsets.only(left: 20, right: 20, top: 25),
                  decoration: BoxDecoration(
                      color: Color(0xff42C83C),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.white.withOpacity(0.14),
                            spreadRadius: 1,
                            blurRadius: 1,
                            offset: Offset(-1, 1)),
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      border: Border.all(
                          color: Color(0xffffffff).withOpacity(0.14))),
                  child: Center(
                      child: Text(
                    "Create Account",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ))),
            ),

            Row(
              children: [
                Container(
                  height: 0.2,
                  width: 170,
                  margin: EdgeInsets.only(top: 37, left: 20),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.white, Colors.grey.withOpacity(.4)]),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: 35, left: 12),
                    child: Text(
                      "Or",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                          color: Color(0xff383838)),
                    )),
                Container(
                  height: 0.2,
                  width: 167,
                  margin: EdgeInsets.only(top: 37, left: 10),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.grey.withOpacity(0.5), Colors.white],
                    ),
                  ),
                ),
              ],
            ),


            Padding(
              padding: EdgeInsets.only(left: 110, top: 22),
              child: SizedBox(
                height: 80,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: listOfAvatar.length,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        InkWell(
                          onTap: () {
                            if (firstName.text.isNotEmpty && lastName.text.isNotEmpty) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) {
                                    return PageTwo(
                                      name: firstName.text,
                                      lastName: lastName.text,
                                      avatar: selectIndexImage == -1
                                          ? ""
                                          : listOfAvatar[selectIndexImage],
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

                          child: Container(
                            height: 55,
                            width: 55,
                            decoration: BoxDecoration(
                                borderRadius:
                                BorderRadius.all(Radius.circular(16)),
                                image: DecorationImage(
                                  image: NetworkImage(listOfAvatar[index]),
                                  fit: BoxFit.contain,
                                )),
                            margin: EdgeInsets.only(left: 30, top: 20),
                          ),
                        ),
                      ],
                    );
                  }),
              ),
            ),


            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 97, top: 40),
                  child: Text(
                    "Do You Have An Account?",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                      color: Color(0xffDBDBDB),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 3, top: 40),
                  child: Text(
                    "Sign in",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                      color: Color(0xff288CE9),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
