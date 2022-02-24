import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_app_ui/pages/call_page.dart';
import 'package:flutter_chat_app_ui/pages/chat_page.dart';
import 'package:flutter_chat_app_ui/pages/contact_page.dart';
import 'package:flutter_chat_app_ui/pages/login_page.dart';
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
        primarySwatch: Colors.green,
      ),
      debugShowCheckedModeBanner: false,
      // home: const MainPage(title: 'Flutter Demo Home Page'),
      initialRoute: "/",
      routes: {
        "/": (context) => LoginPage(),
        "/main": (context) => const MainPage(),
        "/search": (context) => const SearchPage(),
        "/message": (context) => const MessagePage(),
        "/call": (context) => const CallPage(),
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
              Icons.people,
              color: Colors.grey,
            ),
            activeIcon: Icon(
              Icons.people,
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
                  "2",
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
                  "2",
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

// // main.dart
// import 'package:flutter/material.dart';
// import 'dart:math' as math;

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'KindaCode.com',
//       theme: ThemeData(
//         primarySwatch: Colors.indigo,
//       ),
//       home: const HomePage(),
//     );
//   }
// }

// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text('Chat with KindaCode.com'),
//         ),
//         body: Padding(
//           padding: const EdgeInsets.all(10),
//           child: ListView(
//             children: const [
//               OutBubble(message: 'Hi there'),
//             ],
//           ),
//         ));
//   }
// }

// //  Received message bubble
// class InBubble extends StatelessWidget {
//   final String message;
//   const InBubble({Key? key, required this.message}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.start,
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Transform(
//           alignment: Alignment.center,
//           transform: Matrix4.rotationY(math.pi),
//           child: CustomPaint(
//             painter: Triangle(Colors.grey.shade300),
//           ),
//         ),
//         Flexible(
//           child: Container(
//             padding: const EdgeInsets.all(15),
//             margin: const EdgeInsets.only(bottom: 5),
//             decoration: BoxDecoration(
//               color: Colors.grey.shade300,
//               borderRadius: const BorderRadius.only(
//                 topRight: Radius.circular(19),
//                 bottomLeft: Radius.circular(19),
//                 bottomRight: Radius.circular(19),
//               ),
//             ),
//             child: Text(
//               message,
//               style: const TextStyle(color: Colors.black, fontSize: 15),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }

// // Sent message bubble
// class OutBubble extends StatelessWidget {
//   final String message;
//   const OutBubble({Key? key, required this.message}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.end,
//       crossAxisAlignment: CrossAxisAlignment.end,
//       children: [
//         Container(
//           padding: const EdgeInsets.all(15),
//           decoration: BoxDecoration(
//             color: Colors.indigo.shade600,
//             borderRadius: const BorderRadius.only(
//               topLeft: Radius.circular(19),
//               bottomLeft: Radius.circular(19),
//               topRight: Radius.circular(19),
//             ),
//           ),
//           child: Text(
//             message,
//             style: const TextStyle(color: Colors.white, fontSize: 15),
//           ),
//         ),
//         CustomPaint(painter: Triangle(Colors.indigo.shade600)),
//       ],
//     );
//   }
// }

// // Create a custom triangle
// class Triangle extends CustomPainter {
//   final Color backgroundColor;
//   Triangle(this.backgroundColor);

//   @override
//   void paint(Canvas canvas, Size size) {
//     var paint = Paint()..color = backgroundColor;

//     var path = Path();
//     path.lineTo(0, 0);
//     path.lineTo(0, -10);
//     path.lineTo(5, 0);
//     canvas.drawPath(path, paint);
//   }

//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) {
//     return false;
//   }
// }
