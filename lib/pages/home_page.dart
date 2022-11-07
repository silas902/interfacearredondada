import 'package:flutter/material.dart';
import 'package:interfaceflutter/utill/emoticon_face.dart';
import 'package:interfaceflutter/utill/exercise_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.message),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: '',
        ),
      ]),
      backgroundColor: Colors.blue[800],
      body: SafeArea(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              children: [
                // greetings row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        const Text(
                          'oi, Silas!',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          '06 Nov, 2022',
                          style: TextStyle(color: Colors.blue[200],),
                        ),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blue[600],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.all(12),
                      child: const Icon(Icons.notifications, color: Colors.white),
                    ),
                  ],
                ),

                const SizedBox(height: 25),

                // search bar
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blue[600],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      SizedBox(width: 5),
                      Text(
                        'Pesquisar',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 25),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Como você está se sentindo?',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      Icons.more_horiz,
                      color: Colors.white,
                    ),
                  ],
                ),

                const SizedBox(height: 25),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: const [
                        EmoticonFace(
                          emoticonFace: '😢',
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Triste',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    Column(
                      children: const [
                        EmoticonFace(
                          emoticonFace: '😐',
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Normal',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    Column(
                      children: const [
                        EmoticonFace(
                          emoticonFace: '😁',
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Bem',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    Column(
                      children: const [
                        EmoticonFace(
                          emoticonFace: '😍',
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'excelente',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 25),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
                color: Colors.grey[200],
              ),
              padding: const EdgeInsets.all(25),
              child: Center(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Exercicios',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Icon(Icons.more_horiz),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Expanded(
                      child: ListView(
                        children: const [
                          ExerciseTile(
                            icon: Icons.favorite,
                            exerciseName: 'Habilidades de Fala',
                            numberOfExercises: 16,
                            calor: Colors.orange,
                          ), 

                          ExerciseTile(
                            icon: Icons.person,
                            exerciseName: 'Habilidades de Leitura',
                            numberOfExercises: 8,
                            calor: Colors.green,
                          ),

                          ExerciseTile(
                            icon: Icons.star,
                            exerciseName: 'Habilidades de Escrita ',
                            numberOfExercises: 20,
                            calor: Colors.pink,
                          ),
                          
                          
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
