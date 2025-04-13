import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled1/layout/cubit/cubit.dart';
import 'package:untitled1/layout/cubit/states.dart';
import 'package:untitled1/layout/main_activity.dart';
import 'package:untitled1/moduls/login/forget_password/forget_password_screen.dart';
import 'package:untitled1/moduls/signup/signup_screen.dart';
import 'package:untitled1/shared/components/components.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MainCubit, MainStates>(
      listener: (BuildContext context, MainStates state) {},
      builder: (BuildContext context, MainStates state) {
        var cubit = MainCubit.get(context);
        return Scaffold(
          backgroundColor: const Color(0xff627254),
          appBar: AppBar(backgroundColor: const Color(0xff627254)),
          body: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hello our Rescue Ranger ,',
                          style: GoogleFonts.aclonica(
                            fontSize: 36.0,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 5.0),
                        Text(
                          'Enter your information or login with your social media account',
                          style: GoogleFonts.aclonica(
                            fontSize: 20.0,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xff6C2C2C), width: 3.0),
                    borderRadius: const BorderRadiusDirectional.only(
                      topStart: Radius.circular(50),
                      topEnd: Radius.circular(50),
                    ),
                    color: const Color(0xffF2EFEA),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Email',
                            style: TextStyle(
                              fontSize: 26.0,
                              color: Color(0xff6C2C2C),
                            ),
                          ),
                          const SizedBox(height: 15.0),
                          Neumorphic(
                            style: NeumorphicStyle(
                              depth: -5,
                              intensity: 0.8,
                              color: const Color(0xffE7E8D8),
                              boxShape: NeumorphicBoxShape.roundRect(
                                BorderRadius.circular(12),
                              ),
                            ),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: 16,
                                  vertical: 12,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 30.0),
                          const Text(
                            'password',
                            style: TextStyle(
                              fontSize: 26.0,
                              color: Color(0xff6C2C2C),
                            ),
                          ),
                          const SizedBox(height: 15.0),
                          Neumorphic(
                            style: NeumorphicStyle(
                              depth: -5,
                              intensity: 0.8,
                              color: const Color(0xffE7E8D8),
                              boxShape: NeumorphicBoxShape.roundRect(
                                BorderRadius.circular(12),
                              ),
                            ),
                            child: TextFormField(
                              obscureText: cubit.isShowPassword['login']!,
                              decoration: InputDecoration(
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    cubit.changePasswordVisibility('login');
                                  },
                                  icon: Icon(
                                    cubit.isShowPassword['login']!
                                        ? Icons.visibility_off_outlined
                                        : Icons.visibility_outlined,
                                  ),
                                ),
                                border: InputBorder.none,
                                contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                  vertical: 12,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 15.0),
                          Align(
                            alignment: AlignmentDirectional.centerEnd,
                            child: TextButton(
                              onPressed: () {
                                navigateTo(
                                  context,
                                  const ForgetPasswordScreen(),
                                );
                              },
                              child: const Text(
                                'Forget Password?',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xff635C5C),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 30.0),
                          Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: Image.asset(
                                    'assets/images/google.png',
                                    height: 24.0,
                                    width: 24.0,
                                    color: const Color(0xff627254),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 30.0),
                          defaultButton(
                            function: () {
                              navigateAndFinish(context, const MainActivity());
                            },
                            text: 'Login..',
                            fontSize: 30.0,
                            backgroundColor: const Color(
                              0xffb27362,
                            ).withValues(alpha: 0.9),
                          ),
                          const SizedBox(height: 15.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'Not a Member?',
                                style: TextStyle(fontSize: 18.0),
                              ),
                              TextButton(
                                onPressed: () {
                                  navigateTo(context, const SignupScreen());
                                },
                                child: const Text(
                                  'Register now',
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    color: Color(0xff635C5C),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
