import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:uol_open/pages/UpdatesPage.dart';
import 'package:uol_open/pages/MapPage.dart';
import 'package:uol_open/pages/WeatherPage.dart';
import 'package:uol_open/pages/AboutPage.dart';
import 'package:uol_open/pages/LibraryPage.dart';
import 'package:uol_open/pages/SportsPage.dart';
import 'package:uol_open/pages/SUPage.dart';
import 'package:uol_open/pages/AccommodationPage.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/maps': (context) => MapPage(),
        '/about': (context) => AboutPage(),
        '/updates': (context) => UpdatesPage(),
        '/weather': (context) => WeatherPage(),
        '/library': (context) => LibraryPage(),
        '/sports': (context) => SportsPage(),
        '/accommodation': (context) => AccommodationPage(),
        '/union': (context) => SUPage(),
      },
      theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Color(0xFF002147),
          accentColor: Color(0xFF747678),
          fontFamily: 'GoudyModern',
          textTheme: TextTheme(
              headline: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold,),
              title: TextStyle(fontSize: 36.0, fontWeight: FontWeight.w600),
              body1: TextStyle(fontSize: 28.0, fontFamily: 'Helvetica'),
              body2: TextStyle(fontSize: 20.0, fontFamily: 'Helvetica')
          )
      )
  )
  );
}
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('lib/assets/images/uniLogoLandscapeWhite.jpg',
              fit: BoxFit.contain,
              height: 32.0,
            ),
            Container(
              padding: const EdgeInsets.all(8.0), child: Text('Open Days'),
            )
          ],
        ),
      ),
      drawer: Drawer(
          child: ListView(
              children: <Widget>[
                ListTile(
                    title: Text("About UoL"),
                    trailing: Icon(Icons.info_outline),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AboutPage()),
                      );
                    }
                ),
                ListTile(
                    title: Text("Lincoln SU"),
                    trailing: Icon(Icons.info_outline),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SUPage()),
                      );
                    }
                ),
                ListTile(
                    title: Text("UoL Accommodation"),
                    trailing: Icon(Icons.info_outline),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AccommodationPage()),
                      );
                    }
                ),
                ListTile(
                  title: Text("UoL Campus Map"),
                  trailing: Icon(Icons.map),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MapPage()),
                    );
                  },
                ),
                ListTile(
                    title: Text("UoL Library"),
                    trailing: Icon(Icons.book),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LibraryPage()),
                      );
                    }
                ),
                ListTile(
                    title: Text("UoL Sports"),
                    trailing: Icon(Icons.directions_run),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SportsPage()),
                      );
                    }
                ),
                ListTile(
                  title: Text("UoL Updates"),
                  trailing: Icon(Icons.alternate_email),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => UpdatesPage()),
                    );
                  },
                ),
                ListTile(
                  title: Text("Weather"),
                  trailing: Icon(Icons.wb_sunny),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => WeatherPage()),
                    );
                  },
                )
              ]
          )
      ),
      body: new Container(
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage("lib/assets/images/inb.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          padding: const EdgeInsets.all(8.0),
          children: <Widget>[
            Container(
              height: 65,
              color: Color(0xFF047E8B),
              child: const Center(child: Text('Welcome Talk - Lincoln in 2020. 10am, INB Lecture Hall.'))
            ),
            Divider(),
            Container(
                height: 65,
                color: Color(0xFF047E8B),
                child: const Center(child: Text('Welcome Talk - Lincoln in 2020. 12pm, LPAC Auditorium.'))
            ),
            Divider(),
            Container(
                height: 65,
                color: Color(0xFF002147),
                child: const Center(child: Text('Accommodation at Lincoln. 11am and 2pm, INB Lecture Hall.'))
            ),
            Divider(),
            Container(
                height: 65,
                color: Color(0xFF047E8B),
                child: const Center(child: Text('Admissions & UCAS. 12pm, Co-Op Lecture Hall, Minerva.'))
            ),
            Divider(),
            Container(
                height: 65,
                color: Color(0xFF002147),
                child: const Center(child: Text('Student Finance, Fees, Funding. 11am, SLB Lecture Hall.'))
            ),
            Divider(),
            Container(
                height: 65,
                color: Color(0xFF002147),
                child: const Center(child: Text('Student Finance, Fees, Funding. 1pm, INB Lecture Hall.'))
            ),
            Divider(),
            Container(
                height: 65,
                color: Color(0xFF047E8B),
                child: const Center(child: Text('Student Life at Lincoln. 10am, NDH1010 Lecture Hall.'))
            ),
            Divider(),
            Container(
                height: 65,
                color: Color(0xFF047E8B),
                child: const Center(child: Text('Student Life at Lincoln. 1pm, Co-Op Lecture Hall, Minerva.'))
            ),
            Divider(),
            Container(
                height: 65,
                color: Color(0xFF002147),
                child: const Center(child: Text('Careers and Employability. 11am, Cargill Lecture Hall, Minerva.'))
            ),
            Divider(),
            Container(
                height: 65,
                color: Color(0xFF047E8B),
                child: const Center(child: Text('Lincoln Student Union. 1pm, Cargill Lecture Hall, Minerva.'))
            ),
            Divider(),
            Container(
                height: 65,
                color: Color(0xFF002147),
                child: const Center(child: Text('Personal Statement Help. 11am, 12pm, 1pm, Junxion Building Room 0003.'))
            )
          ]
        ),
      ),
    );
  }
}
