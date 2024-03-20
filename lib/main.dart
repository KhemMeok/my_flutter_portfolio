import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portfolio',
      theme: ThemeData(
          primarySwatch: Colors.grey,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          fontFamily: 'roboto'),
      home: const MainLayout(),
    );
  }
}

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  _MainLayoutState createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int _selectedPage = 1;

  void _changePage(int page) {
    setState(() {
      _selectedPage = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 800) {
          return _buildWithSideBar();
        } else {
          return _buildDrawer();
        }
      },
    );
  }

  Widget _buildDrawer() {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: ListView(
              children: <Widget>[
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                  ),
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage("lib/image/profile.png"),
                          fit: BoxFit.contain),
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                  child: ListTile(
                    title: const Text('Home'),
                    onTap: () => _changePage(1),
                    selected: _selectedPage == 1,
                    selectedTileColor: Colors.grey[200],
                  ),
                ),
                ListTile(
                  title: const Text('Resume'),
                  onTap: () => _changePage(2),
                  selected: _selectedPage == 2,
                  selectedTileColor: Colors.grey[200],
                ),
                ListTile(
                  title: const Text('Project'),
                  onTap: () => _changePage(3),
                  selected: _selectedPage == 3,
                  selectedTileColor: Colors.grey[200],
                ),
              ],
            ),
          ),
          // Page content
          Expanded(
            flex: 3, // Adjust flex as needed
            child: Container(
              color: Colors.white,
              child: _selectedPage == 1
                  ? PageOneContent()
                  : _selectedPage == 2
                      ? const PageTwoContent()
                      : const PageThreeContent(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildWithSideBar() {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Portfolio'),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.grey[100],
              ),
              child: Container(
                width: 100,
                height: 100,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage("lib/image/profile.png"),
                      fit: BoxFit.contain),
                ),
              ),
            ),
            ListTile(
              title: const Text('Home'),
              onTap: () => _changePage(1),
              selected: _selectedPage == 1,
              selectedTileColor: Colors.grey[200],
            ),
            ListTile(
              title: const Text('Resume'),
              onTap: () => _changePage(2),
              selected: _selectedPage == 2,
              selectedTileColor: Colors.grey[200],
            ),
            ListTile(
              title: const Text('Project'),
              onTap: () => _changePage(3),
              selected: _selectedPage == 3,
              selectedTileColor: Colors.grey[200],
            ),
          ],
        ),
      ),
      body: Container(
        color: Colors.white,
        child: _selectedPage == 1
            ? PageOneContent()
            : _selectedPage == 2
                ? const PageTwoContent()
                : const PageThreeContent(),
      ),
    );
  }
}

class PageOneContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Header: Name and Job Title
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                          height: MediaQuery.of(context).size.width > 800
                              ? 25
                              : 15),
                      Text(
                        'Meok Khem',
                        style: TextStyle(
                          fontSize:
                              MediaQuery.of(context).size.width > 800 ? 50 : 25,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Back-end Developer',
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width > 800
                                ? 40
                                : 25,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "I'm a Back-end developer with over 2 years of experience in development, teaching, and management. I also have experience with Full-stack web applications.",
                        style: TextStyle(fontSize: 14),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                  // Main Content
                  SizedBox(
                      height:
                          MediaQuery.of(context).size.width > 800 ? 50 : 30),
                  // Social Media Icons
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {
                            // Add functionality for git profile
                          },
                          icon: ImageIcon(
                            const AssetImage("lib/image/git.png"),
                            size: MediaQuery.of(context).size.width > 800
                                ? 70
                                : 55,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(width: 20),
                        IconButton(
                          onPressed: () {
                            // Add functionality for Twitter profile
                          },
                          icon: ImageIcon(
                            const AssetImage("lib/image/telegram.png"),
                            size: MediaQuery.of(context).size.width > 800
                                ? 70
                                : 55,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(width: 20),
                        IconButton(
                          onPressed: () {
                            // Add functionality for LinkedIn profile
                          },
                          icon: ImageIcon(
                            const AssetImage("lib/image/mail.png"),
                            size: MediaQuery.of(context).size.width > 800
                                ? 70
                                : 55,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Footer
          Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: const Center(
              child: Text(
                'Developed by Meok Khem, using @Flutter',
                style: TextStyle(fontSize: 14),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PageTwoContent extends StatelessWidget {
  const PageTwoContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Profile'),
                  Text(
                      "I'm a Back-end developer with over 2 years of experience in development, teaching, and management. I also have experience with Full-stack web applications.")
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PageThreeContent extends StatelessWidget {
  const PageThreeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Coming soon!',
        style: TextStyle(fontSize: 14),
      ),
    );
  }
}
