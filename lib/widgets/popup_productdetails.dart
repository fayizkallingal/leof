import 'package:flutter/material.dart';
import 'package:leof/widgets/container_button.dart';

class PopupDetailsproduct extends StatelessWidget {
  PopupDetailsproduct({super.key});

  final istyle = TextStyle(
    color: Colors.black87,
    fontWeight: FontWeight.w500,
    fontSize: 18,
  );

  List<Color> clrs = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.yellow,
  ];

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
          backgroundColor: Colors.transparent,
          context: context,
          builder: (context) => Container(
            height: MediaQuery.of(context).size.height / 2.5,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                )),
            child: Padding(
              padding: EdgeInsets.all(30),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Size:", style: istyle),
                      SizedBox(height: 20),
                      Text("Color:", style: istyle),
                      SizedBox(height: 20),
                      Text("Total:", style: istyle),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'S',
                            style: istyle,
                          ),
                          SizedBox(width: 30),
                          Text(
                            'M',
                            style: istyle,
                          ),
                          SizedBox(width: 30),
                          Text(
                            'L',
                            style: istyle,
                          ),
                          SizedBox(width: 30),
                          Text(
                            'XL',
                            style: istyle,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: Row(children: [
                          for (var i = 0; i < 4; i++)
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 5),
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                color: clrs[i],
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                        ]),
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          SizedBox(width: 10),
                          SizedBox(width: 10),
                          Text(
                            "-",
                            style: istyle,
                          ),
                          SizedBox(width: 10),
                          Text(
                            '1',
                            style: istyle,
                          ),
                          SizedBox(width: 10),
                          Text(
                            "+",
                            style: istyle,
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
      child: Containerbutton(
          containerWidth: MediaQuery.of(context).size.width / 1.5,
          itext: "Buy Now",
          bgcolor: Color.fromARGB(255, 21, 207, 27)),
    );
  }
}
