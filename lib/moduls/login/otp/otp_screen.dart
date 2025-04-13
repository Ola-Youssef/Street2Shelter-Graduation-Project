import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled1/moduls/login/new_password/new_password_screen.dart';
import 'package:untitled1/shared/components/components.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff627254),
      appBar: defaultAppBar(
        context: context,
        backgroundColor: const Color(0xff627254),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Now you need to enter OTP',
                      maxLines: 2,
                      style: GoogleFonts.aclonica(
                        fontSize: 34.0,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    Text(
                      'Enter 4 digit verification code sent to your registered email address.',
                      maxLines: 4,
                      style: GoogleFonts.aclonica(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.6,
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'OTP',
                      style: TextStyle(
                        fontSize: 26.0,
                        color: Color(0xff6C2C2C),
                      ),
                    ),
                    const SizedBox(height: 15.0),
                    Row(
                      spacing: 15.0,
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: 70.0,
                            child: Neumorphic(
                              style: NeumorphicStyle(
                                depth: -5, // التأثير الغائر
                                intensity: 0.8,
                                color: const Color(0xffE7E8D8), // لون الخلفية
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
                          ),
                        ),
                        Expanded(
                          child: SizedBox(
                            height: 70.0,
                            child: Neumorphic(
                              style: NeumorphicStyle(
                                depth: -5, // التأثير الغائر
                                intensity: 0.8,
                                color: const Color(0xffE7E8D8), // لون الخلفية
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
                          ),
                        ),
                        Expanded(
                          child: SizedBox(
                            height: 70.0,
                            child: Neumorphic(
                              style: NeumorphicStyle(
                                depth: -5, // التأثير الغائر
                                intensity: 0.8,
                                color: const Color(0xffE7E8D8), // لون الخلفية
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
                          ),
                        ),
                        Expanded(
                          child: SizedBox(
                            height: 70.0,
                            child: Neumorphic(
                              style: NeumorphicStyle(
                                depth: -5, // التأثير الغائر
                                intensity: 0.8,
                                color: const Color(0xffE7E8D8), // لون الخلفية
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
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 40.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'resend code in 00:23sec',
                        style: GoogleFonts.inter(
                          fontSize: 16.0,
                          color: const Color(0xff635C5C),
                        ),
                      ),
                    ),
                    const SizedBox(height: 40.0),
                    defaultButton(
                      function: ()
                      {
                        navigateTo(context, const NewPasswordScreen());
                      },
                      text: 'Reset Password...',
                      fontSize: 25.0,
                      backgroundColor: const Color(
                        0xffb27362,
                      ).withValues(alpha: 0.9),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
