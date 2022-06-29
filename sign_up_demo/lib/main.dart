
import 'package:flutter/material.dart';


void main() {
  // ignore: prefer_const_constructors
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SignUp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Roboto',
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100.0),
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
                  'Register',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Roboto-Black'),
                ),

                TextButton.icon(
                  onPressed: () {  },
                  label: const Text(
                    'Help',),
                  icon: Icon(Icons.question_mark_outlined , size: 20, color: Colors.blue),
                  /**style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Roboto-Light'), **/
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            height: 60,
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
            height: 60,
            child: TextField(
              controller: nameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            height: 60,
            child: TextField(
              obscureText: true,
              controller: passwordController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
            ),
          ),
          Container(
              height: 40,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                child: const Text('Register'),
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
                child: const Text('Sign up with google'),
                onPressed: () {
                  print(nameController.text);
                  print(passwordController.text);
                },
              )),
          // Container(
          //     height: 40,
          //     padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          //     child:
          //         child: Row(
          //           mainAxisSize: MainAxisSize.min,
          //           children: [
          //             TextFormField(
          //                 decoration: const InputDecoration(
          //                     border: OutlineInputBorder(),
          //
          //                 ),
          //                 validator: (value) {
          //                   if (value == null || value.isEmpty) {
          //                     return 'Please enter a pill name';
          //                   }
          //                   return null;
          //                 }
          //             ),
          //             SizedBox(
          //               width: 5,
          //             ),
          //             Text('Sign with by google'), // <-- Text
          //
          //
          //           ],
          //
          //         )),
          Container(

            padding: const EdgeInsets.only(top:30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                const Text('Has an account?'),
                TextButton(
                  child: const Text(
                    'Sign in here',
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
                'By registering your account, your are agree to our terms and services',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                    fontStyle: FontStyle.italic,
                    color: Colors.grey)),
          )
        ]
        )
    );
  }
}

