import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

// flutter is widget inside widget inside widget
// flutter works on widgets
// stateless widget means the screen will never change
// ignore: must_be_immutable
class MyApp extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
// widgets - capital letters and arguments - small letters
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner:
            false, // removes the debug banner from the top page
        home: MyappSignup());
  }
}

class MyappSignup extends StatefulWidget {
  const MyappSignup({super.key});
  @override
  State<MyappSignup> createState() => _MyappSignupState();
}

class _MyappSignupState extends State<MyappSignup> {
  String buttonName = 'Sign up';
  String button = 'Logg in';
  int currentIndex = 0;
  bool isclick = false;
  @override
  Widget build(BuildContext context) 
{
    return Scaffold(
      appBar: AppBar(
        title: const Text('SPOTIFY'),
        backgroundColor: Colors.yellow,
        titleTextStyle: const TextStyle(fontStyle: FontStyle.italic, fontSize: 35,color: Colors.blue),
      ),

      body: Center(
        // container in place of sized box
        child: currentIndex == 0
            ? Container
            (
                width: double.infinity,
                height: double.infinity,
                color: const Color.fromARGB(255, 244, 54, 54),
        
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,

                  children: [
                    // button - 1
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          onPrimary: const Color.fromARGB(255, 54, 244, 89),
                          primary: Colors.blue,
                        ),
                        onPressed: () {
                          //int i;
                          //String n;
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const signUppage(),
                          ));
                          setState(() {
                            // buttonName = 'Signed in';
                          });
                          // print('Print something useful');
                        },
                        child: Text(buttonName)),

                        // button-2
                        ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          onPrimary: Color.fromARGB(255, 54, 244, 89),
                          primary: Colors.blue,
                        ),
                        onPressed: () {
                          setState(() {
                            // button = 'logged in';
                          });
                          print('Print something useful');
                        },
                        child: Text(button)),
                  ],
                ),
            )
            : GestureDetector(
              onTap: (){
                setState(() {
                  isclick = !isclick;
                });
              },
              child:isclick ? Image.asset('images/music.jpg') 
              : Image.network('https://corlettexpress.com/wp-content/uploads/2020/09/AdobeStock_244807532-2048x1024.jpeg')),
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            label: 'Home page',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
          label: 'Settings', 
          icon: Icon(Icons.settings)
          )
        ],
        
        // in stateful widgets you have set state
        currentIndex: currentIndex,
        onTap: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        // shows error with stateless widget
      ),
    );
  }
}

// ignore: camel_case_types
class signUppage extends StatelessWidget {
  const signUppage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SIGN UP PAGE HERE'),
      ),
    );
  }
}

// scaffold, materialapp, elevatedbutton, child
// body, container, alignments, images addition
// transfer from one page to other
// change in image with one tp
// refractor , format doc
// stateless and stateful widgets
