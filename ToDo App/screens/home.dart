import 'package:flutter/material.dart';
import 'package:my_basic_app/constants/colors.dart';
import 'package:my_basic_app/widgets/todo_items.dart';
import '../model/todo.dart';

class Home extends StatefulWidget {
 const Home({Key? key}) :super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final todoslist = ToDo.todoList();
  List<ToDo> _foundToDo = [];
  final _todoController =  TextEditingController();

  @override

void initstate()
{
  _foundToDo = todoslist;
  super.initState();
}
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdBGColor,
      appBar: buildAppBar(),
      body: Stack(
        children: [
          Container(
          padding: const EdgeInsets.symmetric(horizontal:20,vertical: 15),
          child: Column(
            children: [
             searchbox(),
              Expanded(
               child: ListView(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 50,bottom: 20),
                    child: const Text('All ToDos',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500),),
                  ),
      
                  for( ToDo todoo in _foundToDo.reversed)
                  ToDoItems(
                  todo: todoo,
                  onToDOChanged: _handleToChange,
                  onDeleteItem: _deleteToDoItem,),
                ],
               ),
             )
            ],
          ),
        ),
        Align(
        alignment: Alignment.bottomCenter,
        child:Row(children: [
          Expanded (
          child: Container(
          margin: const EdgeInsets.only(bottom:20,right: 20,left: 20),
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 5,
          ),
         // Box Decoration
          decoration : BoxDecoration(
            color: Colors.white,
            boxShadow: const [BoxShadow(
            color:Colors.grey,
            offset:Offset(0.0,0.0),
            blurRadius:10.0,
            spreadRadius: 0.0,
            ),],
            borderRadius: BorderRadius.circular(10),
          ),
            child:  TextField(
              controller: _todoController,
              decoration: const InputDecoration(
                hintText: 'Add a new To do item',
                border: InputBorder.none,
              ),
            )
          ),
          ),
          Container(
            margin: const EdgeInsets.only(
            bottom: 20,
            right:20,
            ),
            child: ElevatedButton( 
            child:const Text('+',style: TextStyle(fontSize: 40),),
            onPressed: () {
              _addToDoItem(_todoController.text);
            },
            style: ElevatedButton.styleFrom(
              primary: tdBlue,
              minimumSize: Size(60, 60),
              elevation: 10,
            ),),
          ),
        ],),
        )
        ]
      ),
    );
  }

// function to change the tick  
  void _handleToChange(ToDo todo)
{
  setState(() {
    todo.isDone = !todo.isDone;
  });
}

// function to delete an item from the todos
void _deleteToDoItem(String id)
{
  setState(() {
    todoslist.removeWhere((item) => item.id == id);
  });
}

// controller function
void _addToDoItem(String toDo)
{
  setState(() {
  todoslist.add(ToDo(
  id: DateTime.now().millisecondsSinceEpoch.toString(), 
  todoText: toDo,
  ));
  });
  _todoController.clear();
}

// searching functionavolity function
void _runFilter(String enteredKeyword)
{
  List<ToDo> results = [];
  if(enteredKeyword.isEmpty)
  {
    results = todoslist;
  }
  else{
    results = todoslist.where((item) => item.todoText!.toLowerCase().contains(enteredKeyword.toLowerCase())).toList();
  }
  setState(() {
    _foundToDo = results;
  });
}

// APPBAR
    AppBar buildAppBar()
    {
     return AppBar(
        backgroundColor: Colors.amberAccent ,
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
                borderRadius: BorderRadius.circular(100),
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
              child: TextField(
                onChanged: (value) => _runFilter(value),
                decoration: const InputDecoration(
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
