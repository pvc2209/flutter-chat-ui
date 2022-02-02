import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_app_ui/pages/chat_page.dart';
import 'package:flutter_chat_app_ui/pages/contact_page.dart';
import 'package:flutter_chat_app_ui/pages/message_page.dart';
import 'package:flutter_chat_app_ui/pages/notification_page.dart';
import 'package:flutter_chat_app_ui/pages/profile_page.dart';
import 'package:flutter_chat_app_ui/pages/search_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      // home: const MainPage(title: 'Flutter Demo Home Page'),
      initialRoute: "/",
      routes: {
        "/": (context) => const MainPage(),
        "/search": (context) => const SearchPage(),
        "/message": (context) => const MessagePage(),
      },
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  final screens = const [
    ChatPage(),
    ContactPage(),
    NotificationPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) => setState(() {
          _currentIndex = value;
        }),
        currentIndex: _currentIndex,
        selectedItemColor: Theme.of(context).primaryColor,
        items: [
          BottomNavigationBarItem(
            icon: Badge(
              padding: EdgeInsets.zero,
              shape: BadgeShape.square,
              borderRadius: BorderRadius.circular(8),
              badgeContent: const Padding(
                padding: EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                child: Text(
                  "10",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
              ),
              child: const Icon(
                Icons.message_outlined,
                color: Colors.grey,
              ),
            ),
            activeIcon: Badge(
              padding: EdgeInsets.zero,
              shape: BadgeShape.square,
              borderRadius: BorderRadius.circular(8),
              badgeContent: const Padding(
                padding: EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                child: Text(
                  "10",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
              ),
              child: Icon(
                Icons.message,
                color: Theme.of(context).primaryColor,
              ),
            ),
            label: "Nhắn tin",
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: const Icon(
              Icons.quick_contacts_mail_outlined,
              color: Colors.grey,
            ),
            activeIcon: Icon(
              Icons.quick_contacts_mail,
              color: Theme.of(context).primaryColor,
            ),
            label: "Danh bạ",
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Badge(
              padding: EdgeInsets.zero,
              shape: BadgeShape.square,
              borderRadius: BorderRadius.circular(8),
              badgeContent: const Padding(
                padding: EdgeInsets.symmetric(vertical: 2, horizontal: 7),
                child: Text(
                  "1",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
              ),
              child: const Icon(
                Icons.notifications_outlined,
                color: Colors.grey,
              ),
            ),
            activeIcon: Badge(
              padding: EdgeInsets.zero,
              shape: BadgeShape.square,
              borderRadius: BorderRadius.circular(8),
              badgeContent: const Padding(
                padding: EdgeInsets.symmetric(vertical: 2, horizontal: 7),
                child: Text(
                  "1",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
              ),
              child: Icon(
                Icons.notifications,
                color: Theme.of(context).primaryColor,
              ),
            ),
            label: "Thông báo",
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: const Icon(
              Icons.person_outline,
              color: Colors.grey,
            ),
            activeIcon: Icon(
              Icons.person,
              color: Theme.of(context).primaryColor,
            ),
            label: "Cá nhân",
            backgroundColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
