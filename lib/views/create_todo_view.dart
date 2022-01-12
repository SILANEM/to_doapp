import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
class CreateTodoView extends StatelessWidget {
  const CreateTodoView ({Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: false,
        iconTheme: IconThemeData(color: Colors.black),
         title: const Text('New Todo',
         style: TextStyle(fontSize: 24, 
         fontWeight: FontWeight.w800, 
         color: Colors.black ),
         ),
      ),
       body: ListView(
           padding: EdgeInsets.all(12),
           children: [
             TextFormField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              labelText: "Title",
              hintText: 'Please type your title here',
              focusedErrorBorder: UnderlineInputBorder()),
            ),   
            SizedBox(
              height: 40,
            ),
             TextFormField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              labelText: "Description",
              hintText: 'Please type your title here',
              focusedErrorBorder: UnderlineInputBorder()),
             ), 
             SizedBox(
               height: 40,
             ),
               Row(children: [
                 Expanded(
                   child: TextFormField(onTap: (){
                     showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime.now(), lastDate: DateTime.now(),);
                     },  decoration: InputDecoration(
              labelText: "Date",
              focusedErrorBorder: UnderlineInputBorder(),
                       )

               )
             ),
       SizedBox(
               height: 40,       
           ),
           Expanded(
                   child: TextFormField(onTap: (){
                     showTimePicker(context: context, initialTime: TimeOfDay.now(),);
                   },
                       decoration: InputDecoration(
              labelText: "Time",
              focusedErrorBorder: UnderlineInputBorder(),       
       ),
                   ),
           ),
                        ],          ),


            SizedBox(
               height: 30,             
            ),
               TextButton(onPressed: (){}, child: Text("Create ToDo", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w800, color: Colors.white,),
               ),
               style: TextButton.styleFrom(backgroundColor: Colors.blue),
               ),      

           ]
            ),
    );
  }
}