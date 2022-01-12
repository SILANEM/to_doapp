import 'package:flutter/material.dart';
import 'package:todo_app/views/create_todo_view.dart';
class HomeView extends StatelessWidget {
  const HomeView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: false,
        iconTheme: IconThemeData(color: Colors.black),
        leadingWidth: 40,
        leading: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: CircleAvatar(
            radius:60 ,
            backgroundImage: NetworkImage('https://images.unsplash.com/photo-1485827404703-89b55fcc595e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80'),
          ),
        ),
        title: const Text('My tasks',
         style: TextStyle(fontSize: 24, 
         fontWeight: FontWeight.w800, 
         color: Colors.black ),
         ),
         actions: [ Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextButton(onPressed: (){}, child: Icon(Icons.filter_list)),
                    TextButton(onPressed: (){}, child: Icon(Icons.search)),
                  ],
                ),],
               

           ),
           body: ListView(
           padding: EdgeInsets.all(20),
           children: [
             Card(
               child: ListTile(
                 leading: IconButton(onPressed: (){}, icon: Icon(Icons.check_circle_outline_outlined), color: Colors.pink),
                 title: Text('Plan the trip to Finland'),
                 subtitle: Text("The family's trip to Findland next summer"),
                 trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(onPressed: (){}, icon:Icon(Icons.notifications), color:Colors.pink),
                    Text('Yeterday',style:TextStyle (fontSize:8, fontWeight: FontWeight.w800, color: Colors.pink),
                    ),
                    ] 
                     ),
               )
              
             ),
             Card(
               child: ListTile(
                 leading: IconButton(onPressed: (){}, icon: Icon(Icons.check_circle_outline_outlined), color: Colors.blue),
                 title: Text("Plan Susan's birthday", style: TextStyle(color: Colors.blueGrey,)),        
             trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(onPressed: (){}, icon:Icon(Icons.notifications), color:Colors.blueGrey),
                    Text('Today 13:00',style:TextStyle (fontSize:8, fontWeight: FontWeight.w800, color: Colors.blueGrey),),
                 
           ],
    
    )
    ),
    ),
     Card(
               child: ListTile(
                 leading: IconButton(onPressed: (){}, icon: Icon(Icons.check_circle_outline_outlined), color: Colors.blue),
                 title: Text("Groceries for dinner", style: TextStyle(color: Colors.blueGrey,)),
                 subtitle: Text("Get tomatoes,lettuce,potatoes,green beans,cream and beef fillet.Also buy red wine at John's Wine Shop"),
             trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(onPressed: (){}, icon:Icon(Icons.notifications), color:Colors.blueGrey),
                    Text('Today 15:00',style:TextStyle (fontSize:8, fontWeight: FontWeight.w800, color: Colors.blueGrey),),
               
           ],
             ),)
     ),
       Card(
               child: ListTile(
                 leading: IconButton(onPressed: (){}, icon: Icon(Icons.check_circle_outline_outlined), color: Colors.black),
                 title: Text("Port project", style: TextStyle(color: Colors.blueGrey,)),
                 subtitle: Text("Get tomatoes,lettuce,potatoes,green beans,cream and beef fillet.Also buy red wine at John's Wine Shop"),
             trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(onPressed: (){}, icon:Icon(Icons.notifications), color:Colors.blueGrey),
                    Text('Tomorrow',style:TextStyle (fontSize:8, fontWeight: FontWeight.w800, color: Colors.blueGrey),),
               
           ],
             ),
             ),
              ),
               Card(
               child: ListTile(
                 leading: IconButton(onPressed: (){}, icon: Icon(Icons.check_circle_outline_outlined), color: Colors.black),
                 title: Text("Take jacket to cleaning", style: TextStyle(color: Colors.blueGrey,)),
                  trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(onPressed: (){}, icon:Icon(Icons.notifications), color:Colors.blueGrey),
                    Text('Fri, 30 OCT',style:TextStyle (fontSize:8, fontWeight: FontWeight.w800, color: Colors.blueGrey),),
            
      
            ]
             ),
               )
               ),
                Card(
               child: ListTile(
                  leading: IconButton(onPressed: (){}, icon: Icon(Icons.check_circle_outline_outlined), color: Colors.black),
              title: Text("Fix dad's PC", style: TextStyle(color: Colors.blueGrey,)),
              subtitle: Text("Install the latest updates and check ypur wireless connection"),
              ),     
              ),
               Card(
               child: ListTile(
                  leading: IconButton(onPressed: (){}, icon: Icon(Icons.check_circle_outline_outlined), color: Colors.black),
              title: Text("Trip to Stockhom", style: TextStyle(color: Colors.blueGrey,)),
              subtitle: Text("Talk with Monica about this trip"),),
               ),
                Card(
               child: ListTile(
                  leading: IconButton(onPressed: (){}, icon: Icon(Icons.check_circle_outline_outlined), color: Colors.blue),
              title:Row(
              children: [Text("Completed", style: TextStyle(color: Colors.blueGrey),),
                IconButton(onPressed: (){}, icon:Icon(Icons.keyboard_arrow_down), color: Colors.blueGrey),   
              ]
              ),
              trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('24',style:TextStyle (fontSize:8, fontWeight: FontWeight.w800, color: Colors.purple),),
                  ]
                 ),
          
          ),
           ), 
            ]
               ),
              floatingActionButton: FloatingActionButton(onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) {return CreateTodoView();}));}, child: Icon(Icons.add),
            
             
         ),
          );
           }
           }


