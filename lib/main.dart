import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:firebase_core/firebase_core.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCG369g231sh-8GvT_zHLnn2CucenCJDK8",
            appId: "1:849321897640:web:b8d7083428c428c0c25c9d",
            messagingSenderId: "849321897640",
            projectId: "kaffeine-prototypes"));
  } else {
    Firebase.initializeApp();
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Color primaryColor;
  MaterialColor primarySwatch;

  MyApp({Key? key})
      : primaryColor = const Color.fromRGBO(249, 168, 37, 1),
        primarySwatch =
            Colors.amber, // initialize primarySwatch to a default value
        super(key: key) {
    primarySwatch = MaterialColor(
      primaryColor.value,
      <int, Color>{
        50: primaryColor,
        100: primaryColor,
        200: primaryColor,
        300: primaryColor,
        400: primaryColor,
        500: primaryColor,
        600: primaryColor,
        700: primaryColor,
        800: primaryColor,
        900: primaryColor,
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:
          false, // set debugShowCheckedModeBanner to false
      title: 'CitySaathi',
      theme: ThemeData(
        primarySwatch:
            primarySwatch, // use primarySwatch instead of primaryColor
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'CitySaathi',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w900,
            fontFamily: 'GilroyFont',
            fontSize: 30,
          ),
        ),
        backgroundColor: Colors.yellow[800],
        centerTitle: true,
      ),
      body: Container(
        color: Colors.grey[800],
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 40, 20, 20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/images/citysaathi.png',
                    width: 300,
                    height: 200,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            // "Enter Details" heading and spacer
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 15),
                child: Text(
                  'Enter Details',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                    fontFamily: 'GilroyFont',
                    fontSize: 30,
                  ),
                ),
              ),
            ),
            Center(
              // ask user to enter their name
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                child: TextField(
                  decoration: InputDecoration(
                    // set border color to white
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    border: OutlineInputBorder(),
                    labelText: 'Enter your name',
                    // set color of the textbox
                    labelStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontFamily: 'GilroyFont',
                    ),
                  ),
                ),
              ),
            ),
            Center(
              // ask user to enter their email
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                child: TextField(
                  decoration: InputDecoration(
                    // set border color to white
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    border: OutlineInputBorder(),
                    labelText: 'Enter your email',
                    // set color of the textbox
                    labelStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontFamily: 'GilroyFont',
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 30, 20, 10),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.amber, // set background color to amber
                  onPrimary: Colors.black, // set text color to black
                  padding: const EdgeInsets.all(16), // set desired padding
                ),
                onPressed: () {
                  // Add the desired functionality for the button
                  // open the next screen called Menu
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Menu()),
                  );
                },
                child: Text('Next',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'GilroyFont',
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'CitySaathi',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w900,
            fontFamily: 'GilroyFont',
            fontSize: 30,
          ),
        ),
        backgroundColor: Colors.yellow[800],
        centerTitle: true,
      ),
      body: Container(
        color: Colors.grey[800],
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 40, 20, 20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/images/citysaathi.png',
                    width: 300,
                    height: 200,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            // "Menu" heading and spacer
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 15),
                child: Text(
                  'Menu',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                    fontFamily: 'GilroyFont',
                    fontSize: 30,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
              child: GestureDetector(
                onTap: () {
                  // Add the desired functionality for when the card is clicked
                  // toast hello world
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Travel()),
                  );
                },
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  elevation: 4,
                  // set card width

                  // set card height
                  child: Container(
                    height: 100,
                    width: 300,
                    alignment: Alignment.center,
                    child: ListTile(
                      leading: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(0),
                          child: Icon(
                            Icons.explore,
                            size: 50,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      title: Text('Travel',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'GilroyFont',
                          )),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        size: 30,
                        color: Colors.black,
                      ),
                      onTap: () {
                        // Add the desired functionality for Tile 1
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Travel()),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
              child: GestureDetector(
                onTap: () {
                  // Add the desired functionality for when the card is clicked
                  // toast hello world
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Accommodation()),
                  );
                },
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 4,
                // set card width

                // set card height
                child: Container(
                  height: 100,
                  width: 300,
                  alignment: Alignment.center,
                  child: ListTile(
                    leading: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(0),
                        child: Icon(
                          Icons.hotel,
                          size: 50,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    title: Text('Accommodation',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'GilroyFont',
                        )),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 30,
                      color: Colors.black,
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Accommodation()),
                        );
                    },
                  ),
                ),
              ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
              child: GestureDetector(
                onTap: () {
                  // Add the desired functionality for when the card is clicked
                  // toast hello world
                  showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('Food'),
                              content: Text(
                                  'This feature is coming soon to fulfill all your dine-in, takeout and delivery needs!'),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text('Close'),
                                ),
                              ],
                            );
                          });
                },
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 4,
                // set card width

                // set card height
                child: Container(
                  height: 100,
                  width: 300,
                  alignment: Alignment.center,
                  child: ListTile(
                    leading: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(0),
                        child: Icon(
                          Icons.restaurant,
                          size: 50,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    title: Text('Food',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'GilroyFont',
                        )),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 30,
                      color: Colors.black,
                    ),
                    onTap: () {
                      // Add your functionality for appointments and reminders here
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('Food'),
                              content: Text(
                                  'This feature is coming soon to fulfill all your dine-in, takeout and delivery needs!'),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text('Close'),
                                ),
                              ],
                            );
                          });
                    },
                  ),
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

class Travel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'CitySaathi',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w900,
              fontFamily: 'GilroyFont',
              fontSize: 30,
            ),
          ),
          backgroundColor: Colors.yellow[800],
          centerTitle: true,
        ),
        body: Container(
            color: Colors.grey[800],
            child: Column(children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 40, 20, 20),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Text(
                      'Travel',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontFamily: 'GilroyFont',
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),
              ),

              // "Menu" heading and spacer
              Center(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 40, 20, 20),
                  child: Text(
                    '(there would be a neat little map here to pick destinations if we could afford the Google Maps API)',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontFamily: 'GilroyFont',
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ])));
  }
}

class Accommodation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'CitySaathi',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w900,
              fontFamily: 'GilroyFont',
              fontSize: 30,
            ),
          ),
          backgroundColor: Colors.yellow[800],
          centerTitle: true,
        ),
        body: Container(
            color: Colors.grey[800],
            child: Column(children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 40, 20, 20),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Text(
                      'Accommodation',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontFamily: 'GilroyFont',
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),
              ),

              // "Menu" heading and spacer
              Center(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 40, 20, 20),
                  child: Text(
                    '(there would be a neat little map here to show all the locations if we could afford the Google Maps API)',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontFamily: 'GilroyFont',
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
          ]
        )
      )
    );
  }
}
