import 'package:auth_ui/presentation/screens/login_screen.dart';
import 'package:auth_ui/presentation/screens/register_screen.dart';
import 'package:auth_ui/presentation/widgets/Customized.dart';
import 'package:flutter/material.dart';
import '../../Responsive/Reponsive.dart';
class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Image.asset(
                'assets/images/logo.png',
                height: 422,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 42 , right: 42 ),
                child: Text(
                  'Discover Your Dream Job here',
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.poppinsSemiBold.copyWith(
                    fontSize: 35 ,
                    color: Color(0xFF1F41BB),
                  ),
                ),
              ),
              SizedBox(height: responsive.height(10)),
              Text(
                'Explore all the existing job roles based on your interest and study major',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: responsive.height(10)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8), // Adjust the border radius as needed
                      ),
                      elevation: 0,
                    ),
                    child: Ink(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color(0xFF1F41BB),
                      ),
                      child: Container(
                        constraints: BoxConstraints(minWidth: 100, minHeight: 45),
                        alignment: Alignment.center,

                        child: Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                    ),
                  )
,
                  SizedBox(width: 20,),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RegisterScreen(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8), // Adjust the border radius as needed
                      ),
                      elevation: 0,
                    ),
                    child: Ink(
                      decoration: BoxDecoration(

                        borderRadius: BorderRadius.circular(8), // Adjust the border radius as needed
                      ),
                      child: Container(
                        constraints: BoxConstraints(minWidth: 100, minHeight: 45), // Adjust the button size as needed
                        alignment: Alignment.center,
                        child: Text(
                          'Register',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                    ),
                  )

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}