import 'package:dominos_returant_ui_app2/model/component.dart';
import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
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
            height: 380,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 12, 64, 106),
                //   color: Colors.yellow,
                image: DecorationImage(
                    image: AssetImage("images/page3.jpg"), fit: BoxFit.fill)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Icon(
                  Icons.keyboard_arrow_left,
                  size: 40,
                  color: Colors.white,
                ),
                SizedBox(height: 40),
                Text(
                  "Maga Deal",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Get Maga dears here",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                )
              ],
            ),
          ),

          ///adddd
          Container(
            color: Colors.white,
            child: Column(
              children: [
                //bellow
                Container(
                  color: Color.fromARGB(255, 197, 24, 12),
                  child: Container(
                    padding: EdgeInsets.fromLTRB(15, 20, 15, 15),
                    //height: 200,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20))),
                  ),
                ),
                //rectangular Orange
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20, bottom: 15),
                  padding:
                      EdgeInsets.only(left: 20, right: 10, top: 20, bottom: 20),
                  height: 80,
                  width: MediaQuery.of(context).size.width - 20,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 243, 110, 33),
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.info_outline,
                        color: Colors.white,
                      ),
                      SizedBox(width: 10),
                      Text("Campaign info",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                      Spacer(flex: 10),
                      Text("Click here",
                          style: TextStyle(color: Colors.white, fontSize: 12)),
                      Spacer(
                        flex: 1,
                      ),
                      Icon(Icons.arrow_right_alt_outlined, color: Colors.white)
                    ],
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
                                        Icon(
                                          Icons.star,
                                          color:
                                              Color.fromARGB(255, 243, 110, 33),
                                          size: 18,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color:
                                              Color.fromARGB(255, 243, 110, 33),
                                          size: 18,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color:
                                              Color.fromARGB(255, 243, 110, 33),
                                          size: 18,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color:
                                              Color.fromARGB(255, 243, 110, 33),
                                          size: 18,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color:
                                              Color.fromARGB(255, 243, 110, 33),
                                          size: 18,
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Icon(
                                          Icons.share_arrival_time,
                                          color: Colors.grey,
                                          size: 18,
                                        ),
                                        Icon(
                                          Icons.send_outlined,
                                          color: Colors.grey,
                                          size: 18,
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
                                    Icons.favorite,
                                    size: 20,
                                    color: Color.fromARGB(255, 243, 110, 33),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
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
