import 'package:flutter/material.dart';
import 'package:flutter_monitoring/Controllers/controllers.dart';
import 'package:flutter_monitoring/app/app_constants.dart';

import '../tool/custom_card.dart';
import '../tool/student_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static const String routeName = 'Home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as StdModel;
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Color(0xff087884),
        ),
        backgroundColor: Colors.white,
        elevation: 1.0,
        title: const Text(
          'الملف الشخصى',
          style: TextStyle(
            color: Color(0xff087884),
            fontSize: 22.0,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: CustomCard(
              color: AppConstants.darkMainColor,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 20.0,
                          backgroundImage: FileImage(args.image),
                        ),
                        Text(
                          '   مرحبًا, ${Controllers.nameController.text}',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                          ),
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.edit,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 2.0,
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        Controllers.phoneController.text,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(5.0),
            child: CustomCard(
              color: Color(0xfff5f5f5),
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        'اخر المشاهدات ',
                        style: TextStyle(
                          color: Colors.redAccent,
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.play_circle_fill,
                          color: Colors.redAccent,
                          size: 25.0,
                        ),
                        SizedBox(
                          width: 4.0,
                        ),
                        Text(
                          'الفصل الثالث : الدرس الثاني ',
                          style: TextStyle(
                            fontSize: 18.0,
                          ),
                        ),
                      ],
                    ),
                    Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          'أهمية الميتوكندريا',
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        )),
                  ],
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(5.0),
            child: CustomCard(
              color: Color(0xffCF3433),
              child: Row(
                children: [
                  Icon(
                    Icons.stacked_bar_chart_outlined,
                    color: Color(0xFFFFC107),
                  ),
                  SizedBox(
                    width: 4.0,
                  ),
                  Text(
                    'مستواك متوسط: اشتغل على نفسك شوية',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  )
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(5.0),
            child: CustomCard(
              color: Color(0xfff5f5f5),
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        'نتائج الامتحان',
                        style: TextStyle(
                          color: Colors.redAccent,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          'امتحان الدرس الرابع',
                          style: TextStyle(
                            fontSize: 18.0,
                          ),
                        ),
                        Spacer(),
                        Text(
                          '88',
                          style: TextStyle(
                            fontSize: 18.0,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'امتحان الدرس الرابع',
                          style: TextStyle(
                            fontSize: 18.0,
                          ),
                        ),
                        Spacer(),
                        Text(
                          '88',
                          style: TextStyle(
                            fontSize: 18.0,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'امتحان الدرس الرابع',
                          style: TextStyle(
                            fontSize: 18.0,
                          ),
                        ),
                        Spacer(),
                        Text(
                          '88',
                          style: TextStyle(
                            fontSize: 18.0,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'امتحان الدرس الرابع',
                          style: TextStyle(
                            fontSize: 18.0,
                          ),
                        ),
                        Spacer(),
                        Text(
                          '88',
                          style: TextStyle(
                            fontSize: 18.0,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'امتحان الدرس الرابع',
                          style: TextStyle(
                            fontSize: 18.0,
                          ),
                        ),
                        Spacer(),
                        Text(
                          '88',
                          style: TextStyle(
                            fontSize: 18.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
