// import 'package:flutter/material.dart';
// import 'package:parkease/dashboard.dart';

// class Sample extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Dashboard',
//       theme: ThemeData(
//         // primarySwatch: Colors.,
//         scaffoldBackgroundColor: Color.fromARGB(255, 243, 238, 238),
//         elevatedButtonTheme: ElevatedButtonThemeData(
//           style: ElevatedButton.styleFrom(
//             backgroundColor: Color.fromARGB(255, 57, 147, 192),
//             foregroundColor: Colors.white,
//             padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
//             textStyle: TextStyle(fontSize: 30),
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(15),
//             ),
//           ),
//         ),
//       ),
//       home: ParkingDashboard(),
//     );
//   }
// }

// class ParkingDashboard extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       appBar: AppBar(
//         title: Text('Parking Dashboard'),
//         actions: <Widget>[
//           IconButton(
//             icon: Icon(
//               Icons.home,
//               color: Colors.white,
//             ),
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => Dashboard()),
//               );
//             },
//           )
//         ],
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => ParkingDetailsPage(
//                       'Sitapaila',
//                       totalSlots: 150,
//                       availableSlots: 50,
//                       chargePerHour: 10.0,
//                     ),
//                   ),
//                 );
//               },
//               child: Text('Sitapaila Parking'),
//             ),
//             SizedBox(height: 30),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => ParkingDetailsPage(
//                       'Swayambhu',
//                       totalSlots: 110,
//                       availableSlots: 30,
//                       chargePerHour: 10.0,
//                     ),
//                   ),
//                 );
//               },
//               child: Text('Swayambhu Parking'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class ParkingDetailsPage extends StatelessWidget {
//   final String parkingType;
//   final int totalSlots;
//   final int availableSlots;
//   final double chargePerHour;

//   ParkingDetailsPage(
//     this.parkingType, {
//     required this.totalSlots,
//     required this.availableSlots,
//     required this.chargePerHour,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('$parkingType Parking Details'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               'Total Slots: $totalSlots',
//               style: TextStyle(
//                 fontFamily: 'Raleway',
//                 fontSize: 25,
//               ),
//             ),
//             Text(
//               'Available Slots: $availableSlots',
//               style: TextStyle(
//                 fontFamily: 'Raleway',
//                 fontSize: 25,
//               ),
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => BookingPage(chargePerHour),
//                   ),
//                 );
//               },
//               child: Text('Book Parking'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class BookingPage extends StatelessWidget {
//   final double chargePerHour;

//   BookingPage(this.chargePerHour);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Booking Page'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               'Charge Per Hour: Rs.${chargePerHour.toStringAsFixed(2)}',
//               style: TextStyle(
//                 fontFamily: 'Raleway',
//                 fontSize: 25,
//               ),
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 // Add your booking confirmation logic here
//                 // This is a placeholder for the booking confirmation action
//                 print('Booking Confirmed');
//               },
//               child: Text('Confirm Booking'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class Sample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Parking Areas'),
      ),
      body: Container(
        color: Color.fromARGB(255, 98, 190, 236),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  // Handle onTap event for Sitapaila
                  print('Sitapaila Parking Selected');
                },
                child: Container(
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 98, 190, 236),
                        spreadRadius: 1,
                        blurRadius: 6,
                      ),
                    ],
                  ),
                  padding: EdgeInsets.all(16),
                  child: Text(
                    'Sitapaila Parking',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  // Handle onTap event for Swayambhu
                  print('Swayambhu Parking Selected');
                },
                child: Container(
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 98, 190, 236),
                        spreadRadius: 1,
                        blurRadius: 6,
                      ),
                    ],
                  ),
                  padding: EdgeInsets.all(16),
                  child: Text(
                    'Swayambhu Parking',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
