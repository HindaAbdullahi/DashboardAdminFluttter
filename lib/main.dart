import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
import 'package:dashboard1/controllers/controller.dart';
import 'package:dashboard1/screens/dash_board_screen.dart';
import 'package:dashboard1/screens/screen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Apartment dashboard',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => MyHomePage(),
        'home': (context) => DashBoardScreen(),
        'login_screen': (context) => LoginPage(),
        //apartments routes
        //  'apartments': (context) => ApartmentList(),
        // 'add_apartment': (context) => AddApartmentScreen(),
        // 'update_apartment': (context) => UpdateApartmentScreen(),
        // // guarantor routes
        // 'guarantors': (context) => GuarantorList(),
        // 'add_guarantor': (context) => AddGuarantorScreen(),
        // 'update_guarantor': (context) => UpdateGuarantorScreen(),
        // // floor routes
        // 'floors': (context) => FloorListScreen(),
        // 'add_floor': (context) => AddFloorScreen(),
        // 'update_floor': (context) => UpdateApartmentScreen(),

      },
      theme: ThemeData(

         appBarTheme: AppBarTheme(
          color: Colors.white, foregroundColor: Colors.black, elevation: 0),
          primarySwatch: Colors.blueGrey,
          iconTheme: IconThemeData(color: Colors.black)),
    
      );
    
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return WelcomeScreen();
  }
}
