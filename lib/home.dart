import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

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
                  width: MediaQuery.of(context).size.width * 0.9,
                  margin: const EdgeInsets.all(8.0),
                  child: Center(
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          /* 정렬하는 다른 방법 [링크 참조 https://blueoceannshark.tistory.com/entry/flutter-Column-%EC%84%B8%EB%A1%9C%EC%B6%95-%EC%A4%91%EC%95%99center-%EC%A0%95%EB%A0%AC-%EB%B0%A9%EB%B2%95-%EB%91%90-%EA%B0%80%EC%A7%80]
                            1. mainAxisAlignment:MainAlignment.center
                            2. VerticalDirection:VerticalDirection.up - children 위젝들이 아래에서 위로 정렬 down일경우 위에서 아레로 정렬
                            3. mainAxisAlignment:MainAlignment.spaceEvenly - children갯수만큼 분할 3개일경우 사이2개 맨위 1개 맨아래 1개 총 4개의 공간이 생김
                            4. mainAxisAlignment:MainAlignment.spaceBetween - 사이공간만 벌어진 상단 하단은 고정 , 사이부분만 공간 발생 총 2개
                            5. crossAxisAlignment:CrossAxisAlignment.end - 모든위젯을 가장큰 위젯의 우측을 기준으로 정렬
                            6. crossAxisAlignment:CrossAxisAlignment.stretch - 위젯의 크기에 상관없이 모든위젯이 화면을 꽉채움
                            */
                          children: <Widget>[
                        /*
                          1. BoxFit.contain - 가로세로 비율 변화 없음
                          2. BoxFit.fill - 꽉채우고 비율 변경됨
                          3. BoxFit.fi - 꽉채우고 비율 변경됨
                          */
                        Image.asset(
                          "assets/images/main_forest.jpg",
                          fit: BoxFit.contain,
                        )
                      ]))),

              /****************** 카테고리 [ 자연명소 , 테마파크 , 체험관광 , 문화유적 , 레저 , 유아 ]*****************/
              Container(
                margin: EdgeInsets.only(top: 50),
                width: MediaQuery.of(context).size.width * 0.9,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          '카테고리',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          /* 1번째 카테고리 */
                          Container(
                            height: 80,
                            width: 80,
                            margin: EdgeInsets.only(right: 30.0, top: 15.0),
                            child: Center(
                              child: Container(
                                height: 80,
                                width: 60,
                                child: Column(
                                  children: [
                                    new IconButton(
                                      icon: new Icon(Icons.landscape),
                                      iconSize: 40,
                                      tooltip: 'landscape',
                                      onPressed: () => {},
                                    ),
                                      Text(
                                        '자연명소',
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

                          /* 2번째 카테고리 */
                          Container(
                            height: 80,
                            width: 80,
                            margin: EdgeInsets.only(right: 30.0, top: 15.0),
                            child: Center(
                              child: Container(
                                height: 80,
                                width: 70,
                                child: Column(
                                  children: [
                                    new IconButton(
                                      icon: new Icon(Icons.attractions),
                                      iconSize: 40,
                                      tooltip: 'landscape',
                                      onPressed: () => {},
                                    ),
                                      Text(
                                        '테마파크',
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

                          /* 3번째 카테고리 */
                          Container(
                            height: 80,
                            width: 80,
                            margin: EdgeInsets.only(right: 30.0, top: 15.0),
                            child: Center(
                              child: Container(
                                height: 80,
                                width: 70,
                                child: Column(
                                  children: [
                                    new IconButton(
                                      icon: new Icon(Icons.tour),
                                      iconSize: 40,
                                      tooltip: 'landscape',
                                      onPressed: () => {},
                                    ),
                                    Text(
                                      '체험관광',
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

                          /* 4번째 카테고리 */
                          Container(
                            height: 80,
                            width: 80,
                            margin: EdgeInsets.only(right: 30.0, top: 15.0),
                            child: Center(
                              child: Container(
                                height: 80,
                                width: 70,
                                child: Column(
                                  children: [
                                    new IconButton(
                                      icon: new Icon(Icons.face_3),
                                      iconSize: 40,
                                      tooltip: 'landscape',
                                      onPressed: () => {},
                                    ),
                                    Text(
                                      '문화유적',
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

                          /* 5번째 카테고리 */
                          Container(
                            height: 80,
                            width: 80,
                            margin: EdgeInsets.only(right: 30.0, top: 15.0),
                            child: Center(
                              child: Container(
                                height: 80,
                                width: 70,
                                child: Column(
                                  children: [
                                    new IconButton(
                                      icon: new Icon(Icons.fitness_center),
                                      iconSize: 40,
                                      tooltip: 'landscape',
                                      onPressed: () => {},
                                    ),
                                    Text(
                                      '레저',
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

                          /* 6번째 카테고리 */
                          Container(
                            height: 80,
                            width: 80,
                            margin: EdgeInsets.only(right: 30.0, top: 15.0),
                            child: Center(
                              child: Container(
                                height: 80,
                                width: 70,
                                child: Column(
                                  children: [
                                    new IconButton(
                                      icon: new Icon(Icons.bedroom_baby_rounded),
                                      iconSize: 40,
                                      tooltip: 'landscape',
                                      onPressed: () => {},
                                    ),
                                    Text(
                                      '유아',
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

              /***************** 인기있는 여행지 [3개 광고] *****************/
              Container(
                margin: EdgeInsets.only(top: 50),
                width: MediaQuery.of(context).size.width * 0.9,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          '인기있는 여행지',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          /* 1번째 관광지 */
                          Container(
                            height: 300,
                            width: 150,
                            margin: EdgeInsets.only(right: 30.0),
                            child: Center(
                              child: Container(
                                height: 260,
                                width: 130,
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "assets/images/main_forest.jpg",
                                      fit: BoxFit.contain,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 20.0),
                                      child: Text(
                                        '여행지1',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                Align(
                                  alignment: Alignment.topCenter,
                                    child: Padding(
                                      padding: EdgeInsets.only(top: 20.0),
                                      child:
                                      Text(
                                        '여행지1에대한 소개여행지1에대한 소개여행지1에대한 소개여행지1에대한 소개여행지1에대한 소개',
                                        style: TextStyle(
                                          color: Colors.black,
                                            fontSize: 12,
                                        ),
                                        maxLines: 3, // 최대 3줄까지 표시
                                        overflow: TextOverflow.ellipsis, // 3줄을 초과하는 경우 "..."으로 표시
                                      ),
                                    ),
                                )],
                                ),
                              ),
                            ),
                          ),

                          /* 2번째 관광지 */
                          Container(
                            height: 300,
                            width: 150,
                            margin: EdgeInsets.only(right: 30.0),
                            child: Center(
                              child: Container(
                                height: 260,
                                width: 130,
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "assets/images/main_forest.jpg",
                                      fit: BoxFit.contain,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 20.0),
                                      child: Text(
                                        '여행지2',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.topCenter,
                                      child: Padding(
                                        padding: EdgeInsets.only(top: 20.0),
                                        child:
                                        Text(
                                          '여행지2에대한 소개여행지2에대한 소개',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                          ),
                                          maxLines: 3, // 최대 3줄까지 표시
                                          overflow: TextOverflow.ellipsis, // 3줄을 초과하는 경우 "..."으로 표시
                                        ),
                                      ),
                                    )],
                                ),
                              ),
                            ),
                          ),

                          /* 3번째 관광지 */
                          Container(
                            height: 300,
                            width: 150,
                            margin: EdgeInsets.only(right: 30.0),
                            child: Center(
                              child: Container(
                                height: 260,
                                width: 130,
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "assets/images/main_forest.jpg",
                                      fit: BoxFit.contain,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 20.0),
                                      child: Text(
                                        '여행지3',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.topCenter,
                                      child: Padding(
                                        padding: EdgeInsets.only(top: 20.0),
                                        child:
                                        Text(
                                          '여행지3에대한 소개여행지3에대한 소개',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                          ),
                                          maxLines: 3, // 최대 3줄까지 표시
                                          overflow: TextOverflow.ellipsis, // 3줄을 초과하는 경우 "..."으로 표시
                                        ),
                                      ),
                                    )],
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

              /***************** 이벤트 *****************/
                  Container(
                    margin: EdgeInsets.only(top: 50),
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              '이벤트',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              /* 1번째 이벤트 */
                              Container(
                                height: 300,
                                width: 350,
                                margin: EdgeInsets.only(right: 30.0),
                                child: Center(
                                  child: Container(
                                    height: 260,
                                    width: 260,
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          "assets/images/main_forest.jpg",
                                          fit: BoxFit.contain,
                                        ),
                                        ],
                                    ),
                                  ),
                                ),
                              ),

                              /* 2번째 이벤트 */
                              Container(
                                height: 300,
                                width: 350,
                                margin: EdgeInsets.only(right: 30.0),
                                child: Center(
                                  child: Container(
                                    height: 260,
                                    width: 260,
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          "assets/images/main_forest.jpg",
                                          fit: BoxFit.contain,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),

                              /* 3번째 이벤트 */
                              Container(
                                height: 300,
                                width: 350,
                                margin: EdgeInsets.only(right: 30.0),
                                child: Center(
                                  child: Container(
                                    height: 260,
                                    width: 260,
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          "assets/images/main_forest.jpg",
                                          fit: BoxFit.contain,
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

              /***************** Footer *****************/
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '(주)김성원',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        /* 대표이사 및 사업장등록번호 */
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              '대표이사:김성원',
                              style: TextStyle(
                                fontSize: 10,
                              ),
                            ),
                            Text(
                              '  |  ',
                              style: TextStyle(
                                fontSize: 10,
                              ),
                            ),
                            Text(
                              '사업자등록번호:110-22-3356',
                              style: TextStyle(
                                fontSize: 10,
                              ),
                            ),
                          ],
                        )),

                        /* 대표이사 및 사업장등록번호 */
                    Container(
                      margin: EdgeInsets.only(top: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              '통신판매업시고번호 제 2023-경기파주 0908호',
                              style: TextStyle(
                                fontSize: 10,
                              ),
                            ),
                            Text(
                              '  사업자정보확인 ',
                              style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ],
                        )),

                        /* 주소 */
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      child:
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              '경기도 파주시 문산읍 성현안길 215',
                              style: TextStyle(
                                fontSize: 10,
                              ),
                            ),
                          ],
                        )),

                        /* 이메일 및 연락처 */
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child:
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'kimeende@naver.com',
                              style: TextStyle(
                                fontSize: 10,
                              ),
                            ),
                            Text(
                              '  |  ',
                              style: TextStyle(
                                fontSize: 10,
                              ),
                            ),
                            Text(
                              '1544-0000',
                              style: TextStyle(
                                fontSize: 10,
                              ),
                            ),
                          ],
                        )),

                        /* 안내사항 */
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child:
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              '(주)김성원은 통신판매중개 당사자가 아니므로 이러쿵'
                                  '저러쿵 이러쿵 저러쿵 이러쿵 저러쿵 이러쿵',
                              style: TextStyle(
                                fontSize: 10,
                              ),
                            ),

                          ],
                        )),

                        /* 이용약관 , 개인정보 처리방침 */
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child:
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              '이용약관',
                              style: TextStyle(
                                fontSize: 10,
                              ),
                            ),
                            Text(
                              '  개인정보처리방침',
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ],
                        )),
                      ],
                    ),
                  ),


                ]))));
  }
}
