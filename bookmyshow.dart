import 'package:flutter/material.dart';

void main(List<String> args) 
{
runApp(const MyApp());
}

// class to call the start screen page which will consists of button which will direct to a new page
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> 
{
  @override
  Widget build(BuildContext context) 
  {
    return const MaterialApp(
      debugShowCheckedModeBanner:false,
      home: MyStartScreen(),
    );
  }
}

class MyStartScreen extends StatefulWidget {
  const MyStartScreen({super.key});

  @override
  State<MyStartScreen> createState() => _MyStartScreenState();
}

class _MyStartScreenState extends State<MyStartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text('Book My show'),
        foregroundColor: Colors.black,
        backgroundColor: Colors.redAccent,
        titleTextStyle: const TextStyle(fontSize: 24,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),
        centerTitle: true,
        titleSpacing: 3,
      ),

      body: Center(
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // text
              const Text('Welcome To',style: TextStyle(fontSize: 42,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 72, 5, 5),fontStyle: FontStyle.italic),),
            
              Image.asset('images/bookmyshow-logo-vector.png',height: 150),

              const SizedBox(height: 20),
              
              // button 1
              ElevatedButton(style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white, backgroundColor: Colors.red,
                 minimumSize: const Size.fromHeight(40),
                  textStyle: const TextStyle(fontSize: 22,fontWeight: FontWeight.w400),
                  side: const BorderSide(style: BorderStyle.solid,width: 3)
                ),
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute
                  (builder: (BuildContext context) =>
                  const MyappSignUp() 
                  ));
                }, child:const Text('----Sign up----') ),

                const SizedBox(height: 20),

              //button 2  
                ElevatedButton(style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white, backgroundColor: Colors.red,
                  minimumSize: const Size.fromHeight(40),
                  textStyle: const TextStyle(fontSize: 22,fontWeight: FontWeight.w400),
                  side: const BorderSide(style: BorderStyle.solid,width: 3)
                ),
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => 
                  const MyappLogin()
                  ));
                }, child:const Text('-----Log In-----') ),
            ]
            ),
        ),
      ),
    );
  }
}

// Sign up page
class MyappSignUp extends StatefulWidget {
  const MyappSignUp({super.key});

  @override
  State<MyappSignUp> createState() => _MyappSignUpState();
}

class _MyappSignUpState extends State<MyappSignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign up page'),
        backgroundColor: Colors.redAccent,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),

      // text and textfield
      body: Center(
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children:  [
              // text
            const Text('Enter Details to Sign up',style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold,color: Colors.pinkAccent,fontStyle: FontStyle.italic),),
              
            const SizedBox(height: 28),

            const TextField( decoration: InputDecoration(  
                      border: OutlineInputBorder(),  labelText: 'Enter User Name',  hintText: 'Enter Your Name',),),

            const TextField( decoration: InputDecoration(  
                      border: OutlineInputBorder(),  labelText: 'Enter Email id',  hintText: 'Enter Your Email id',),),

            const TextField( decoration: InputDecoration(  
                      border: OutlineInputBorder(),  labelText: 'Create password',  hintText: 'Password',),),

            const TextField( decoration: InputDecoration(  
                      border: OutlineInputBorder(),  labelText: 'Confirm password',  hintText: 'Confirm',),),

            const SizedBox(height: 25),
            
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.red,
                minimumSize: const Size(190, 10),
                side: const BorderSide(style: BorderStyle.solid,width: 2)
              ),
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute
                  (builder: (BuildContext context) =>
                  const Myhomepage() 
                  ));
            }, 
            child: const Text('Sign Up',style: TextStyle(fontSize: 20,color: Colors.white),),),

            const SizedBox(height: 20),

            const Text('Already have an Account? Log In',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.pinkAccent,fontStyle: FontStyle.italic),),
          ]
          ),
        ),
      )
    );
  }
}

