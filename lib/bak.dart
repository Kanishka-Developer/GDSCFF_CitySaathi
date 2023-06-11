import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Color primaryColor;
  MaterialColor primarySwatch;

  MyApp({Key? key})
      : primaryColor = const Color.fromRGBO(249, 168, 37, 1),
        primarySwatch = Colors.amber, // initialize primarySwatch to a default value
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
      debugShowCheckedModeBanner: false, // set debugShowCheckedModeBanner to false
      title: 'CitySaathi',
      theme: ThemeData(
        primarySwatch: primarySwatch, // use primarySwatch instead of primaryColor
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
                  // open the next screen called menu
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Menu()),
                  );
                },
                child: Text('Next', style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'GilroyFont',
                )
                ),
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
            // "Enter Details" heading and spacer
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
              padding: const EdgeInsets.fromLTRB(20, 30, 20, 10),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.amber, // set background color to amber
                  onPrimary: Colors.black, // set text color to black
                  padding: const EdgeInsets.all(16), // set desired padding
                ),
                onPressed: () {
                  // Add the desired functionality for the button
                  // open the next screen called menu
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Menu()),
                  );
                },
                child: Text('Next', style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'GilroyFont',
                )
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
