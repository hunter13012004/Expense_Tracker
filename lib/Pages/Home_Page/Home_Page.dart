import 'package:expense_tracker_app/Pages/Home_Page/Controller/Home_controller.dart';
import 'package:expense_tracker_app/Pages/Home_Page/Controller/Utils/Custom_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    homecontroller.fetchData();
    print(homecontroller.datalist);

    super.initState();
  }

  var homecontroller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///Floating Actions Button
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          homecontroller.floatingButtonFunction(context);
        },
        child: Icon(Icons.add),
      ),

      //body starts Here =============>
      body: SafeArea(
          child: Center(
        child: Container(
          child: Column(
            children: [
              ///Graph for all expenses ===================>
              SizedBox(
                height: 200.h,
              ),

              //Listview.Builder starts Here =================>
              Expanded(
                child: Container(
                  color: Colors.red,
                  child: ListView.builder(
                    itemCount: homecontroller.datalist.length,
                    itemBuilder: (context, index) {
                      return CustomTile(
                          title:
                              homecontroller.datalist[index].title.toString(),
                          customIcon:
                              homecontroller.datalist[index].customicon!,
                          price: homecontroller.datalist[index].price);
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
