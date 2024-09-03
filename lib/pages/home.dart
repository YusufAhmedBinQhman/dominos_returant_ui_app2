import 'package:dominos_returant_ui_app2/model/component.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  Component comp = Component();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      //main column
      child: Column(
        children: [
          //image
          Container(
            //bachground
            color: Color.fromARGB(255, 68, 106, 12),
            height: 300,
            width: MediaQuery.of(context).size.width,
            // decoration: BoxDecoration(
            //     image: DecorationImage(image: AssetImage("images/image3.jpg"))),
            child: Image.asset(
              "images/home.jpg",
              fit: BoxFit.fill,
            ),
          ),

          ///adddd
          Container(
            color: Colors.white,
            child: Column(
              children: [
                //bellow
                Container(
                  color: Color.fromARGB(255, 201, 169, 134),
                  child: Container(
                    padding: EdgeInsets.all(15),
                    //height: 200,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20))),
                    child: Column(children: [
                      //macdo and heart
                      Row(
                        children: [
                          //image
                          Container(
                            height: 40,
                            width: 50,
                            // alignment: Alignment.center,
                            decoration: BoxDecoration(
                                //   color: Colors.yellow,
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: AssetImage("images/macdon.jpg"),
                                    fit: BoxFit.cover)),
                            margin: EdgeInsets.only(right: 10),
                          ),
                          //text macdon
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "MC Donalds",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                " American culstant that food",
                                style: TextStyle(fontWeight: FontWeight.w300),
                              ),
                            ],
                          ),
                          Spacer(),
                          Icon(
                            Icons.favorite,
                            color: Colors.red,
                          )
                        ],
                      ),
                      //////end macdo

                      SizedBox(
                        height: 10,
                      ), //2 text
                      Row(
                        children: [
                          Text(
                            "daily tyt: ",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "8:30 am to 11:00 pm",
                            style: TextStyle(
                                color: Colors.amber[800],
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      )
                      //star and text
                      ,
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.amber[800]),
                          Text(" 4.9",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold)),
                          Text("  200+ Ratings",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      //icon loca
                      Row(
                        children: [
                          Icon(Icons.location_on, color: Colors.amber[800]),
                          Text("  Location",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                      SizedBox(height: 10),
                    ]),
                  ),
                ),
                //menu Other
                Container(
                  margin: EdgeInsets.only(left: 20),
                  padding: EdgeInsets.only(left: 20),
                  height: 60,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 236, 205),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          bottomLeft: Radius.circular(30))),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: comp.menu.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Center(
                          child: Row(
                        children: [
                          Text(
                            "${comp.menu[index]["name"]}",
                            style: TextStyle(color: Colors.grey[600]),
                          ),
                          SizedBox(
                            width: 20,
                          )
                        ],
                      ));
                    },
                  ),
                ),
                //list
                Container(
                  height: 300,
                  child: ListView.builder(
                    //scrollDirection: Axis.horizontal,
                    itemCount: comp.listTileItem.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        width: 420,
                        // height: 60,
                        margin: EdgeInsets.only(
                            left: 20, right: 15, top: 1, bottom: 10),
                        //   height: 65,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(0, 10),
                                  blurRadius: 10)
                            ]),
                        child: ListTile(
                          title: Row(
                            children: [
                              Container(
                                height: 75,
                                width: 90,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "${comp.listTileItem[index]["images"]}"),
                                      fit: BoxFit.cover),
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              SizedBox(width: 15),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "${comp.listTileItem[index]["name"]}",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "${comp.listTileItem[index]["ItemCommit"]}",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w800,
                                          color: Colors.grey),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "${comp.listTileItem[index]["newprice"]}",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Text(
                                          "${comp.listTileItem[index]["oldprice"]}",
                                          style: TextStyle(
                                              decoration:
                                                  TextDecoration.lineThrough,
                                              color: Colors.grey,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),

                              //+ heart
                              Column(
                                children: [
                                  Icon(
                                    Icons.favorite_border_outlined,
                                    size: 30,
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Icon(
                                    Icons.add,
                                    size: 30,
                                    color: Colors.black,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      );

                      ///aaaa
                      // Container(
                      //   decoration: BoxDecoration(
                      //       color: Colors.cyan,
                      //       borderRadius: BorderRadius.circular(20)),
                      //   margin: EdgeInsets.all(10),
                      //   // padding: EdgeInsets.all(15),
                      //   width: 420,
                      //   child: Image.asset(
                      //     "images/f.jpg",
                      //     fit: BoxFit.cover,
                      //   ),
                      // );
                      ///aaa
                    },
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
