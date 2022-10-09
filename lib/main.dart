import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: (BuildContext context, child) => MaterialApp(
              title: 'Health Demo',
              theme: ThemeData(
                // This is the theme of your application.
                //
                // Try running your application with "flutter run". You'll see the
                // application has a blue toolbar. Then, without quitting the app, try
                // changing the primarySwatch below to Colors.green and then invoke
                // "hot reload" (press "r" in the console where you ran "flutter run",
                // or simply save your changes to "hot reload" in a Flutter IDE).
                // Notice that the counter didn't reset back to zero; the application
                // is not restarted.
                primarySwatch: Colors.blue,
              ),
              home: const MyHomePage(title: 'Health Demo'),
              debugShowCheckedModeBanner: false,
            ));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFFFFF),
        leadingWidth: 50.w,
        leading: Padding(
          padding: EdgeInsets.only(left: 20.w),
          child: SvgPicture.asset(
            "assets/images/home/profile_picture.svg",
            width: 32.w,
            height: 32.h,
            fit: BoxFit.scaleDown,
          ),
        ),
        centerTitle: false,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Hi, Sarah",
            style: GoogleFonts.mulish(
                fontSize: 20.sp,
                fontWeight: FontWeight.w600,
                color: const Color(0xFF031025))),
        actions: [
          IconWidget(
            imgSrc: "assets/images/home/message.svg",
            width: 32.w,
            height: 32.h,
            fit: BoxFit.scaleDown,
          ),
          SizedBox(
            width: 16.w,
          ),
          IconWidget(
            imgSrc: "assets/images/home/notification.svg",
            width: 32.w,
            height: 32.h,
            fit: BoxFit.scaleDown,
          ),
          SizedBox(
            width: 20.w,
          )
        ],
        elevation: 0.1,
        shadowColor: const Color(0xFFC9CDD3),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 56.h,
            width: MediaQuery.of(context).size.width,
            color: const Color(0xFFF1F6FE),
            padding: EdgeInsets.symmetric(
              horizontal: 20.w,
            ),
            child: Row(
              children: [
                IconWidget(
                  imgSrc: "assets/images/home/caution.svg",
                  width: 32.w,
                  height: 32.h,
                  fit: BoxFit.scaleDown,
                ),
                SizedBox(
                  width: 12.w,
                ),
                SizedBox(
                  width: 168.w,
                  child: Text("Go to your profile to complete registration",
                      style: GoogleFonts.mulish(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFF0A0B20))),
                ),
                SizedBox(
                  width: 91.57.w,
                ),
                Expanded(
                  child: IconWidget(
                    imgSrc: "assets/images/home/arrow_right.svg",
                    width: 32.w,
                    height: 32.h,
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.w, top: 20.h, bottom: 16.h),
            child: Text("Quick Actions",
                style: GoogleFonts.mulish(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF0A0B20))),
          ),
          CardItemList(
            key: UniqueKey(),
          ),
          SizedBox(
            height: 20.h,
          ),
          Divider(
            color: const Color(0xFFF8F9FB),
            thickness: 4.w,
          ),
          ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 20.w),
            title: Text("Upcoming Session (0)",
                style: GoogleFonts.mulish(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF031025))),
            trailing: IconWidget(
              imgSrc: "assets/images/home/arrow_right.svg",
              width: 32.w,
              height: 32.h,
              fit: BoxFit.scaleDown,
            ),
          ),
          Divider(
            color: const Color(0xFFF8F9FB),
            thickness: 4.h,
            height: 4.h,
          ),
          ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 20.w),
            title: Text("Tips to stay healthy",
                style: GoogleFonts.mulish(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF031025))),
            subtitle: Text("Get simple health tips.",
                style: GoogleFonts.mulish(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFF888D95))),
            trailing: IconWidget(
              imgSrc: "assets/images/home/arrow_right.svg",
              width: 32.w,
              height: 32.h,
              fit: BoxFit.scaleDown,
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: const Color(0xFF3079EC),
          unselectedItemColor: const Color(0xFF031025),
          showUnselectedLabels: true,
          unselectedFontSize: 12.sp,
          selectedFontSize: 12.sp,
          type: BottomNavigationBarType.fixed,
          unselectedLabelStyle: GoogleFonts.mulish(
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              color: const Color(0xFF031025)),
          items: [
            BottomNavigationBarItem(
                icon: IconWidget(
                  imgSrc: "assets/images/home/home.svg",
                  width: 32.w,
                  height: 32.h,
                  fit: BoxFit.scaleDown,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: IconWidget(
                  imgSrc: "assets/images/home/actions.svg",
                  width: 32.w,
                  height: 32.h,
                  fit: BoxFit.scaleDown,
                ),
                label: "Resources"),
            BottomNavigationBarItem(
                icon: IconWidget(
                  imgSrc: "assets/images/home/calendar.svg",
                  width: 32.w,
                  height: 32.h,
                  fit: BoxFit.scaleDown,
                ),
                label: "Session"),
            BottomNavigationBarItem(
                icon: IconWidget(
                  imgSrc: "assets/images/home/community.svg",
                  width: 32.w,
                  height: 32.h,
                  fit: BoxFit.scaleDown,
                ),
                label: "Community"),
            BottomNavigationBarItem(
                icon: IconWidget(
                  imgSrc: "assets/images/home/profile_picture.svg",
                  width: 32.w,
                  height: 32.h,
                  fit: BoxFit.scaleDown,
                ),
                label: "Account"),
          ]),
    );
  }
}

