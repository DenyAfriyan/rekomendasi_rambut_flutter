import 'package:flutter/material.dart';
import 'package:rekomendasi_cukur/utils/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        backgroundColor: creamColor,
        indicatorColor: Colors.amber[800],
        selectedIndex: selectedIndex,
        onDestinationSelected: (int index) {
          if (index != selectedIndex && index == 0) {
            Navigator.pop(context);
          } else if (index != selectedIndex && index == 1) {
            Navigator.pushNamed(context, "/stylepria");
          } else if (index != selectedIndex && index == 2) {
            Navigator.pushNamed(context, "/stylewanita");
          }
        },
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.man),
            label: 'Style Pria',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.school),
            icon: Icon(Icons.woman),
            label: 'Style Wanita',
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [primaryColor, secondaryColor])),
          ),
          SafeArea(
            child: Container(
              margin: const EdgeInsets.all(25),
              child: Column(
                children: <Widget>[
                  Flexible(
                    child: Container(
                      height: double.infinity,
                      alignment: Alignment.center, // This is needed
                      child: Image.asset(
                        "assets/images/cover.png",
                        fit: BoxFit.contain,
                        width: 300,
                      ),
                    ),
                  ),
                  Flexible(
                      child: Column(
                    children: [
                      const SizedBox(
                        height: 80,
                        child: Text(
                          "Tidak perlu bingung mencari model rambut yang anda inginkan, aplikasi kami akan memudahkan anda dalam menentukan preferensi gaya rambut yang mungkin cocok untuk anda.",
                          maxLines: 5,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Flexible(
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: OutlinedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, "/decision");
                              },
                              style: OutlinedButton.styleFrom(
                                side: const BorderSide(
                                    width: 1.0, color: Colors.white),
                              ),
                              child: const Text(
                                "Mulai",
                                style: TextStyle(color: Colors.white),
                              )),
                        ),
                      )
                    ],
                  )),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
