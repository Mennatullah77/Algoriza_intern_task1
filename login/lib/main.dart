
import 'package:flutter/material.dart';
import 'my_flutter_app_icons.dart';
import 'custom_icons.dart';



void main() {
  // ignore: prefer_const_constructors
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Roboto',
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(200.0),
          child: AppBar(
            iconTheme: IconThemeData(
              color: Colors.black,
            ),
            title: Text(
              '',
              style: TextStyle(color: Colors.white, fontSize: 28),
            ),
            centerTitle: true,
            flexibleSpace: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/BACK.jfif'),
                      fit: BoxFit.fill)),
            ),
          ),
        ),
        body: const LoginDemo(),
      ),
    );
  }
}

class LoginDemo extends StatefulWidget {
  const LoginDemo({Key? key}) : super(key: key);

  @override
  State<LoginDemo> createState() => _LoginDemoState();
}

class _LoginDemoState extends State<LoginDemo> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(children: <Widget>[
          Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.all(10),
              child: const Text(
                'Welcome to Fashion Daily',
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    fontFamily: 'Roboto-light'),
              )),
          Container(
            padding: EdgeInsets.only(left:10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              const Text(
                'Sign in',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Roboto-Black'),
              ),

              TextButton.icon(
                onPressed: () {  },
                icon: Icon(Icons.question_mark_outlined , size: 20, color: Colors.blue),
                label: const Text(
                  'Help',),
                  
                ),
    ],
          ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            height: 70,
            child: TextField(
              controller: nameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'User Name',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            height: 70,
            child: TextField(
              obscureText: true,
              controller: passwordController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              //forgot password screen
            },
            child: const Text(
              'Forgot Password',
            ),
          ),

          Container(
              height: 40,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                child: const Text('Login'),
                onPressed: () {
                  print(nameController.text);
                  print(passwordController.text);
                },
              )),
          Container(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              alignment: Alignment.center,
              child: const Text(
                'or',
                style: TextStyle(
                    fontWeight: FontWeight.w200,
                    fontStyle: FontStyle.italic,
                    fontSize: 20,
                    color: Colors.grey),
              ),
          ),
          Container(
              height: 40,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                onPressed: () {
                  print(nameController.text);
                  print(passwordController.text);
                },
                child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextFormField(
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              prefixIcon: Icon(MyFlutterApp.gplus)
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter a pill name';
                            }
                            return null;
                          }
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text('Sign with by google'), // <-- Text


                 ],

              ))),

          TextFormField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'What is the pill\'s name?',
                  prefixIcon: Icon(MyFlutterApp.gplus)
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a pill name';
                }
                return null;
              }
          ),

          Container(

          padding: const EdgeInsets.only(top:30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              const Text('Does not have account?'),
              TextButton(
                child: const Text(
                  'Register here',
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  //signup screen
                },
              )
            ],
          ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(20),
            child: const Text(
                'Use the application according to policy rules. Any kinds of violations will be subject to sanctions',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                    fontStyle: FontStyle.italic,
                    color: Colors.grey)),
          )
        ]));
  }
}

