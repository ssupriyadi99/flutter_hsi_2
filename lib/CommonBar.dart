import 'package:flutter/material.dart';

class CommonBar {
  AppBar headerAppBar() {
    return AppBar(
      backgroundColor: Color.fromARGB(255, 2, 71, 126),
      leading: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Image(
          image: AssetImage("assets/images/logo-hsi.png"),
        ),
      ),
      title: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "EDU HSI",
              style: TextStyle(
                color: Colors.white,
                fontFamily: "Plus Jakarta Sans",
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            Text(
              "v.2402-1601",
              style: TextStyle(
                color: Colors.white,
                fontFamily: "Plus Jakarta Sans",
                fontSize: 14,
              ),
              textAlign: TextAlign.end,
            ),
          ],
        ),
      ),
    );
  }

  AppBar profileAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      title: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Profil",
              style: TextStyle(
                fontFamily: "Plus Jakarta Sans",
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Text(
              "v.2402-1601",
              style: TextStyle(
                fontFamily: "Plus Jakarta Sans",
                fontSize: 14,
              ),
              textAlign: TextAlign.end,
            ),
          ],
        ),
      ),
    );
  }

  BottomNavigationBar bottomNav() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedFontSize: 10,
      unselectedFontSize: 10,
      iconSize: 18,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: Colors.black,
          ),
          label: 'Beranda',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.school,
            color: Colors.black,
          ),
          label: 'Akademi',
        ),
        BottomNavigationBarItem(
          // icon: Icon(
          //   Icons.edit_document,
          //   color: Colors.black,
          // ),
          icon: ImageIcon(AssetImage("assets/icons/document.png")),
          label: 'Reguler',
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(AssetImage("assets/icons/profile_13864389.png")),
          label: 'Profil',
        ),
      ],
    );
  }
}
