import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int level=0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          backgroundColor: Colors.red[800],

          title: Text('Cool App'),
        ),
        body:
         Padding(
          padding:EdgeInsets.fromLTRB(20,30,20,30), 
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Expanded(child: SizedBox(),
                  flex: 1,
                  ),

                  Expanded(
                    flex: 1,
                    child: Center(
                               child: CircleAvatar(
                        radius: 60,
                        backgroundImage: NetworkImage('https://avatars1.githubusercontent.com/u/37634751?s=400&u=f9f573e7ceadee6abe4eb349589c632098f1f07b&v=4')
                      ),
                    ),
                  ),
      
               Expanded(
                 flex: 1,
                 child: Align(
                   alignment: Alignment.topRight,
                    child: FloatingActionButton(
                     child: Icon(Icons.restore),
                     onPressed: (){
                     setState(() {
                     level=0;
                     });
              }),
                 ),
               )
                ],
              ),
              Text('Name',
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey,
                letterSpacing: 2,
              ),
              ),
              SizedBox(height: 5),
            Text('Nippun Lakhani',
              style: TextStyle(
                fontSize: 30,
                color: Colors.amberAccent,
                letterSpacing: 3,
              ),
              ),
              Divider(height:30,
              color: Colors.grey[900],
              ),
              Text('Level',
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey,
                letterSpacing: 2,
              ),
              ),
              SizedBox(height: 5),
            Text('$level',
              style: TextStyle(
                fontSize: 30,
                color: Colors.amberAccent,
                letterSpacing: 3,
              ),
              ),
              SizedBox(height:30),
              RaisedButton(onPressed: (){},
              textColor: Colors.red[900],
              child: Row(
                children: <Widget>[
                Icon(Icons.mail),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('nippun5499@gmail.com',style: TextStyle(
                    fontSize: 20
                  ),),
                )
              ],),
              ),
            ],
          )
          
          ),
          floatingActionButton: FloatingActionButton(onPressed: (){
            setState(() {
              level++;
            });
          },
          hoverColor: Colors.amber,
          splashColor: Colors.red[900],
          child: Icon(Icons.plus_one),
          )
      ),
    );
  }
}