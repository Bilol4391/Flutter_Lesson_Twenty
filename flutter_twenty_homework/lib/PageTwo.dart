import 'package:flutter/material.dart';
import 'package:flutter_twenty_homework/PageOne.dart';

class PageTwo extends StatelessWidget {
  final String name;
  final String lastName;
  final String avatar;

  PageTwo(
      {Key? key,
      required this.name,
      required this.lastName,
      required this.avatar})
      : super(key: key);

  List listOfImage = [
    "https://images.unsplash.com/photo-1646297226339-febd1eaee532?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDMyfEJuLURqcmNCcndvfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=800&q=60",
    "https://images.unsplash.com/photo-1668195327624-06e596eb797c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDE2fEJuLURqcmNCcndvfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=800&q=60",
    "https://images.unsplash.com/photo-1668243438506-8dce693c6614?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDV8Qm4tRGpyY0Jyd298fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60",
    "https://images.unsplash.com/photo-1663939384566-00c2a7bee5bf?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDI0fGhtZW52UWhVbXhNfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=800&q=60",
    "https://images.unsplash.com/photo-1664476708605-d17bfb479fda?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDZ8aG1lbnZRaFVteE18fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60",
    "https://images.unsplash.com/photo-1666167414289-b439a8c70346?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDR8aG1lbnZRaFVteE18fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60",
  ];

  List listOfMusic = [
    "Billie Ellish",
    "Rustam Dobriy",
    "Kuzmunchog'im",
    "I can fly",
    "Mood",
    "Leo Daryo",
  ];

  List listOfName = [
    "Bilolbek",
    "Rasulbek",
    "G'iyosiddin",
    "Sharif",
    "Sahobiddin",
    "Asror",
  ];

  List listOfTime = [
    "5:33",
    "5:12",
    "7:54",
    "7: 21",
    "3:32",
    "4:12",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1E1E1E),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 430,
            height: 358,
            decoration: BoxDecoration(
                color: Color(0xff2C2B2B),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(70),
                  bottomRight: Radius.circular(70),
                )),
            child: Column(
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 60, left: 20),
                        height: 32,
                        width: 32,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white.withOpacity(0.04)),
                        child: Padding(
                            padding: EdgeInsets.only(left: 7),
                            child: Icon(
                              Icons.arrow_back_ios,
                              color: Color(0xffDDDDDD),
                              size: 15,
                            )),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 55, left: 133),
                      child: Text(
                        "Profile",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                          color: Color(0xffE6E6E6),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 55, left: 145),
                      child: Icon(
                        Icons.more_vert,
                        color: Color(0xffA68C8C),
                      ),
                    ),
                  ],
                ),
                Container(
                    margin: EdgeInsets.only(top: 0, right: 7),
                    child: Column(
                      children: [
                        avatar.isEmpty
                            ? Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                    image: DecorationImage(
                                        image:
                                            AssetImage("assets/picture.png"))),
                                child: Center(
                                  child: Text(
                                    "${name[0]}${lastName[0]}".toUpperCase(),
                                    style: TextStyle(
                                        fontSize: 40,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: .5,
                                        color: Colors.grey),
                                  ),
                                ),
                              )
                            : Container(
                                margin: EdgeInsets.only(bottom: 0),
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  image: DecorationImage(
                                    image: NetworkImage(avatar),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              )
                      ],
                    )),
                Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: Text(
                    "$lastName",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffD8D4D4)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    "$name",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    Padding(
                        padding: EdgeInsets.only(left: 110),
                        child: Text(
                          "778",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                              fontSize: 20),
                        )),
                    Padding(
                        padding: EdgeInsets.only(left: 120),
                        child: Text("243",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                                fontSize: 20))),
                  ],
                ),
                SizedBox(
                  height: 7,
                ),
                Row(
                  children: [
                    Padding(
                        padding: EdgeInsets.only(left: 100),
                        child: Text("Following",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Color(0xffA1A1A1),
                                fontSize: 14))),
                    Padding(
                        padding: EdgeInsets.only(left: 95),
                        child: Text("Followers",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Color(0xffA1A1A1),
                                fontSize: 14))),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, top: 25),
            child: Text(
              "Public playlists".toUpperCase(),
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 15,
                  color: Color(0xffD6D6D6)),
            ),
          ),
          SizedBox(
            height: 471,
            child: ListView.builder(
                itemCount: listOfImage.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(left: 20, top: 17),
                    child: Row(
                      children: [
                        Container(
                          width: 65,
                          height: 63,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                listOfImage[index],
                              ),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(17)),
                          ),
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 20,
                                ),
                                child: Container(
                                  width: 135,
                                  child: Text(
                                    listOfMusic[index],
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xffE3E3E3)),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 20, top: 10),
                                child: Text(
                                  listOfName[index],
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xffE3E3E3)),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 50),
                          child: Text(
                            listOfTime[index],
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                              color: Color(0xffE3E3E3),
                            ),
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.only(left: 50),
                            child: Icon(
                              Icons.more_horiz,
                              color: Color(0xffE4E4E4),
                              size: 28,
                            )),
                      ],
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
