import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tawasel/helper/app_router.dart';
import 'package:tawasel/helper/app_utils.dart';
import 'package:tawasel/widgets/auth_navigation_text.dart';
import 'package:tawasel/widgets/custom_auth_button.dart';
import 'package:tawasel/widgets/custom_text_form_field.dart';

class SignUpBody extends StatefulWidget {
  const SignUpBody({Key? key}) : super(key: key);

  @override
  State<SignUpBody> createState() => _SignUpBodyState();
}

class _SignUpBodyState extends State<SignUpBody> {
  final GlobalKey<FormState> form = GlobalKey();

  bool isPasswordVisible = true;
  bool isConfirmPasswordVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
      key: form,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            Image.asset("assets/images/sign_up_image.png", height: 250),
            const CustomTextFormField(
              obscureText: false,
              title: 'اسم المستخدم',
              prefixIcon: Icons.person,
              validatorText: 'ادخل اسم المستخدم الخاص بك',
            ),
            const SizedBox(height: 15),
            const CustomTextFormField(
              obscureText: false,
              title: 'البريد الالكتروني',
              prefixIcon: Icons.email_outlined,
              validatorText: 'ادخل البريد الالكتروني الخاص بك',
            ),
            const SizedBox(height: 15),
            CustomTextFormField(
              obscureText: !isPasswordVisible,
              title: 'كلمة السر',
              prefixIcon: Icons.lock_outlined,
              suffixIcon: IconButton(
                onPressed: () {
                  isPasswordVisible = !isPasswordVisible;
                  setState(() {});
                },
                icon: isPasswordVisible
                    ? const Icon(Icons.visibility)
                    : const Icon(Icons.visibility_off),
                color: Colors.grey.shade500,
              ),
              validatorText: 'ادخل كلمة السر الخاصة بك',
            ),
            const SizedBox(height: 15),
            CustomTextFormField(
              obscureText: !isConfirmPasswordVisible,
              title: 'تاكيد كلمة السر',
              prefixIcon: Icons.lock_outlined,
              suffixIcon: IconButton(
                onPressed: () {
                  isConfirmPasswordVisible = !isConfirmPasswordVisible;
                  setState(() {});
                },
                icon: isConfirmPasswordVisible
                    ? const Icon(Icons.visibility)
                    : const Icon(Icons.visibility_off),
                color: Colors.grey.shade500,
              ),
              validatorText: 'ادخل كلمة السر الخاصة بك',
            ),
            const SizedBox(height: 20),
            CusotmAuthButton(
              form: form,
              onPressed: () {
                if (form.currentState!.validate()) {
                  snackBar(context, 'تم انشاء الحساب بنجاح');
                  FocusScope.of(context).unfocus();
                  GoRouter.of(context).push(AppRouter.kHomeView);
                }
              },
              title: 'انشاء حساب',
            ),
            const SizedBox(height: 10),
            AuthNavigationText(
              text: 'لديك حساب بالفعل',
              textButton: 'تسجيل الدخول',
              onTap: () {
                GoRouter.of(context).pop();
              },
            ),
          ],
        ),
      ),
    ));
  }
}
