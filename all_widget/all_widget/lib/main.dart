import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const appTitle = 'All Widget';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(title: Text(title)),
        body: ListView(
          children: [
            Container(
              width: double.infinity,
              color: Colors.blueGrey,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 15.0, 0, 15.0),
                child: Center(
                  child: Text(
                    'All the widgets',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              child: Image(
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1498049794561-7780e7231661?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80'),
              ),
            ),
            Container(
              padding: EdgeInsets.all(12.0),
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Click Me!'),
              ),
            ),
            Container(
              child: FloatingActionButton(
                onPressed: () {},
                child: Icon(Icons.camera_alt_rounded),
              ),
            ),
            Container(
              width: double.infinity,
              child: Column(
                children: [
                  Card(
                    color: Colors.tealAccent,
                    margin: EdgeInsets.all(10.0),
                    elevation: 8.0,
                    shadowColor: Colors.redAccent,
                    child: ListTile(
                      leading: Icon(Icons.person_outline),
                      title: Text('My Card'),
                      onTap: () {},
                    ),
                  ),
                  Card(
                    color: Colors.tealAccent,
                    margin: EdgeInsets.all(10.0),
                    elevation: 8.0,
                    shadowColor: Colors.redAccent,
                    child: ListTile(
                      leading: Icon(Icons.person_outline),
                      title: Text('My Card'),
                      onTap: () {},
                    ),
                  ),
                  Card(
                    color: Colors.tealAccent,
                    margin: EdgeInsets.all(10.0),
                    elevation: 8.0,
                    shadowColor: Colors.redAccent,
                    child: ListTile(
                      leading: Icon(Icons.person_outline),
                      title: Text('My Card'),
                      onTap: () {},
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.tealAccent,
                    height: 50.0,
                    width: 100.0,
                    child: Center(child: Text("Row")),
                  ),
                  Container(
                    color: Colors.tealAccent,
                    height: 50.0,
                    width: 100.0,
                    child: Center(child: Text("Row")),
                  ),
                  Container(
                    color: Colors.tealAccent,
                    height: 50.0,
                    width: 100.0,
                    child: Center(child: Text("Row")),
                  ),
                ],
              ),
            ),
            Container(
              height: 300.0,
              child: ClipRRect(
                child: Image.network("https://picsum.photos/200"),
              ),
            ),
            Container(
              height: 100.0,
              child: CircleAvatar(
                backgroundColor: Colors.redAccent,
                child: Icon(
                  Icons.person,
                  size: 40.0,
                ),
              ),
            ),
            Container(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
                shrinkWrap: true,
                children: List.generate(
                  4,
                  (index) {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage("https://picsum.photos/200"),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(20.0),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text('My Widget App'),
              ),
              ListTile(
                title: const Text('Link'),
                onTap: () {},
              ),
              ListTile(
                title: const Text('Link'),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
