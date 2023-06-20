import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //welcome text
            Icon(Icons.android_sharp, size: 72,),
            Text("Hello Again!", style:GoogleFonts.bebasNeue(fontSize: 50),),
            SizedBox(height: 25),
            Text("Welcome back you\'ve been missed!", style: TextStyle(fontSize: 20, color: Colors.black),),
            SizedBox(height: 50),

            //email
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(decoration: BoxDecoration(color: Colors.grey[200], border: Border.all(color: Colors.white), borderRadius: BorderRadius.circular(17)), child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: TextField(
                  onChanged: (text){},decoration: (
                    const InputDecoration(
                        hintText: 'Email', border: InputBorder.none
                    )),
                ),
              )),
            ),
            SizedBox(height: 10),

            //password
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(decoration: BoxDecoration(color: Colors.grey[200], border: Border.all(color: Colors.white), borderRadius: BorderRadius.circular(17)), child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: TextField(
                  onChanged: (text){},
                  obscureText:true,
                  decoration: (
                    const InputDecoration(
                        hintText: 'Password', border: InputBorder.none
                    )),
                ),
              )),
            ),
            SizedBox(height: 20),

            //sign in button
            Container(
              padding: EdgeInsets.symmetric(horizontal: 125, vertical: 15),
              decoration: BoxDecoration(color: Colors.deepPurpleAccent,
                  borderRadius: BorderRadius.circular(18)),
              child: Text('Sign In', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),),
            ),
            SizedBox(height: 25),

            //register here
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Not a member ? ", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                Text("Register Here", style: TextStyle(fontSize: 18, color: Colors.blueAccent, fontWeight: FontWeight.bold),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
