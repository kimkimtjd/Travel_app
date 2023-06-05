import 'package:flutter/material.dart';

class Counter with ChangeNotifier {

  var first_city = '서울';
  var categoey_filter = '자연명소';
  var value_filter = '무료';

  /* 지역 선택할경우 */
  void select(city) {
    first_city = city;
    notifyListeners();
  }

  /* 카테고리 선택할경우 */
  void select_category(category) {
    categoey_filter = category;
    notifyListeners();
  }

  /* 가격 선택할경우 */
  void select_value(value) {
    value_filter = value;
    notifyListeners();
  }

}
