import 'package:expense_tracker_app/Data/Dummy_Data.dart';
import 'package:expense_tracker_app/Model/Expense_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  List<ExpenseModel> datalist = <ExpenseModel>[].obs;
  DummyData dummyData = DummyData();

  void fetchData() {
    List<ExpenseModel> dataa =
        dummyData.defaultData.map((map) => ExpenseModel.fromJson(map)).toList();

    datalist.addAll(dataa);
    update();
  }

  void floatingButtonFunction(BuildContext context) {
    showBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          height: MediaQuery.of(context).size.height / 2.h,
          child: Column(
            children: [
              Text('ADD NEW EXPENSE '),
            ],
          ),
        );
      },
    );
  }
}
