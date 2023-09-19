import 'package:flutter/material.dart';
import 'package:flutter_monitoring/Screen/home_screen.dart';

import '../Controllers/controllers.dart';
import '../tool/TextField_Item.dart';
import '../tool/student_model.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

GlobalKey<FormState> formKey = GlobalKey<FormState>();

class LoginScreen extends StatefulWidget {
  static const String routeName = 'LoginScreen';

  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  File? image;
  final imagePicker = ImagePicker();

  uploadImage() async {
    var pickedImage = await imagePicker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      setState(() {
        image = File(pickedImage!.path);
        print(image);
      });
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: Padding(
          padding: const EdgeInsets.all(6.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Center(
                  child: Text(
                    'حساب جديد',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Center(
                  child: CircleAvatar(
                    radius: 50.0,
                    backgroundColor: const Color(0xff087884),
                    backgroundImage: image == null ? null : FileImage(image!),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        IconButton(
                          onPressed: uploadImage,
                          icon: const Icon(
                            Icons.camera_alt,
                          ),
                        ),
                        image == null ? const Text('أضف صورة') : const Text(''),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      TextFieldItem(
                        txt: 'اسمك',
                        controller: Controllers.nameController,
                        obscureText: false,
                        textInputType: TextInputType.text,
                        warningMessage: 'من فضلك أدخل الاسم',
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      TextFieldItem(
                        txt: 'اسم ولى الأمر',
                        controller: Controllers.lastNameController,
                        obscureText: false,
                        textInputType: TextInputType.text,
                        warningMessage: 'من فضلك أدخل اسم ولى الأمر',
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      TextFieldItem(
                        txt: 'رقم هاتفك',
                        controller: Controllers.phoneController,
                        obscureText: false,
                        textInputType: TextInputType.phone,
                        warningMessage: 'من فضلك أدخل رقم الهاتف',
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      TextFieldItem(
                        txt: 'رقم هاتف ولى الأمر',
                        controller: Controllers.parPhoneController,
                        obscureText: false,
                        textInputType: TextInputType.phone,
                        warningMessage: 'من فضلك أدخل رقم هاتف ولى الأمر',
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      TextFieldItem(
                        txt: 'الإيميل',
                        controller: Controllers.emailController,
                        obscureText: false,
                        textInputType: TextInputType.emailAddress,
                        warningMessage: 'من فضلك أدخل الإيميل',
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      TextFieldItem(
                        txt: 'كلمة المرور',
                        controller: Controllers.passWordController,
                        obscureText: true,
                        textInputType: TextInputType.text,
                        warningMessage: 'من فضلك أدخل كلمة المرور',
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      TextFieldItem(
                        txt: 'ملاحظات',
                        controller: Controllers.noteController,
                        obscureText: false,
                        textInputType: TextInputType.text,
                        required: false,
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff087884),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              FocusManager.instance.primaryFocus?.unfocus();
                              Navigator.pushNamed(
                                context,
                                HomeScreen.routeName,
                                arguments: StdModel(
                                  Controllers.nameController.text,
                                  Controllers.phoneController.text,
                                  image!,
                                ),
                              );
                            } else {
                              return;
                            }
                          },
                          child: const Text(
                            'متابعة',
                            style: TextStyle(
                              fontSize: 25.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('لديك حساب بالفعل ؟ قم'),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          ' بتسجيل الدخول',
                          style: TextStyle(color: Color(0xff087884)),
                        ))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
