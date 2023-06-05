import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class Mypage extends StatelessWidget {
  const Mypage({ Key ? key}) : super(key: key);

  /* 정보 모달 */
  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Copyright ******',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 10
                    )),
                SizedBox(height: 16.0),
                Text('개인정보관리책임자:김성원',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 10
                    )),
                SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('확인'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  /* 설정 모달 */


  /* 의견보내기 모달 */
  void companyBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('E-mail : kimeende@naver.com',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15
                    )),
                SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('확인'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

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
              /***************** 메인홈 화면 이미지 *****************/
                Container(
                  margin: EdgeInsets.only(top: 50),
                  width: MediaQuery.of(context).size.width ,
                  child: Column(
                    crossAxisAlignment:CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            '8075-8012님',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.symmetric(vertical: 200),
                        child: Row(
                          children: [
                            /* 뷱마크 */
                            Container(
                              height: 80,
                              width: MediaQuery.of(context).size.width * 0.25 ,
                              child: Center(
                                child: Container(
                                  height: 80,
                                  width: 60,
                                  child: Column(
                                    children: [
                                      new IconButton(
                                        icon: new Icon(Icons.bookmark_outline),
                                        iconSize: 30,
                                        onPressed: () => {},
                                      ),
                                      Text(
                                        '북마크',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),

                            
                            /* 의견보내기 */
                            Container(
                              height: 80,
                              width: MediaQuery.of(context).size.width * 0.25 ,
                              child: Center(
                                child: Container(
                                  height: 80,
                                  width: 70,
                                  child: Column(
                                    children: [
                                      new IconButton(
                                        icon: new Icon(Icons.mail_outline),
                                        iconSize: 30,
                                        onPressed: () => {
                                          companyBottomSheet(context)
                                      },
                                      ),
                                      Text(
                                        '의견보내기',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),

                            /* 설정 */
                            Container(
                              height: 80,
                              width: MediaQuery.of(context).size.width * 0.25 ,
                              child: Center(
                                child: Container(
                                  height: 80,
                                  width: 70,
                                  child: Column(
                                    children: [
                                      new IconButton(
                                        icon: new Icon(Icons.settings),
                                        iconSize: 30,
                                        onPressed: () => {},
                                      ),
                                      Text(
                                        '설정',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),

                            /* 정보 */
                            Container(
                              height: 80,
                              width: MediaQuery.of(context).size.width * 0.25 ,
                              child: Center(
                                child: Container(
                                  height: 80,
                                  width: 70,
                                  child: Column(
                                    children: [
                                      new IconButton(
                                        icon: new Icon(Icons.info_outline),
                                        iconSize: 30,
                                        onPressed: () {
                                          _showBottomSheet(context); // BottomSheet 띄우기
                                        },
                                      ),
                                      Text(
                                        '정보',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),
                    ],
                  ),
                ),

      ],),
    )));
  }
}


