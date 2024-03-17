import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sidebar Layout',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MainLayout(),
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
        if (constraints.maxWidth < 700) {
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
          // Sidebar
          Expanded(
            flex: 1,
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage("lib/image/profile.jpg"),
                          fit: BoxFit.contain),
                    ),
                  ),
                ),
                ListTile(
                  title: const Text('Home'),
                  onTap: () => _changePage(1),
                  selected: _selectedPage == 1,
                  selectedTileColor: Colors.blue[100],
                ),
                ListTile(
                  title: const Text('Resume'),
                  onTap: () => _changePage(2),
                  selected: _selectedPage == 2,
                  selectedTileColor: Colors.blue[100],
                ),
                ListTile(
                  title: const Text('Project'),
                  onTap: () => _changePage(3),
                  selected: _selectedPage == 3,
                  selectedTileColor: Colors.blue[100],
                ),
              ],
            ),
          ),
          // Page content
          Expanded(
            flex: 4, // Adjust flex as needed
            child: Container(
              color: Colors.white,
              child: _selectedPage == 1
                  ? PageOneContent()
                  : _selectedPage == 2
                      ? PageTwoContent()
                      : PageThreeContent(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildWithSideBar() {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meok Khem'),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Container(
                width: 100,
                height: 100,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage("lib/image/profile.jpg"),
                      fit: BoxFit.contain),
                ),
              ),
            ),
            ListTile(
              title: const Text('Home'),
              onTap: () => _changePage(1),
              selected: _selectedPage == 1,
              selectedTileColor: Colors.blue[100],
            ),
            ListTile(
              title: const Text('Resume'),
              onTap: () => _changePage(2),
              selected: _selectedPage == 2,
              selectedTileColor: Colors.blue[100],
            ),
            ListTile(
              title: const Text('Project'),
              onTap: () => _changePage(3),
              selected: _selectedPage == 3,
              selectedTileColor: Colors.blue[100],
            ),
          ],
        ),
      ),
      body: Container(
        color: Colors.white,
        child: _selectedPage == 1
            ? PageOneContent()
            : _selectedPage == 2
                ? PageTwoContent()
                : PageThreeContent(),
      ),
    );
  }
}

class PageOneContent extends StatelessWidget {
  const PageOneContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity, // Full height
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Header: Name and Job Title
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Meok Khem',
                        style: TextStyle(
                            fontSize: 50,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Back-end Developer',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "I'm a Back-end developer with over 2 years of experience in development, teaching, and management. I also have experience with Full-stack web applications.",
                        style: TextStyle(fontSize: 14),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                  // Main Content
                  const SizedBox(height: 50),
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
                          icon: const ImageIcon(
                            AssetImage("lib/image/git.png"),
                            size: 70,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(width: 20),
                        IconButton(
                          onPressed: () {
                            // Add functionality for Twitter profile
                          },
                          icon: const ImageIcon(
                            AssetImage("lib/image/telegram.png"),
                            size: 70,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(width: 20),
                        IconButton(
                          onPressed: () {
                            // Add functionality for LinkedIn profile
                          },
                          icon: const ImageIcon(
                            AssetImage("lib/image/mail.png"),
                            size: 70,
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
    return const Center(
      child: Text(
        'Coming soon!',
        style: TextStyle(fontSize: 14),
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
