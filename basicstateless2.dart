import 'package:flutter/material.dart';

// here we will try and use containers , bottom navigation bar, app bar , text , elevated buttons and images

class Widgetpage extends StatelessWidget 
{
  const Widgetpage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold
    (
      appBar: AppBar(
        title: const Text('Book My Show'),
        backgroundColor: Colors.redAccent,
        foregroundColor: Colors.black,
      ),

      body: const Center(
        child: Text(
          "Welcome to Book My Show!",
          style: TextStyle(
            color: Colors.black,
            fontSize: 52.0,
            fontStyle: FontStyle.italic
          ),
        ),
      ),
      // child:ElevatedButton(onPressed: onPressed, child: child)

      floatingActionButton: FloatingActionButton(
        elevation: 10.0,
        child: const Icon(Icons.add_chart),
        onPressed: (){},
      ),

      drawer: Drawer(
        child: ListView(
          children: const[
            DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.green,
            ),
            child:Text(
              'Bookings accepted',
              style: TextStyle(
                color:Colors.green,
                fontSize: 24,
              ),
              ),
              ),

              ListTile(
                title: Text('Home page'),
                leading: Icon(Icons.home),
              ),
              ListTile(
                title:Text('See movies') ,
                leading: Icon(Icons.select_all_rounded),
              ),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        fixedColor: Colors.green,
        items: const[
          BottomNavigationBarItem(
          label: "Home",
          icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
          label: "Search",
          icon: Icon(Icons.search),
          ),
          BottomNavigationBarItem(
          label: "Profile",
          icon: Icon(Icons.account_circle),
          ),
        ]),

    ),
    );
  }
}
void main(List<String> args) 
{
runApp(const Widgetpage());
}

// lesson 1 - elevated button is not a part of the scaffold
// it is part of container
