import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/find_data.dart';


List<String> cities = ['서울','부산','대구','인천','광주','대전','울산','세종','경기','강원','충북','충남','전북','전남','경북','경남','제주'];
List<String> category = ['자연명소','테마파크','체험관광','문화유적','레저','유아'];
List<String> value = ['무료','5,000원 이하','10,000원 이하','30,000원 이하','50,000원 이하','50,000원 이상'];

class Find extends StatelessWidget {
  const Find({ Key ? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    /* providers/find_data - provider */
    final counter = Provider.of<Counter>(context);
    String firstCity = counter.first_city;
    String categoey_filter = counter.categoey_filter;
    String value_filter = counter.value_filter;


    return Scaffold(
        body: Container(
        margin: EdgeInsets.all(10),
    color: Colors.white,
    height: double.infinity,
    width: double.infinity,
    child: SingleChildScrollView(
    child: Column(children: <Widget>[

      /****************** 검색 - 지역 *****************/
      Container(
        margin: EdgeInsets.only(top: 20),
        width: MediaQuery.of(context).size.width * 0.9,
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  '지역',
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
                children: List.generate(cities.length, (index) {
                  String city = cities[index]; // 현재 인덱스에 해당하는 도시 이름
                  // 반복문을 사용하여 도시별 위젯 생성
                  return GestureDetector(
                      onTap: () {
                        counter.select(city);
                    // 터치 이벤트 발생 시 실행할 코드 작성
                  },
                  child: Container(
                    height: 30,
                    width: 60,
                    margin: EdgeInsets.only(right: 10), // 위젯 간 간격을 조정하기 위한 마진 설정
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: firstCity == city ? Colors.redAccent : Colors.white,
                    ),
                    child: Center(
                      child: Text(
                        city,
                        style: TextStyle(
                          fontSize: 15,
                          color: firstCity == city ? Colors.white : Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ));
                }),
              ),
            ),
          ],
        ),
      ),

      /****************** 검색 - 카테고리 *****************/
      Container(
        margin: EdgeInsets.only(top: 20),
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
                children: List.generate(category.length, (index) {
                  String category_choice = category[index]; // 현재 인덱스에 해당하는 도시 이름
                  // 반복문을 사용하여 도시별 위젯 생성
                  return GestureDetector(
                      onTap: () {
                        counter.select_category(category_choice);
                        // 터치 이벤트 발생 시 실행할 코드 작성
                      },
                      child: Container(
                        padding: EdgeInsets.all(8),
                        margin: EdgeInsets.only(right: 10), // 위젯 간 간격을 조정하기 위한 마진 설정
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: categoey_filter == category_choice ? Colors.redAccent : Colors.white,
                        ),
                        child: Center(
                          child: Text(
                            category_choice,
                            style: TextStyle(
                              fontSize: 15,
                              color: categoey_filter == category_choice ? Colors.white : Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ));
                }),
              ),
            ),
          ],
        ),
      ),

      /****************** 검색 - 유료,무료 *****************/
      Container(
        margin: EdgeInsets.only(top: 20),
        width: MediaQuery.of(context).size.width * 0.9,
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  '가격',
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
                children: List.generate(value.length, (index) {
                  String value_choice = value[index]; // 현재 인덱스에 해당하는 도시 이름
                  // 반복문을 사용하여 도시별 위젯 생성
                  return GestureDetector(
                      onTap: () {
                        counter.select_value(value_choice);
                        // 터치 이벤트 발생 시 실행할 코드 작성
                      },
                      child: Container(
                          padding: EdgeInsets.all(8),
                        margin: EdgeInsets.only(right: 10), // 위젯 간 간격을 조정하기 위한 마진 설정
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: value_filter == value_choice ? Colors.redAccent : Colors.white,
                        ),
                        child: Center(
                          child: Text(
                            value_choice,
                            style: TextStyle(
                              fontSize: 15,
                              color: value_filter == value_choice ? Colors.white : Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ));
                }),
              ),
            ),
          ],
        ),
      ),

      /****************** 검색 - 쿠폰 및 이벤트여부 *****************/
      Container(
        margin: EdgeInsets.only(top: 20),
        width: MediaQuery.of(context).size.width * 0.9,
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  '할인쿠폰',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
          ],
        ),
      ),

      /****************** 검색버튼 *****************/
      Container(
        margin: EdgeInsets.only(top: 50),
        width: MediaQuery.of(context).size.width * 0.9,
        child: Center(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), // 원하는 radius 값 지정
                  color: Colors.redAccent, // 배경 색상 설정
                ), // 배경 색상 설정
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 8.0, // 위쪽 패딩
                    bottom: 8.0, // 아래쪽 패딩
                    left: 16.0, // 왼쪽 패딩
                    right: 16.0, // 오른쪽 패딩
                  ), // 텍스트 주위의 패딩 설정
                  child: Text(
                    '검색버튼',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white, // 글자의 색상 설정
                      //color: Color.fromARGB(255, 255, 0, 0)- 색상 코드를 지정합니다.
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),


    ])
    )));
  }

    /*****************
     * 지도를 활용한 필터기능  -  하단에 게시물 노출  - 클릭시 상세페이지로 이동
     * *****************/
}