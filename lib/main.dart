import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Firstpage(),
    );
  }
}

class Firstpage extends StatefulWidget {
  const Firstpage({super.key});

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('Creat App'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'REGISTER BOOK',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.cyan,
                  fontSize: 20.0),
            ),
            OverflowBar(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.account_circle_rounded),
                  iconSize: 30.0,
                ),
              ],
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: 'Enter your name', icon: Icon(Icons.people)),
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: 'Enter Email', icon: Icon(Icons.mail)),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => secondpage()));
              },
              child: Text(
                'Login',
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 10.0,
        child: Icon(Icons.headset_mic),
        onPressed: () {},
      ),
    );
  }
}

class secondpage extends StatefulWidget {
  const secondpage({super.key});

  @override
  State<secondpage> createState() => _secondpageState();
}

class _secondpageState extends State<secondpage> {
  void showBottom() {
    showModalBottomSheet<void>(
        context: context,
        builder: (BuildContext context) {
          return Container(
            padding: EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Thank you sir for your guidance and support',
                  selectionColor: Colors.cyan,
                  style: TextStyle(
                      color: Colors.redAccent, fontWeight: FontWeight.bold),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Okay'),
                ),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        /* leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            print('this is bhuvanesh');
          },
        ),*/
        title: Text('Creat App'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.album),
                iconSize: 40.0,
                color: Colors.white70,
              ),
              Text(
                'ALFARE TECH',
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black38,
                ),
              ),
              Divider(
                height: 4.0,
              ),
            ],
          ),
          Center(
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0)),
              elevation: 10,
              child: SizedBox(
                height: 120,
                width: 380,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ListTile(
                      leading: Icon(Icons.message),
                      title: Text(
                        'Hai sir this is my first project...',
                        style: TextStyle(fontSize: 18.0),
                      ),
                      subtitle: Text(
                        '_BHUVANESH',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        TextButton(
                          child: const Text('BACK'),
                          onPressed: () {
                            Navigator.of(context).pop(MaterialPageRoute(
                                builder: (context) => Firstpage()));
                          },
                        ),
                        const SizedBox(width: 8),
                        TextButton(
                          child: const Text('DONE'),
                          onPressed: showBottom,
                        ),
                        const SizedBox(width: 8),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          OverflowBar(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.school),
                iconSize: 40.0,
                color: Colors.black38,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.people),
                iconSize: 40.0,
                color: Colors.black38,
              ),
            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 10.0,
        child: Icon(Icons.navigate_before_sharp),
        onPressed: () {
          Navigator.of(context)
              .pop(MaterialPageRoute(builder: (context) => Firstpage()));
        },
      ),
      drawer: Drawer(
        elevation: 26.0,
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Bhuvanesh'),
              accountEmail: Text('bhuvanesh2k03@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.cyan,
                child: Text('ALFARE'),
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundColor: Colors.teal,
                  child: Text('boo'),
                ),
              ],
            ),
            ListTile(
              title: Text('All Inbox'),
              leading: Icon(Icons.mail),
            ),
            Divider(
              height: 0.2,
            ),
            ListTile(
              title: Text('All Primary'),
              leading: Icon(Icons.inbox),
            ),
            Divider(
              height: 0.2,
            ),
            ListTile(
              title: Text('promotion'),
              leading: Icon(Icons.local_offer),
            ),
            Divider(
              height: 0.2,
            ),
            ListTile(
              title: Text('social'),
              leading: Icon(Icons.people),
            ),
            Divider(
              height: 0.2,
            ),
            ListTile(
              title: Text('sent'),
              leading: Icon(Icons.send),
            ),
            Divider(
              height: 0.2,
            ),
            ListTile(
              title: Text('Important'),
              leading: Icon(Icons.edit_note_sharp),
            ),
            Divider(
              height: 0.2,
            )
          ],
        ),
      ),
    );
  }
}
