import 'package:flutter/material.dart';
import 'package:password_manager_app/constants.dart';
import 'package:password_manager_app/screens/notification_screen.dart';
import 'package:password_manager_app/screens/tools_screen.dart';
import 'package:password_manager_app/screens/vault_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  PageController pageController = PageController(
    initialPage: 0,
  );

  final List<String> categories = [
    'Vault',
    'Tools',
    'Notifications',
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
        ),
      ),
      body: Column(
        children: [
          _pageSelector(),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: secondaryColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                child: PageView(
                  controller: pageController,
                  onPageChanged: (page) {
                    setState(() {
                      currentIndex = page;
                    });
                  },
                  children: <Widget>[
                    const VaultScreen(),
                    ToolsScreen(),
                    const NotificationScreen(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _pageSelector() {
    return SizedBox(
      height: 90,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              pageController.animateToPage(index,
                  duration: Duration(milliseconds: 300), curve: Curves.easeIn);
              setState(() {
                currentIndex = index;
              });
            },
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 30.0, horizontal: 20),
              child: Text(
                categories[index],
                style: TextStyle(
                  color: index == currentIndex ? Colors.white : Colors.white30,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
