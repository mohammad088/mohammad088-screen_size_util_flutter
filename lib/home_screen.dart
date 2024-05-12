import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_ui/categories.dart';
import 'package:responsive_ui/medicines.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(432,786),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return Scaffold(
            body: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.grey.shade300, Colors.grey.shade100],
                  )),
              padding: const EdgeInsets.all(16.0),
              child: ListView(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 200.w,
                        child: ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: Container(
                            padding: EdgeInsets.zero,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black, width: 1),
                                borderRadius: BorderRadius.circular(50)),
                            child:  const CircleAvatar(
                              radius: 25,
                              backgroundImage: AssetImage("assets/images/user.jpg"),
                            ),
                          ),
                          titleTextStyle:  TextStyle(
                              fontWeight: FontWeight.normal, color: Colors.black, fontSize: 12.sp),
                          title: const Text(
                            "Phillis Elouise",
                          ),
                          subtitleTextStyle:
                          TextStyle(color: Colors.grey, fontSize: 12.sp),
                          subtitle: const Text("Damascus"),
                        ),
                      ),
                       Stack(
                        children: [
                           SizedBox(
                            height: 50.r,
                            width: 40.w,
                            child: Icon(Icons.shopping_cart, size: 25.dg),
                          ),
                          Positioned(
                            right: 5.w,
                            child: CircleAvatar(
                                backgroundColor: Colors.blue,
                                radius: 7.dg,
                                child: Center(
                                  child: Text(
                                    "2",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 10.sp),
                                  ),
                                )),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Material(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        elevation: 3,
                        child: SizedBox(
                          width: 300.w,
                          height: 50.h,
                          child: TextField(
                            decoration: InputDecoration(
                              prefixIcon: const Icon(
                                Icons.search_rounded,
                                color: Colors.grey,
                              ),
                              hintText: "Search Place",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50),
                                  borderSide: BorderSide.none),
                            ),
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.white),
                          shape: MaterialStateProperty.all(const CircleBorder()),
                          minimumSize:
                          MaterialStateProperty.all( Size(50.w, 50.h)),
                        ),
                        child:  SizedBox(
                          width: 50.w,
                          height: 50.h,
                          child: const Icon(
                            Icons.filter_vintage_rounded,
                            color: Colors.grey,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Text(
                    "Our Category",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.sp),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  SizedBox(
                    height: 100.h,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: categories.map((category) {
                        return Container(
                          decoration: BoxDecoration(
                              color: category.isSelected
                                  ? Colors.blue.shade900
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          width: 120.w,
                          margin: const EdgeInsets.symmetric(horizontal: 8),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 30.w,
                                height: 30.h,
                                child: category.icon,
                              ),
                              Text(
                                category.title,
                              )
                            ],
                          ),
                        );
                      }).toList()
                        ..insert(
                          0,
                          Container(
                            width: 80.w,
                            margin: const EdgeInsets.only(right: 8),
                            decoration: BoxDecoration(
                                color: categories
                                    .where((element) => element.isSelected)
                                    .isEmpty
                                    ? Colors.blue.shade900
                                    : Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.apps,
                                  color: Colors.white,
                                ),
                                Text(
                                  "All",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: categories
                                          .where(
                                              (element) => element.isSelected)
                                          .isNotEmpty
                                          ? Colors.black
                                          : Colors.white),
                                )
                              ],
                            ),
                          ),
                        ),
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Text(
                    "Popular call to actions",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.sp),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Container(
                    height: 160.h,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Prescription",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15.sp),
                            ),
                            SizedBox(
                                width: 175.w,
                                height: 60.h,
                                child: Text(
                                  "Upload your prescription & we will do rest!",
                                  style: TextStyle(color: Colors.grey[700]),
                                ))
                          ],
                        ),
                        SizedBox(
                            width: 125.w,
                            height: 125.h,
                            child: Image.asset("assets/images/img_3.png"))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Our Product",
                        style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        "See All",
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  SizedBox(
                    height: 175.h,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: medicines.map((medicine) {
                        return Container(
                          margin: const EdgeInsets.all(8),
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                  width: 100, height: 100, child: medicine.image),
                              Text(
                                medicine.name,
                                style: const TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "${medicine.price}\$".toString(),
                                style: const TextStyle(color: Colors.grey),
                              )
                            ],
                          ),
                        );
                      }).toList(),
                    ),
                  )
                ],
              ),
            ),
            bottomNavigationBar: SalomonBottomBar(
              selectedItemColor: Colors.blue[90],
              unselectedItemColor: Colors.grey[700],
              items: [
                SalomonBottomBarItem(
                  icon: const Icon(Icons.home),
                  title: const Text("Home"),
                ),
                SalomonBottomBarItem(
                  icon: const Icon(Icons.alarm),
                  title: const Text("alarm"),
                ),
                SalomonBottomBarItem(
                  icon: const Icon(Icons.notifications),
                  title: const Text("notifications"),
                ),
                SalomonBottomBarItem(
                  icon: const Icon(Icons.article_rounded),
                  title: const Text("article_rounded"),
                ),
                SalomonBottomBarItem(
                  icon: const Icon(Icons.account_circle),
                  title: const Text("account_circle"),
                ),
              ],
            ));
      },
    );
  }
}
