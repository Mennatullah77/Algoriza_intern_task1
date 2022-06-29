import 'package:flutter/material.dart';

void main() {
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
        appBar: AppBar(
            backgroundColor: Color(0xfffafafa),
            iconTheme: IconThemeData(
              color: Colors.black,
            ),
            title: Text(
              '',
              style: TextStyle(color: Colors.white, fontSize: 28),
            ),
            centerTitle: true,
          automaticallyImplyLeading: false,
          leading: IconButton (
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              /** Do something */
            },
          ),
          actions: <Widget>[
            Padding(
                padding: EdgeInsets.all(10.0),
                child: GestureDetector(
                  onTap: () {},
                  child: ElevatedButton(
                    child: const Text('Skip'),

                    onPressed: () {
                    },
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.purple),
                        textStyle:
                        MaterialStateProperty.all(const TextStyle(fontSize: 20, color:Colors.white)  ),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),)
                  ),
                )
                  ),))
            // Padding(
            //     padding: EdgeInsets.only(right: 20.0),
            //     child: GestureDetector(
            //       onTap: () {},
            //       child: Icon(
            //           Icons.more_vert
            //       ),
            //     )
            // ),
          ],


          ),

        body: const onboarding(),
      ),
    );
  }
}

class onboarding extends StatefulWidget {
  const onboarding({Key? key}) : super(key: key);

  @override
  State<onboarding> createState() => _onboardingState();
}

class _onboardingState extends State<onboarding> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(15),
    child: ListView(children: <Widget>[
      Container(
        height: 300.0,
        width: 50.0,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'assets/images/fashion.png'),
            fit: BoxFit.fitHeight,
          ),
        ),
      ),
      Container(

        padding: const EdgeInsets.all(10),
        child: const Text(
            'Buy variety of clothes, only customized to you!',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
                fontFamily: 'Roboto',
                color: Colors.black)),
      ),

      Container(

        padding: const EdgeInsets.all(10),
        child: const Text(
            'We are offering different pieces of clothes with high quality and competitve prices. Shop Now!',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal,
                fontFamily: 'Roboto',
                color: Colors.grey)),
      ),

      Container(
          padding: const EdgeInsets.fromLTRB(50, 10, 50, 10),
          height: 70,
          child: ElevatedButton(
            child: const Text('Get Started'),

            onPressed: () {
            },
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.purple),
                textStyle:
                MaterialStateProperty.all(const TextStyle(fontSize: 20, color:Colors.white)  )),
          )),

      Container(

        padding: const EdgeInsets.only(top:10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            const Text('Don not have an account?'),
            TextButton(
              child: const Text(
                'Sign up',
                style: TextStyle(fontSize: 20, color: Colors.purple),
              ),
              onPressed: () {
                //signup screen
              },)
          ],
        ),
      ),



    ]
    )
    );
  }
}


