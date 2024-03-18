import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:localstorage/localstorage.dart';

class IntroScreenDefault extends StatefulWidget {
  const IntroScreenDefault({Key? key}) : super(key: key);

  @override
  IntroScreenDefaultState createState() => IntroScreenDefaultState();
}

class IntroScreenDefaultState extends State<IntroScreenDefault> {
  List<ContentConfig> listContentConfig = [];

  @override
  void initState() {
    super.initState();

    listContentConfig.add(
      const ContentConfig(
        colorBegin: Color.fromARGB(255, 49, 13, 226),
        colorEnd: Color.fromARGB(255, 175, 167, 218),
        description: "!سخت نگیر، یاد بگیر",
        pathImage: "assets/images/Intro_Image.png",
        styleDescription: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        marginDescription: EdgeInsets.only(top: 120),
      ),
    );
    listContentConfig.add(
      const ContentConfig(
        colorBegin: Color.fromARGB(255, 49, 13, 226),
        colorEnd: Color.fromARGB(255, 175, 167, 218),
        description: "!سخت نگیر، یاد بگیر",
        pathImage: "assets/images/Intro_Image.png",
        styleDescription: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        marginDescription: EdgeInsets.only(top: 120),
      ),
    );
    listContentConfig.add(
      const ContentConfig(
        colorBegin: Color.fromARGB(255, 49, 13, 226),
        colorEnd: Color.fromARGB(255, 175, 167, 218),
        description: "!سخت نگیر، یاد بگیر",
        pathImage: "assets/images/Intro_Image.png",
        styleDescription: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        marginDescription: EdgeInsets.only(top: 120),
      ),
    );
  }

  void onDonePress() {
    final LocalStorage storage = LocalStorage('mory_esi');
    storage.setItem('Intro_State', 'morteza.007@gmail.com');
    context.pushReplacement('/catalog');
  }

  @override
  Widget build(BuildContext context) {
    return IntroSlider(
      renderNextBtn: const Text(
        "بعدی",
        style: TextStyle(
            color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
      ),
      renderSkipBtn: const Text(
        "بی‌خیال",
        style: TextStyle(
            color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
      ),
      renderDoneBtn: const Text(
        "گرفتم",
        style: TextStyle(
            color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
      ),
      key: UniqueKey(),
      listContentConfig: listContentConfig,
      onDonePress: onDonePress,
    );
  }
}
