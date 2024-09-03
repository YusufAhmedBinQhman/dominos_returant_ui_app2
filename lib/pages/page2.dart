import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  List<dynamic> menu = [
    {"name": "Other"},
    {"name": "Pizza"},
    {"name": "Cheken"},
    {"name": "Rice"},
    {"name": "Juice"},
    {"name": "Other"},
    {"name": "Rice"},
    {"name": "Juice"},
    {"name": "Other"},
  ];

  ///
  List<dynamic> image = [
    {"images": "images/image3.jpg"},
    // {"images": "images/image4.jpg"},
    // {"images": "images/image4.jpg"},
    // {"images": "images/image4.jpg"},
  ];
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
            color: const Color.fromARGB(255, 12, 64, 106),
            height: 320,
            width: MediaQuery.of(context).size.width,
            // decoration: BoxDecoration(
            //     image: DecorationImage(image: AssetImage("images/image3.jpg"))),
            child: Image.asset(
              "images/image3.jpg",
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
                  color: Color.fromARGB(255, 12, 64, 106),
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
                                    image: AssetImage("images/image3.jpg"),
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
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                  height: 80,
                  width: MediaQuery.of(context).size.width - 20,
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "30% OFF",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Enjoy 30% off on of catagorice ",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ],
                  ),
                ),

                //menu Other
                Container(
                  margin: EdgeInsets.only(left: 30),
                  padding: EdgeInsets.only(left: 20),
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.orange[50],
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          bottomLeft: Radius.circular(30))),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: menu.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Center(
                          child: Row(
                        children: [
                          Text(
                            "${menu[index]["name"]}",
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
                    itemCount: 8,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        width: 420,
                        // height: 60,
                        margin: EdgeInsets.only(
                            left: 10, right: 10, top: 1, bottom: 10),
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
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                        "images/image3.jpg",
                                      ),
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
                                      "Item Name",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "this Item for Sandwich form Macdonalds ",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w800,
                                          color: Colors.grey),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "\$5.55",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Text(
                                          "\$6.7",
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
