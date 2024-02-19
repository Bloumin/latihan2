import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => MainApp(),
        '/page1': (context) => Page1(),
        '/page2': (context) => Page2(),
        '/page3': (context) => Page3(),
        '/page4': (context) => Page4(),
        '/page5': (context) => Page5(),
      },
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: appbar,
        body: Center(
          child: header,
        ),
        drawer: sidebar(context),
      ),
    );
  }
}

Widget sidebar(BuildContext context) {
  return Drawer(
    child: ListView(
      children: [
        drawerHeader,
        ListTile(
          title: Text("Home"),
          onTap: () {
            Navigator.popAndPushNamed(context, '/');
          },
        ),
        ListTile(
          title: Text("Jadwal Senin"),
          onTap: () {
            Navigator.popAndPushNamed(context, '/page1');
          },
        ),
        ListTile(
          title: Text("Jadwal Selasa"),
          onTap: () {
            Navigator.popAndPushNamed(context, '/page2');
          },
        ),
        ListTile(
          title: Text("Jadwal Rabu"),
          onTap: () {
            Navigator.popAndPushNamed(context, '/page3');
          },
        ),
        ListTile(
          title: Text("Jadwal Kamis"),
          onTap: () {
            Navigator.popAndPushNamed(context, '/page4');
          },
        ),
        ListTile(
          title: Text("Jadwal Jum'at"),
          onTap: () {
            Navigator.popAndPushNamed(context, '/page5');
          },
        ),
      ],
    ),
  );
}

var drawerHeader = DrawerHeader(
  child: Text("Jadwal XI RPL 1"),
);

var appbar = AppBar(
  title: Text("Jadwal XI RPL 1"),
);

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: appbar,
        body: senin,
        drawer: sidebar(context),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: appbar,
        body: selasa,
        drawer: sidebar(context),
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: appbar,
        body: rabu,
        drawer: sidebar(context),
      ),
    );
  }
}

class Page4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: appbar,
        body: kamis,
        drawer: sidebar(context),
      ),
    );
  }
}

class Page5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: appbar,
        body: jumat,
        drawer: sidebar(context),
      ),
    );
  }
}

var header = Container(
  padding: EdgeInsets.only(top: 100),
  color: Color.fromARGB(255, 173, 118, 224),
  width: 1500,
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Image(image: AssetImage("../Assets/Image/logosmkn1.png")),
      Text(
        "Jadwal Pelajaran",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      Text(
        "Kelas XI RPL 1",
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    ],
  ),
);

var senin = Container(
  padding: EdgeInsets.all(20),
  decoration: BoxDecoration(
    color: Color.fromARGB(255, 173, 118, 224),
  ),
  height: 1500,
  width: 1500,
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "Hari Senin",
        style: TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      SizedBox(height: 20),
      Text(
        "-Desain Komunikasi Visual",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      SizedBox(height: 7),
      Text(
        "-Basis Data",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    ],
  ),
);

var selasa = Container(
  padding: EdgeInsets.all(20),
  decoration: BoxDecoration(
    color: Color.fromARGB(255, 173, 118, 224),
  ),
  height: 1500,
  width: 1500,
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "Hari Selasa",
        style: TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      SizedBox(height: 20),
      Text(
        "-Bahasa Inggris",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      SizedBox(height: 7),
      Text(
        "-Pendidikan Jasmani Olahraga dan Kesehatan",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      SizedBox(height: 7),
      Text(
        "-Bahasa Jawa",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      SizedBox(height: 7),
      Text(
        "-Pemrograman Berorientasi Objek",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    ],
  ),
);

var rabu = Container(
  padding: EdgeInsets.all(20),
  decoration: BoxDecoration(
    color: Color.fromARGB(255, 173, 118, 224),
  ),
  height: 1500,
  width: 1500,
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "Hari Rabu",
        style: TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      SizedBox(height: 20),
      Text(
        "-Pemrograman Berorientasi Objek",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      SizedBox(height: 7),
      Text(
        "-Produk Kreatif dan Kewirausahaan",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      SizedBox(height: 7),
      Text(
        "-Pemrograman Web",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    ],
  ),
);

var kamis = Container(
  padding: EdgeInsets.all(20),
  decoration: BoxDecoration(
    color: Color.fromARGB(255, 173, 118, 224),
  ),
  height: 1500,
  width: 1500,
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "Hari Kamis",
        style: TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      SizedBox(height: 20),
      Text(
        "-Sejarah",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      SizedBox(height: 7),
      Text(
        "-Matematika",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      SizedBox(height: 7),
      Text(
        "-Pendidikan Agama Islam",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      SizedBox(height: 7),
      Text(
        "-Pramuka",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    ],
  ),
);

var jumat = Container(
  padding: EdgeInsets.all(20),
  decoration: BoxDecoration(
    color: Color.fromARGB(255, 173, 118, 224),
  ),
  height: 1500,
  width: 1500,
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "Hari Jum'at",
        style: TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      SizedBox(height: 20),
      Text(
        "-Bahasa Indonesia",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      SizedBox(height: 7),
      Text(
        "-Pendidkan Pancasila",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      SizedBox(height: 7),
      Text(
        "-Pemrograman Web",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      SizedBox(height: 7),
      Text(
        "-Bahasa Inggris",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    ],
  ),
);
