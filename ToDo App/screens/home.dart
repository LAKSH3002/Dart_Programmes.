import 'package:flutter/material.dart';
import 'package:my_basic_app/constants/colors.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdBGColor,
      appBar: buildAppBar(),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal:20,vertical: 15),
        child: Column(
          children: [
           searchbox(),
          ],
        )
      ),
    );
  }

// APPBAR
    AppBar buildAppBar()
    {
     return AppBar(
        backgroundColor: tdBGColor ,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Icon(Icons.menu, 
            color:tdBlack,
            size:30),

            Container(
              height: 40,
              width: 40,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset('images/music.jpg'),
              ),
            )
          ],
        ),
      );
    }
    // SearchBox
Widget searchbox()
{
  return 
   Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              decoration:BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ) ,
              child: const TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(0),
                  prefixIcon: Icon(Icons.search ,
                  color: tdBlack,
                  size: 20),
                  prefixIconConstraints: BoxConstraints(maxHeight: 20,minWidth: 25),
                  border: InputBorder.none,
                  hintText: 'Search',
                  hintStyle: TextStyle(color:tdGrey)
                ),
              ),
            );
}
}