// Log in page
class MyappLogin extends StatefulWidget {
  const MyappLogin({super.key});

  @override
  State<MyappLogin> createState() => _MyappLoginState();
}

class _MyappLoginState extends State<MyappLogin> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
      title: const Text('Log in', style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
      backgroundColor: Colors.red,
      centerTitle: true,
      ),

      body: Center(
        child: SizedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
            const Text('Enter Details to Log In',style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold,color: Colors.blueGrey,fontStyle: FontStyle.italic),),
              
            const SizedBox(height: 28),

            const TextField( decoration: InputDecoration(  
                      border: OutlineInputBorder(),  labelText: 'Enter User Name/Email Id',  hintText: 'Username/Email',),),

            const SizedBox(height: 0),

            const TextField( decoration: InputDecoration(  
                      border: OutlineInputBorder(),  labelText: 'Enter Password',  hintText: 'Enter Password',),),

            const SizedBox(height: 25),

            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.red,
                minimumSize: const Size(190, 10),
                side: const BorderSide(style: BorderStyle.solid,width: 2)
              ),
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute
                  (builder: (BuildContext context) =>
                  const Myhomepage() 
                  ));
            }, 
            child: const Text('Log In',style: TextStyle(fontSize: 20,color: Colors.white),),),
            
            const SizedBox(height: 20)
            ],
          ),
        ),
      )
    );
  }
}


class Myhomepage extends StatefulWidget {
  const Myhomepage({super.key});

  @override
  State<Myhomepage> createState() => _MyhomepageState();
}

class _MyhomepageState extends State<Myhomepage> {
  bool isclick = false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Book Your Shows Now...',style: TextStyle(fontSize: 18),),
      ),
      body: Center(
         child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
           GestureDetector(
            onTap: (){
              setState(() {
                isclick = !isclick;
              });
            },
            child:isclick?Image.asset('images/music.jpg',width:320,height:170)
            :Image.asset('images/arijit.jpeg',width: 350,height: 170)),

           const  SizedBox(height:2),

           Image.asset('images/cskvsgt_finals.jpeg',width:800,height:170),

           const SizedBox(height: 2),

           Image.asset('images/guardians.jpg',width:305),

           const SizedBox(height: 50)
          ],
         )
        // Image.asset('')
      ),

      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: const[
            DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.orange, 
            ),

            child: UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.orange),
            accountName: Text(
              "Laksh Doshi",
              style: TextStyle(fontSize: 22,fontStyle: FontStyle.italic),
            ),
            accountEmail: Text("lakshd1999@gmail.com",style: TextStyle(fontSize: 22),),
            currentAccountPictureSize: Size.square(40),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.black,
              child: Text("L",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.tealAccent),),
            ),),
            // child:Text('Select your Shows',style: TextStyle(color:Colors.greenAccent,fontSize: 22,),),
              ),

              ListTile(
                title: Text('Home page'),
                leading: Icon(Icons.home),
              ),
              ListTile(
                title:Text('Movie Shows') ,
                leading: Icon(Icons.select_all_rounded),
              ),
              ListTile(
                title: Text('Music show'),
                leading: Icon(Icons.music_video_outlined),
              ),
              ListTile(
                title: Text('Sports games'),
                leading: Icon(Icons.sports_handball),
              ),
              ListTile(
                title: Text('Comedy Shows'),
                leading: Icon(Icons.theater_comedy),
              ),
              ListTile(
                title: Text('Plays'),
                leading: Icon(Icons.play_lesson_sharp),
              ),
              ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings),
              ),
              ListTile(
                title: Text('Contact Us'),
                leading: Icon(Icons.contact_emergency),
              ),
          ],
        ),
      ),

    

      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed:() {
          Navigator.of(context).push(MaterialPageRoute
                  (builder: (BuildContext context) =>
                  const MyStartScreen() 
                  ));
        },
        child: const Icon(Icons.backspace_rounded)),
    );
  }
}

