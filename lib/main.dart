import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Student_Profile_App',
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text('Student Profile', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        ),
        
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(50.0),

            child: Column(
              children: [
                Card(
                  elevation: 30,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 60,
                          backgroundImage: AssetImage('assets/images/me.jpg'),
                        ), 

                        const SizedBox(height: 12),

                        const Text('Huit, James Dominic L.', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                        const Text('Minic / JamJam', style: TextStyle(fontSize: 15, color: Colors.grey, fontStyle: FontStyle.italic)),
                        
                        const SizedBox(height: 5),
                        const Text('Motto: Why fall in love when you can fall asleep.', style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500, color: Colors.deepOrange),)

                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 30),
                const Text(
                  'MY IMAGE GALLERY',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTij6W5TQ2EH7whuftQHqqSjg6ft8UgStYW8qBsgC6kLO8A77o_Vt2LbK2o&s=10'),                        
                      ),
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkjwZBuWkpUPuaMSkGCo2jl8HBUFPmooRFJouRnsKODA&s=10'),                        
                      ),
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5HcWgl8KkMffFj6hEEm8-mYxVZ4-JXUb2j-KrvrJ0xw&s=10'),
                      ),
                      
                    ],
                  ),

                    )
                ),



                const SizedBox(height: 30),

                const Text(
                  'PERONAL INFORMATION',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                const SizedBox(height: 10),
                Card(
                  elevation: 5,
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.cake, color: Colors.blueAccent),
                        title: Text('Age'),
                        subtitle: Text('20 years old'),
                      ),
                      ListTile(
                        leading: Icon(Icons.calendar_month, color: Colors.blueAccent),
                        title: Text('Birthday'),
                        subtitle: Text('July 29, 2005'),
                      ),
                      ListTile(
                        leading: Icon(Icons.house, color: Colors.blueAccent),
                        title: Text('Address'),
                        subtitle: Text('Saint Joseph Village 7 Cabuyao, Laguna'),
                      ),
                      ListTile(
                        leading: Icon(Icons.games, color: Colors.blueAccent),
                        title: Text('Hobby'),
                        subtitle: Text('Singing, Listening to music, Watching movies, Sleeping'),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 25),

                const Text(
                  'ACADEMIC INFORMATION',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                const SizedBox(height: 10),
                Card(
                  elevation: 5,
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.school_outlined, color: Colors.blueAccent),
                        title: Text('Course/Program'),
                        subtitle: Text('Bachelor of Science in Information Technology'),
                      ),
                      ListTile(
                        leading: Icon(Icons.timeline_rounded, color: Colors.blueAccent),
                        title: Text('Year Level'),
                        subtitle: Text('3rd Year'),
                      ),
                      ListTile(
                        leading: Icon(Icons.groups_outlined, color: Colors.blueAccent),
                        title: Text('Section'),
                        subtitle: Text('IT-B'),
                      ),
                      ListTile(
                        leading: Icon(Icons.subject, color: Colors.blueAccent),
                        title: Text('Favorite Subject'),
                        subtitle: Text('1. ITP107 \n2. SCIENCE, TECHNOLOGY & SOCIETY \n3. HUMAN-COMPUTER INTERACTION'),
                      ),
                      ListTile(
                        leading: Icon(Icons.language, color: Colors.blueAccent),
                        title: Text('Programming Language'),
                        subtitle: Text('1. Java \n2. Javascript \n3. Php \n4. Dart \n5. Kotlin '),
                      ),
                      ListTile(
                        leading: Icon(Icons.handyman_sharp, color: Colors.blueAccent),
                        title: Text('Technical Skill'),
                        subtitle: Text('1. Software Development \n2. Database Management Systems \n3. Nteworking Infrastructure \n4. Productivity & Presentation Tools'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ),
        )
      )
    );
  }
}