import 'package:assignment_2/data/model/program_model.dart';
import 'package:assignment_2/pages/widgets/misc_box.dart';
import 'package:assignment_2/pages/widgets/program_box.dart';
import 'package:flutter/material.dart';
import 'package:stylish_bottom_bar/model/bar_items.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController scrollController = ScrollController();
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
      bottomNavigationBar: StylishBottomBar(
        hasNotch: true,
        option: AnimatedBarOptions(
          iconStyle: IconStyle.Default,
        ),
        currentIndex: selected,
        items: [
          BottomBarItem(
              icon: const Icon(
                Icons.home,
              ),
              selectedColor: Colors.blue,
              title: const Text('Home')),
          BottomBarItem(
              icon: const ImageIcon(AssetImage('assets/book.png')),
              selectedColor: Colors.blue,
              title: const Text('Learn')),
          BottomBarItem(
              icon: const ImageIcon(AssetImage('assets/hub_icon.png')),
              selectedColor: Colors.blue,
              title: const Text('Hub')),
          BottomBarItem(
              icon: const ImageIcon(AssetImage('assets/chat_bubble.png')),
              selectedColor: Colors.blue,
              title: const Text('Chat')),
          BottomBarItem(
              icon: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(255, 155, 210, 255),
                ),
                child: Image.asset('assets/Profile.png'),
              ),
              selectedColor: Colors.blue,
              title: const Text('Profile')),
        ],
        onTap: (value) {
          setState(() {
            selected = value;
          });
        },
      ),
    );
  }

  SingleChildScrollView _body() {
    return SingleChildScrollView(
      controller: scrollController,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 40,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 14.0),
                child: ImageIcon(AssetImage('assets/menu_icon.png')),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: ImageIcon(
                      AssetImage('assets/conversation.png'),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 18.0),
                    child: ImageIcon(
                      AssetImage('assets/Notification.png'),
                    ),
                  )
                ],
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.only(left: 16.0, right: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Hello, Priya!',
                  style: TextStyle(
                      fontFamily: 'Lora',
                      fontWeight: FontWeight.w300,
                      fontSize: 20),
                ),
                const Text(
                  'What do you wanna learn today?',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 40, 0, 40),
                  child: Wrap(
                    spacing: 16.0,
                    runSpacing: 16.0,
                    alignment: WrapAlignment.start,
                    children: [
                      MiscBoxes(
                          text: 'Program', icon: Icons.book, onPressed: () {}),
                      MiscBoxes(
                          text: 'Get help', icon: Icons.book, onPressed: () {}),
                      MiscBoxes(
                          text: 'Learn', icon: Icons.book, onPressed: () {}),
                      MiscBoxes(
                          text: 'DD Tracker',
                          icon: Icons.book,
                          onPressed: () {}),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 16.0, right: 16),
            decoration: const BoxDecoration(color: Colors.white),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Programs for you',
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Lora',
                          fontWeight: FontWeight.w800),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            const Text('View all'),
                            Transform.scale(
                                scale: 0.7,
                                child: const Icon(Icons.arrow_forward))
                          ],
                        )),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ProgramBox(
                          programModel: ProgramModel(
                              image: 'assets/image_1.png',
                              tag: 'LIFESTYLE',
                            others: '16 Lessons',
                              title:
                                  'A complete guide for your new born baby')),
                      ProgramBox(
                          programModel: ProgramModel(
                              image: 'assets/image_1.png',
                              tag: 'Working Parents',
                              others: '16 Lessons',
                              title: 'Understanding of human behaviour')),
                      ProgramBox(
                          programModel: ProgramModel(
                              image: 'assets/image_1.png',
                              tag: 'Working Parents',
                            others: '16 Lessons',
                              title: 'Understanding of human behaviour')),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Events and experiences',
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Lora',
                          fontWeight: FontWeight.w800),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            const Text('View all'),
                            Transform.scale(
                                scale: 0.7,
                                child: const Icon(Icons.arrow_forward))
                          ],
                        )),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ProgramBox(
                          isEvent: true,
                          programModel: ProgramModel(
                              image: 'assets/image_3.png',
                              tag: 'LIFESTYLE',
                           others: '13 Feb, sunday',
                              title:
                                  'A complete guide for your new born baby')),
                      ProgramBox(
                          isEvent: true,
                          programModel: ProgramModel(
                              image: 'assets/image_3.png',
                              tag: 'Working Parents',
                           others: '13 Feb, sunday',
                              title: 'Understanding of human behaviour')),
                      ProgramBox(
                          isEvent: true,
                          programModel: ProgramModel(
                              image: 'assets/image_3.png',
                              tag: 'Working Parents',
                               others: '13 Feb, sunday',
                              title: 'Understanding of human behaviour')),
                    ],
                  ),
                ),

// Lessons for you
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Lessons for you',
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Lora',
                          fontWeight: FontWeight.w800),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            const Text('View all'),
                            Transform.scale(
                                scale: 0.7,
                                child: const Icon(Icons.arrow_forward))
                          ],
                        )),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ProgramBox(
                          isLocked: true,
                          programModel: ProgramModel(
                              image: 'assets/image_3.png',
                              tag: 'LIFESTYLE',
                             others: '3 min',
                              title:
                                  'A complete guide for your new born baby')),
                      ProgramBox(
                          isLocked: true,
                          programModel: ProgramModel(
                              image: 'assets/image_3.png',
                              tag: 'Working Parents',
                             others: '3 min',
                              title: 'Understanding of human behaviour')),
                      ProgramBox(
                          isLocked: true,
                          programModel: ProgramModel(
                              image: 'assets/image_3.png',
                              tag: 'Working Parents',
                             others: '3 min',
                              title: 'Understanding of human behaviour')),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