class IconWidget extends StatelessWidget {
  final String imgSrc;
  final double height, width;
  final BoxFit fit;
  const IconWidget(
      {super.key,
      required this.imgSrc,
      required this.height,
      required this.width,
      this.fit = BoxFit.none});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      imgSrc,
      width: width,
      height: height,
      fit: fit,
    );
  }
}

class CardItem extends StatelessWidget {
  final String imgSrc, title, subtitle;
  final int colorCode;

  const CardItem(
      {Key? key,
      required this.imgSrc,
      required this.title,
      required this.subtitle,
      required this.colorCode})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 105.h,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(left: 16.w, right: 20.w),
      decoration: BoxDecoration(
        color: Color(colorCode),
        borderRadius: BorderRadius.circular(6.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 24.h),
              Text(title,
                  style: GoogleFonts.mulish(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFFFFFFFF))),
              SizedBox(height: 6.h),
              SizedBox(
                width: 188.w,
                child: Text(subtitle,
                    style: GoogleFonts.mulish(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFFFFFFFF))),
              ),
            ],
          ),
          IconWidget(
            imgSrc: imgSrc,
            width: 80.w,
            height: 80.h,
            fit: BoxFit.scaleDown,
          ),
        ],
      ),
    );
  }
}

class CardItemList extends StatelessWidget {
  const CardItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: QuickActionModels.loadQuickActionList().length,
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 0.h),
      separatorBuilder: (BuildContext context, int index) {
        return SizedBox(height: 16.h);
      },
      itemBuilder: (BuildContext context, int index) {
        QuickActionModel item = QuickActionModels.loadQuickActionList()[index];
        return CardItem(
          imgSrc: item.imgSrc,
          title: item.title,
          subtitle: item.subtitle,
          colorCode: item.colorCode,
        );
      },
    );
  }
}

//Quick action model
class QuickActionModel {
  final String imgSrc, title, subtitle;
  final int colorCode;

  QuickActionModel(
      {required this.imgSrc,
      required this.title,
      required this.subtitle,
      required this.colorCode});
}

//Quick action list

class QuickActionModels {
  static List<QuickActionModel> loadQuickActionList() {
    return <QuickActionModel>[
      QuickActionModel(
          imgSrc: "assets/images/home/nurse.svg",
          title: "Book a session",
          subtitle: "Get prompt assistance from medical professionals.",
          colorCode: 0xFFEEAD44),
      QuickActionModel(
          imgSrc: "assets/images/home/open book.svg",
          title: "Diary",
          subtitle: "Listen to the highlight from your previous session",
          colorCode: 0xFFEE7444),
      QuickActionModel(
          imgSrc: "assets/images/home/headshet.svg",
          title: "Virtual assistant",
          subtitle:
              "Get easy access to converse with the assistant on how you feel.",
          colorCode: 0xFF7444EE),
    ];
  }
}
