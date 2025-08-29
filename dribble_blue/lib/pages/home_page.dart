import 'package:flutter/material.dart';
import 'package:untitled/Util/emoticon.dart';
import 'package:untitled/Util/exercise.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home, color: Colors.grey,), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.window, color: Colors.grey,), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.mail, color: Colors.grey,), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person, color: Colors.grey,), label: ''),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hi, Jared!',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            '23 Jan, 2025',
                            style: TextStyle(color: Colors.blue[200]),
                          ),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blue[600],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: EdgeInsets.all(12),
                        child: Icon(Icons.notifications, color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(height: 25),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue[600],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: EdgeInsets.all(12),
                    child: Row(
                      children: [
                        Icon(Icons.search),
                        SizedBox(width: 5),
                        Text('Search', style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),
                  SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'How do you feel?',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(Icons.more_horiz, color: Colors.white),
                    ],
                  ),
                  SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Emoticon(emoticon: '🙁'),
                          SizedBox(height: 8),
                          Text('Bad', style: TextStyle(color: Colors.white)),
                        ],
                      ),

                      Column(
                        children: [
                          Emoticon(emoticon: '🙂'),
                          SizedBox(height: 8),
                          Text('Fine', style: TextStyle(color: Colors.white)),
                        ],
                      ),
                      Column(
                        children: [
                          Emoticon(emoticon: '☺'),
                          SizedBox(height: 8),
                          Text('Well', style: TextStyle(color: Colors.white)),
                        ],
                      ),
                      Column(
                        children: [
                          Emoticon(emoticon: '😁'),
                          SizedBox(height: 8),
                          Text(
                            'Excellent',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(25),
                color: Colors.grey[300],
                child: Center(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Exercises',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Icon(Icons.more_horiz),
                        ],
                      ),
                      SizedBox(height: 20),
                      Expanded(
                        child: ListView(
                          children: [
                            Exercise(
                              icon: Icons.favorite,
                              exerciseName: 'Speaking Skills',
                              numberOfExercises: 16,
                              color: Colors.orange,
                            ),
                            Exercise(
                              icon: Icons.person,
                              exerciseName: 'Reading Skills',
                              numberOfExercises: 8,
                              color: Colors.blue,
                            ),
                            Exercise(
                              icon: Icons.star,
                              exerciseName: 'Writing Skills',
                              numberOfExercises: 20,
                              color: Colors.pink,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
