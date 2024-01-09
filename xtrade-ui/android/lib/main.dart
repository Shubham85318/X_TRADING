import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xtrade/routes/routes.dart';
import 'package:xtrade/utils/custom_color.dart';
import 'package:xtrade/utils/strings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        builder: (_, child) => GetMaterialApp(
              title: Strings.appName,
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                  primaryColor: CustomColor.primaryColor,
                  textTheme:
                      GoogleFonts.robotoTextTheme(Theme.of(context).textTheme),
                  appBarTheme:
                      const AppBarTheme(color: CustomColor.primaryColor)),
              navigatorKey: Get.key,
              initialRoute: Routes.splashScreen,
              getPages: Routes.list,
              builder: (context, widget) {
                ScreenUtil.init(context);
                return MediaQuery(
                  //Setting font does not change with system font size
                  data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
                  child: widget!,
                );
              },
            ));
  }
}
