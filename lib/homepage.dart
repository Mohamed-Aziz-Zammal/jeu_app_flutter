import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: list.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children: [
                  Container(
                    height: 100,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: list[index].secomdarycolor,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 4,
                            color: Colors.black45,
                            spreadRadius: 0.5,
                            offset: Offset(3, 4)),
                      ],
                    ),
                  ),
                  Container(
                    height: 90,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: list[index].primarycolor,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 4,
                            color: Colors.black12,
                            spreadRadius: 0.3,
                            offset: Offset(
                              5,
                              3,
                            ))
                      ],
                    ),
                    child: Column(
                      children: [
                        Center(
                            child: Text(
                          list[index].name,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              shadows: [
                                Shadow(
                                    color: Colors.black26,
                                    blurRadius: 2,
                                    offset: Offset(1, 2)),
                                Shadow(
                                    color: Colors.green,
                                    blurRadius: 2,
                                    offset: Offset(0.5, 2))
                              ]),
                        )),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: genratestar(list[index].noOfstar),
                        )
        
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  List<Widget> genratestar(int no) {
    List<Widget> _icons = [];
    for (int i = 0; i < no; i++) {
      _icons.insert(
          i,
          Icon(
            Icons.star,
            color: Colors.yellow,
          ));
    }
    return _icons;
  }
}

class Details {
  String name;
  Color primarycolor;
  Color secomdarycolor;
  //Widget goto;
   int noOfstar;
  Details({
    required this.name,
    required this.primarycolor,
    required this.secomdarycolor,
    //required this.goto,
    this.noOfstar = 0,
    
  });
}

List<Details> list = [
  Details(
    name: "EASY",
    primarycolor: Colors.green,
    secomdarycolor: Colors.green[200] ?? Colors.green,
    //goto: Text("Easy"),
    noOfstar: 1,
  ),
  Details(
    name: "MEDIUM",
    primarycolor: Colors.orange,
    secomdarycolor: Colors.orange[200] ?? Colors.orange,
    noOfstar: 2,
  ),
  Details(
    name: "HARD",
    primarycolor: Colors.red,
    secomdarycolor: Colors.red[200] ?? Colors.red,
    noOfstar: 3,
  )
];
