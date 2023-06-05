import 'package:flutter/material.dart';

class Mapfind extends StatelessWidget {
  const Mapfind({ Key ? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            margin: EdgeInsets.all(10),
            color: Colors.white,
            height: double.infinity,
            width: double.infinity,
            child: SingleChildScrollView(
                child: Column(children: <Widget>[

                  /****************** 전체지도 *****************/
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              '전체 지도',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          color: Colors.red,
                          width: MediaQuery.of(context).size.width * 0.9,
                          height: 500,
                        ),
                      ],
                    ),
                  ),

                ])
            )));
  }
}