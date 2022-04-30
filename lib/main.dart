import 'package:flutter/material.dart';

void main() {
  runApp(const ProfileApp());
}

class ProfileApp extends StatelessWidget {
  const ProfileApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: FractionallySizedBox(
                heightFactor: 0.5,
                child: Image.asset(
                  "assets/images/bg.jpeg",
                  fit: BoxFit.cover,
                )
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: FractionallySizedBox(
                heightFactor: 0.5,
                child: Container(
                  color: Colors.black87,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Hi, I'm Johnny",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontFamily: "Maplestory",
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      const Text(
                        "I like bask in the sun with nap.",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: "Maplestory",
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const Divider(
                        color: Colors.grey,
                        height: 100,
                        indent: 50,
                        endIndent: 50,
                        thickness: 0.5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ClipOval(
                            child: SizedBox(
                              width: 50,
                              height: 50,
                              child: IconButton(
                                color: Colors.white,
                                iconSize: 35,
                                icon: const Icon(Icons.email),
                                onPressed: () {}
                              ),
                            ),
                          ),
                          ClipOval(
                            child: SizedBox(
                              width: 50,
                              height: 50,
                              child: IconButton(
                                color: Colors.white, 
                                iconSize: 35,
                                icon: const Icon(Icons.account_circle),
                                onPressed: () {},
                              ),
                            ),
                          ),
                          ClipOval(
                            child: SizedBox(
                              width: 50,
                              height: 50,
                              child: IconButton(
                                color: Colors.white,
                                iconSize: 35,
                                icon: const Icon(Icons.rss_feed_sharp),
                                onPressed: () {},
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ),
            ),
            Center(
              child: ClipOval(
                child: SizedBox(
                  width: 150,
                  height: 150,
                  child: ClipOval(
                    child: SizedBox(
                      child: AnimatedCrossFade(
                          firstChild: Image.asset(
                            "assets/images/prof_1.jpg",
                          ),
                          secondChild: Image.asset(
                              "assets/images/prof_2.jpeg",
                          ),
                          crossFadeState: CrossFadeState.showFirst,
                          duration: const Duration(
                            seconds: 1
                          ),
                      ),
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
