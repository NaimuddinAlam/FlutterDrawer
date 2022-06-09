import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage1(),
    );
  }
}
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer"),
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.amber,
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.blue,

                  ),
                    child: Container(
                      color: Colors.red,

                        child: Text("Drawer"))),
              ListTile(
                title: Text("Item1"),
                onTap: (){
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                title: Text("Item2"),
                onTap: (){
                  Navigator.of(context).pop();
                },
              ),


            ],
          ),
        ),
      ),
    );
  }
}


class MyHomePage1 extends StatelessWidget {
  const MyHomePage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
        title: Text("Drawer"),
    ),
    //endDrawer: Drawer(
      drawer: Drawer(

      child: Container(

        color: Colors.amber,


        child: Column(
          children: [
            Container(
              width: double.infinity,

              child: UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(),
                decoration: BoxDecoration(color: Colors.yellow),
                  accountName: Text("Naimuddin"), accountEmail: Text("naimuddin@gmail.com")),
            ),
            ListTile(
              title: Text("Item1"),
              onTap: (){
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              title: Text("Item2"),
              onTap: (){
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),

    ),
    body: Builder(
      builder: (context) {
        return Center(child: ElevatedButton(
          onPressed: (){
            Scaffold.of(context).openDrawer();
          },
          child: Text("Open Drawer"),
        ));
      }
    ),);
  }
}




