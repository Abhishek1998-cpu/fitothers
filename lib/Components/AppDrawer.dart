import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Widget for Creating Drawer Header
Widget createHeader() {
  return DrawerHeader(
    margin: EdgeInsets.zero,
    padding: EdgeInsets.zero,
    decoration: BoxDecoration(
      // gradient: RadialGradient(
      //   colors: [Colors.purple, Colors.lightBlue],
      // ),
      color: Colors.purple,
    ),
    child: Stack(
      children: [
        Positioned(
          bottom: 12.0,
          left: 16.0,
          child: Text(
            "FITOTHERS",
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 25,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

// Widget for creating Drawer Items
Widget createDrawerItem(
    {IconData icon, String text, GestureTapCallback onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(icon),
        Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Text(
            text,
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 10,
              ),
            ),
          ),
        ),
      ],
    ),
    onTap: onTap,
  );
}

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          // DrawerHeader(
          //   child: Text("Hello"),
          // ),
          createHeader(),
          createDrawerItem(
            icon: Icons.settings,
            text: "SETTINGS",
            onTap: () {},
          ),
          createDrawerItem(
            icon: Icons.forward_to_inbox,
            text: "EMAIL US",
            onTap: () {},
          ),
          createDrawerItem(
            icon: Icons.contact_phone,
            text: "CONTACT US",
            onTap: () {},
          ),
          ListTile(
            title: Text("0.0.1"),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
