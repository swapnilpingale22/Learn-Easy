import 'package:flutter/material.dart';
import 'package:learn_easy/custom_widgets/custom_button.dart';
import 'package:learn_easy/custom_widgets/custom_program_banner.dart';
import 'package:learn_easy/custom_widgets/custom_event_banner.dart';
import 'package:learn_easy/custom_widgets/custom_row.dart';
import 'package:learn_easy/custom_widgets/custom_tile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/images/Menu.png',
          width: 28,
        ),
        actions: [
          Image.asset(
            'assets/images/bookmaks.png',
            width: 28,
          ),
          const SizedBox(width: 10),
          Image.asset(
            'assets/images/Notification.png',
            width: 28,
          ),
          const SizedBox(width: 10)
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //header text
              const Text(
                "Hello, Swapnil!",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "What do you wanna learn today?",
                style: TextStyle(
                  color: Colors.black54,
                  // fontSize: 12,
                ),
              ),
              const SizedBox(height: 30),
              //grid tiles
              GridView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 60,
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                children: const [
                  CustomTile(
                    title: "Programs",
                    asset: "assets/images/Programs.png",
                  ),
                  CustomTile(
                    title: "Get Help",
                    asset: "assets/images/Help.png",
                  ),
                  CustomTile(
                    title: "Learn",
                    asset: "assets/images/Learn.png",
                  ),
                  CustomTile(
                    title: "DD Tracker",
                    asset: "assets/images/Tracker.png",
                  ),
                ],
              ),
              //title 01
              const CustomRow(title: "Programs for you"),
              //horizontal tiles 01
              SizedBox(
                height: 280,
                child: GridView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 242,
                    crossAxisCount: 1,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                  ),
                  children: const [
                    CustomProgramBanner(
                      asset: "assets/images/1.jpg",
                      title: "A complete guide for your new born baby",
                      category: "Lifestyle",
                      lessons: "16",
                    ),
                    CustomProgramBanner(
                      asset: "assets/images/2.jpg",
                      title: "Understanding of human behaviour",
                      category: "Working Parents",
                      lessons: "12",
                    ),
                  ],
                ),
              ),
              //title 02
              const CustomRow(title: "Events and experiences"),
              //horizontal tiles 02
              SizedBox(
                height: 280,
                child: GridView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 242,
                    crossAxisCount: 1,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                  ),
                  children: [
                    CustomEventBanner(
                      asset: "assets/images/6.jpg",
                      title: "Understanding of human behaviour",
                      category: "Babycare",
                      time: "13 Feb, Sunday",
                      widget: SizedBox(
                        height: 25,
                        child: CustomButton(
                          title: "Book",
                          onTap: () {},
                        ),
                      ),
                    ),
                    CustomEventBanner(
                      asset: "assets/images/4.jpg",
                      title: "Understanding of human behaviour",
                      category: "Babycare",
                      time: "13 Feb, Sunday",
                      widget: SizedBox(
                        height: 25,
                        child: CustomButton(
                          title: "Book",
                          onTap: () {},
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //title 03
              const CustomRow(title: "Lessons for you"),
              //horizontal tiles 03
              SizedBox(
                height: 280,
                child: GridView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 242,
                    crossAxisCount: 1,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                  ),
                  children: [
                    CustomEventBanner(
                      asset: "assets/images/5.jpg",
                      title: "Understanding of human behaviour",
                      category: "Babycare",
                      time: "3 min",
                      widget: Image.asset(
                        'assets/images/lock.png',
                        height: 18,
                      ),
                    ),
                    CustomEventBanner(
                      asset: "assets/images/3.jpg",
                      title: "Understanding of human behaviour",
                      category: "Babycare",
                      time: "1 min",
                      widget: Image.asset(
                        'assets/images/lock.png',
                        height: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
