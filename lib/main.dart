import 'package:assignment2/widgtes/circular_button.dart';
import 'package:assignment2/widgtes/text_field.dart';
import 'package:assignment2/widgtes/voice_button.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: MainScreen()
    );
  }
}
class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: const [
            AppBar(),
            HomePage(
              title: "Top Colleges",
              image: "assets/class.jpg",
              description: "Search through thousands of \naccredited colleges and \nUniversities online. To find the \nRight One for you",),
            HomePage(
                title: "Top Schools",
                image: "assets/grad.jpg",
                description: "Searching for the best Schools,\njust got easier! with our School search filters you can easily\nchoose whats best for you"),
            HomePage(
                title: "Exams",
                description: "Give selected Exams for the\nadmission criteria",
                image: "assets/peep.jpg")
          ],
        ),
      ),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.deepPurple,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey[400],
        type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.bookmark_outlined),
                label: 'Saved',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite_sharp),
                label: 'Saved',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Account',
              )
            ],
    ),
    );
  }
}
class AppBar extends StatefulWidget {
  const AppBar({Key? key}) : super(key: key);
  @override
  State<AppBar> createState() => _AppBarState();
}
class _AppBarState extends State<AppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 50,left: 20,right: 20),
      height: 180,
      width: double.infinity,
      decoration:  const BoxDecoration(
          color: Colors.indigo,
        borderRadius:  BorderRadius.only(
          bottomLeft: Radius.circular(40.00),
          bottomRight: Radius.circular(40.00),
        )
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("Find Your own way",
                      style: TextStyle(
                          fontSize: 20.00,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),
                      textAlign: TextAlign.start,
                    ),
                    Text("Search in 600+ colleges around",
                        style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                CircularButton(
                  icon:Icons.notifications,
                  onPressed: (){},
                ),
              ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const[
              MyTextField(),
              VoiceButton()
            ],
          )
        ],
      ),
    );
  }
}




