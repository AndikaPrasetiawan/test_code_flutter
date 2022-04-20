import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Hello World',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      // A widget which will be started on application startup
      home: MyHomePage(title: 'Product'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // The title text which will be shown on the action bar
          title: Text(title),
        ),
        body: ListView.builder(
            itemCount: 3,
            itemBuilder: (context, index) {
              return Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: ListTile(
                      leading: Image.network("https://dynamic.zacdn.com/EyYwFZeKQeuL0OsqV6XRiU0hvsM=/fit-in/346x500/filters:quality(90):fill(ffffff)/https://static-id.zacdn.com/p/pvn-8637-4621362-1.jpg"),
                      title: Text(
                        "Sepatu sneakers",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      subtitle: Text(
                        "Lorem Ipsum dolor sit amet, cons",
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      )));
            }));
  }
}
