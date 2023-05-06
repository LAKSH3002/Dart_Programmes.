import 'package:flutter/material.dart';
import 'package:my_basic_app/new.dart';


// A basic UI program of amazon page -
// The page when we start the app
// The main function that will call the class of the app
// used stateless widgets 
// app bar , body , created a column, added text and Elevated buttons one after the other with styles included in it 
void main(List<String> args) {
  runApp(const signUp());
}

// ignore: camel_case_types
class signUp extends StatelessWidget
{
  const signUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

      // 1 - App bar
      appBar: AppBar(
        title: const Text('WELCOME TO AMAZON'),
        backgroundColor: Colors.amberAccent,
        shadowColor: Colors.amberAccent,
        titleSpacing: 2,
        titleTextStyle: const TextStyle(fontSize:24,fontStyle:FontStyle.italic),
        centerTitle: true,
      ),

      // 2 - inside the body
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text('amazon',
          style: TextStyle(fontSize: 40, fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),),

          const SizedBox(height: 30),

          const Text('Sign in to your account',
          style:TextStyle(fontSize: 28,fontWeight: FontWeight.bold)),
          const SizedBox(height: 15),

          const Text('View your wish list                               ',
          style:TextStyle(fontSize: 20)),
          const SizedBox(height: 8),

          const Text('FInd & Reorder past purchase           ',
          style:TextStyle(fontSize: 20)),
          const SizedBox(height: 8),

          const Text('Track your purchase                            ',
          style:TextStyle(fontSize: 20)),
          const SizedBox(height: 24),
          
          // button - 1
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size.fromHeight(35),
              primary: Colors.greenAccent,
              onPrimary: Colors.black,
            ),
          child: const Text('Already a customer? Sign in'),
          onPressed: () {},
        ),

          // button-2
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size.fromHeight(35),
              primary: Colors.blueGrey,
            ),
          onPressed: () {},
          child: const Text('New to Amazon.in?Create an account'),
        ),

          // button - 3
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              minimumSize: const Size.fromHeight(35),
              primary: Colors.blueGrey,
            ),
          onPressed: () {},
          child: const Text('Skip Sign in'),
        ),
        ],
      ), 
    ),
    );
  }
}
