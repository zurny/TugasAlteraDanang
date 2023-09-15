import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const BerandaPage(),
      routes: {
        '/berita': (context) => const BeritaPage(),
        '/profil': (context) => const ProfilPage(),
      },
    );
  }
}

class BerandaPage extends StatefulWidget {
  const BerandaPage({Key? key}) : super(key: key);

  @override
  _BerandaPageState createState() => _BerandaPageState();
}

class _BerandaPageState extends State<BerandaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman Beranda'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Icon(
              Icons.home,
              size: 100.0,
            ),
            const Text(
              'Ini adalah halaman beranda.',
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/berita');
              },
              child: const Text('Pergi ke Berita'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/profil');
              },
              child: const Text('Pergi ke Profil'),
            ),
          ],
        ),
      ),
    );
  }
}

class BeritaPage extends StatelessWidget {
  const BeritaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman Berita'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Icon(
              Icons.book,
              size: 100.0,
            ),
            const Text(
              'Ini adalah halaman berita.',
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/beranda');
              },
              child: const Text('Pergi ke Beranda'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/profil');
              },
              child: const Text('Pergi ke Profil'),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfilPage extends StatelessWidget {
  const ProfilPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman Profil'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Icon(
              Icons.person,
              size: 100.0,
            ),
            const Text(
              'Ini adalah halaman profil.',
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/beranda');
              },
              child: const Text('Pergi ke Beranda'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/berita');
              },
              child: const Text('Pergi ke Berita'),
            ),
          ],
        ),
      ),
    );
  }
}
