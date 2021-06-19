import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './Components/AppDrawer.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // We are using DefaultTabController
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Fitothers",
            style: GoogleFonts.poppins(),
          ),
          // leading: Icon(Icons.menu),
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: IconButton(
                icon: Icon(Icons.search),
                onPressed: () {},
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: IconButton(
                icon: Icon(Icons.more_vert),
                onPressed: () {},
              ),
            ),
          ],
          bottom: TabBar(
            isScrollable: true,
            // controller: ,
            tabs: [
              Tab(
                // text: "HOME",
                child: Text(
                  "HOME",
                  style: GoogleFonts.poppins(),
                ),
                // icon: Icon(Icons.search),
              ),
              Tab(
                child: Text(
                  "AYURVEDA",
                  style: GoogleFonts.poppins(),
                ),
              ),
              Tab(
                child: Text(
                  "FITNESS",
                  style: GoogleFonts.poppins(),
                ),
              ),
              Tab(
                child: Text(
                  "HEALTH",
                  style: GoogleFonts.poppins(),
                ),
              ),
              Tab(
                child: Text(
                  "LIFESTYLE",
                  style: GoogleFonts.poppins(),
                ),
              ),
              Tab(
                child: Text(
                  "NEWS",
                  style: GoogleFonts.poppins(),
                ),
              ),
              Tab(
                child: Text(
                  "GADGETS",
                  style: GoogleFonts.poppins(),
                ),
              ),
            ],
          ),
        ),
        drawer: AppDrawer(),
        body: TabBarView(
          children: [
            Text("HOME1"),
            Text("HOME2"),
            Text("HOME3"),
            Text("HOME4"),
            Text("HOME5"),
            Text("HOME6"),
            Text("HOME7"),
          ],
        ),
      ),
    );
  }
}

// Implementing Tab Bar Controller
// IMplementing Drawer
