import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: 'Aqsati',
      home: Home(),
    ));

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeState();
  }
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Drawer Header'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          Stack(
            overflow: Overflow.visible,
            children: <Widget>[
              Container(
                height: 240,
                width: double.infinity,
                decoration: BoxDecoration(
                    gradient: RadialGradient(
                        colors: [Color(0xff1D8EBA), Color(0xff1D8EBA)],
                        radius: 1)),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30, left: 50, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Aqsati",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
              Positioned(
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          "منصة أقساطي",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 30,
                              color: Colors.white,
                              fontFamily: 'Cairo'),
                        ),
                        Text(
                          "",
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 30,
                              color: Colors.white),
                        ),
                      ],
                    ),
                    Text(
                      "توفر لك أقساطي مجموعة من الاحصائييات التي تسهل عملك",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.white),
                    ),
                  ],
                ),
                top: 55,
                left: 55,
              ),
              Positioned(
                child: Container(
                  width: 300,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      border: Border.all(color: Colors.blueGrey)),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Text(
                                "اكثر من",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.black45),
                              ),
                              Text(
                                "262,991",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24,
                                    color: Colors.black87),
                              ),
                              Text(
                                "مستفيد",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.black45),
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Image.asset(
                                'images/aqsati.png',
                                width: 40,
                              )
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Text(
                                "اكثر من ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.black45),
                              ),
                              Text(
                                "2,974",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24,
                                    color: Colors.black87),
                              ),
                              Text(
                                "جمعية فعالة",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.black45),
                              ),
                            ],
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                        child: Divider(
                          thickness: 1.5,
                        ),
                      ),
                      Column(
                        children: <Widget>[
                          Text(
                            "اكثر من ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.black45),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image.asset(
                                'images/Green_Arrow.png',
                                width: 18,
                              ),
                              Text(
                                "6,998,263",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24,
                                    color: Colors.black87),
                              ),
                            ],
                          ),
                          Text(
                            "قسط تم انشاءه حتى الان",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.black45),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                bottom: -155,
                left: 50,
              ),
              Positioned(
                child: Container(
                  width: 300,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  child: Column(
                    children: <Widget>[Image.asset('images/logo_Enjaz_w.png')],
                  ),
                ),
                bottom: -310,
                left: 50,
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          debugPrint('الدخول للمنصة');
        },
        label: Text(
          'الدخول للمنصة',
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
        ),
        icon: Icon(Icons.arrow_downward),
        backgroundColor: Color(0xff1D8EBA),
      ),
    );
  }
}