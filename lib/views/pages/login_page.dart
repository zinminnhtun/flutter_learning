import 'package:flutter/material.dart';
import 'package:flutter_app/views/widget_tree.dart';
import 'package:lottie/lottie.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, required this.title});

  final String title;
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController controllerEmail = TextEditingController(text: '123');
  TextEditingController controllerPw = TextEditingController(text: '456');
  String confirmedEmail = '123';
  String confirmedPw = '456';
  @override
  void initState() {
    print("initState");
    super.initState();
  }

  @override
  void dispose() {
    controllerEmail.dispose();
    controllerPw.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Lottie.asset('assets/lotties/home.json',height: 300),
          
                TextField(
                  controller: controllerEmail,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    hintText: "Email",
                  ),
                  onEditingComplete: () => setState(() {}),
                ),
                SizedBox(height: 10.0),
                TextField(
                  controller: controllerPw,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    hintText: "Password",
                  ),
                  onEditingComplete: () => setState(() {}),
                ),
                SizedBox(height: 20.0),
                FilledButton(
                  onPressed: () {
          
                    onPressedLogin();
          
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 40.0),
                  ),
                  child: Text(widget.title),
                ),
                SizedBox(height: 50.0,)
              ],
            ),
          ),
        ),
      ),
    );
  }
  void onPressedLogin(){
    if(confirmedEmail == controllerEmail.text && confirmedPw == controllerPw.text){
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) {
            return WidgetTree();
          },
        ),
          (route)=>false,
      );
    }
  }
}
