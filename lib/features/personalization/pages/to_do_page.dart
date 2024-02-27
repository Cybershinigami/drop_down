import 'package:flutter/material.dart';
import 'package:todo_app/features/personalization/pages/details.dart';

class ToDoScreen extends StatefulWidget {
  const ToDoScreen({super.key});

  @override
  State<ToDoScreen> createState() => _ToDoScreenState();
}

class _ToDoScreenState extends State<ToDoScreen> {
  List<Todo> todos = [];
  TextEditingController todoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0), //to remove padding
          children:  [ 
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.teal,
              ),
              accountName: Text(
                'Bivek Adhikari',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  ),
                ),
              accountEmail: Text(
                'adkri.bivek96@gmail.com',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                ),
                // currentAccountPicture: Image(
                //   image: AssetImage('profile.jpg')),
              // leading: Icon(Icons.message_rounded),
              // title: Text('Messages'),
            ),
            const ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
            ),
            ListTile(
              leading: const Icon(Icons.account_circle),
              title: const Text('Profile'),
              onTap: (){
                Navigator.pop(context);
              },
            ),
             const ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            )
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
        title: const Text(
          'Scheduler',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.yellowAccent,
          ),
          ),
      ),
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index){
          final todo = todos[index];
          return ListTile(
            onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>const DetailsPage()));
              print("Hello Thetre");
            },
            title: Text(todo.title),
            leading: Checkbox(
              value: todo.completed,
               onChanged: ((value) {
                // print("hello There");
                 setState(() {
                   todo.completed = value!;
                 });
               }),
            ),
            trailing: IconButton(
              icon: const Icon(Icons.delete),
              onPressed: (){
                setState(() {
                  todos.removeAt(index);
                });
              }, 
               ),
          );
        },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            showDialog(
              context: context,
               builder: (BuildContext context){
                return  AlertDialog(
                  title: const Text('New Task'),
                  content: TextField(
                    controller: todoController,
                    decoration: const InputDecoration(
                      hintText: 'Enter task...'),
                  ),
                   actions: [ 
                    const Spacer(),
                     InkWell(
                      child: const Text('Save'),
                      onTap: (){
                        setState(() {
                          todos.add(Todo(
                            title: todoController.text,
                             completed: true,
                             ));
                        });
                        todoController.clear();
                        Navigator.pop(context);
                      },
                    ),
                    InkWell(
                      child: const Text('Cancel'),
                      onTap: (){
                        setState(() {
                          todos.add(Todo(
                            title: todoController.text,
                            completed: false,
                          ));
                          todoController.clear();
                          Navigator.of(context).pop();
                        }); 
                      },
                    ),  
                  ],
                );
               });  
          },
          child: const Icon(Icons.add_rounded),
          ),
    );
  }
}

class Todo {
  String title;
  bool completed;
  Todo({
    required this.title,
     required this.completed,
     });
}