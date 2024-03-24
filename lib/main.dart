// ignore: unused_import, avoid_web_libraries_in_flutter
import 'dart:html';

import 'package:flutter/material.dart';
import './custom_widget/app_colors.dart';
import './custom_widget/responsive.dart';
import 'pageContent/home_page.dart';
import 'pageContent/project_page.dart';
import 'pageContent/resume_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portfolio',
      theme: ThemeData(
          primarySwatch: Colors.lightGreen,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          fontFamily: 'roboto'),
      home: const MainLayout(),
    );
  }
}

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  // ignore: library_private_types_in_public_api
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
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
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
                        image: AssetImage("lib/image/profile.png"),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                ListTile(
                  title: Text('Home',
                      style: TextStyle(
                          color: AppColors.textColor,
                          fontSize: Responsive.fontSizeContent(context),
                          fontWeight: FontWeight.bold)),
                  onTap: () => _changePage(1),
                  selected: _selectedPage == 1,
                  selectedTileColor: Colors.grey[200],
                  contentPadding: const EdgeInsets.symmetric(horizontal: 20.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                ListTile(
                  title: Text('Resume',
                      style: TextStyle(
                          color: AppColors.textColor,
                          fontSize: Responsive.fontSizeContent(context),
                          fontWeight: FontWeight.bold)),
                  onTap: () => _changePage(2),
                  selected: _selectedPage == 2,
                  selectedTileColor: Colors.grey[200],
                  contentPadding: const EdgeInsets.symmetric(horizontal: 20.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                ListTile(
                  title: Text('Project',
                      style: TextStyle(
                          color: AppColors.textColor,
                          fontSize: Responsive.fontSizeContent(context),
                          fontWeight: FontWeight.bold)),
                  onTap: () => _changePage(3),
                  selected: _selectedPage == 3,
                  selectedTileColor: Colors.grey[200],
                  contentPadding: const EdgeInsets.symmetric(horizontal: 20.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.white,
              child: _selectedPage == 1
                  ? const PageOneContent()
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
        title: Text('Portfolio',
            style: TextStyle(
                color: AppColors.textColor,
                fontSize: Responsive.fontSizeContent(context),
                fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      drawer: Drawer(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0.0),
        ),
        child: ListView(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
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
                  border: Border(bottom: BorderSide(color: Colors.transparent)),
                  image: DecorationImage(
                      image: AssetImage("lib/image/profile.png"),
                      fit: BoxFit.contain),
                ),
              ),
            ),
            ListTile(
              title: Text('Home',
                  style: TextStyle(
                      color: AppColors.textColor,
                      fontSize: Responsive.fontSizeContent(context),
                      fontWeight: FontWeight.bold)),
              onTap: () => _changePage(1),
              selected: _selectedPage == 1,
              selectedTileColor: Colors.grey[200],
              contentPadding: const EdgeInsets.symmetric(horizontal: 20.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
            ListTile(
              title: Text('Resume',
                  style: TextStyle(
                      color: AppColors.textColor,
                      fontSize: Responsive.fontSizeContent(context),
                      fontWeight: FontWeight.bold)),
              onTap: () => _changePage(2),
              selected: _selectedPage == 2,
              selectedTileColor: Colors.grey[200],
              contentPadding: const EdgeInsets.symmetric(horizontal: 20.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
            ListTile(
              title: Text('Project',
                  style: TextStyle(
                      color: AppColors.textColor,
                      fontSize: Responsive.fontSizeContent(context),
                      fontWeight: FontWeight.bold)),
              onTap: () => _changePage(3),
              selected: _selectedPage == 3,
              selectedTileColor: Colors.grey[200],
              contentPadding: const EdgeInsets.symmetric(horizontal: 20.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
          ],
        ),
      ),
      body: Container(
        color: Colors.white,
        child: _selectedPage == 1
            ? const PageOneContent()
            : _selectedPage == 2
                ? const PageTwoContent()
                : const PageThreeContent(),
      ),
    );
  }
}
