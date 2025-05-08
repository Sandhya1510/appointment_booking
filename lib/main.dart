// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MaterialApp(home: BookingPage(), debugShowCheckedModeBanner: false,));
// }
//
// class BookingPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[100],
//       appBar: AppBar(
//         backgroundColor: Color(0xFF01474D),
//         title: Text(
//           'Appointment Booking',
//           style: TextStyle(color: Colors.white),
//         ),
//         centerTitle: true,
//       ),
//       body: SingleChildScrollView(
//         padding: EdgeInsets.all(16),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // Governorate & Wilayat
//
//             // Branch & DateTime Card
//             Container(
//               padding: EdgeInsets.all(12),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(12),
//               ),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Padding(
//                     padding: EdgeInsets.only(right: 56.0), // space at right end
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               'Governorate:',
//                               style: TextStyle(fontWeight: FontWeight.bold),
//                             ),
//                             SizedBox(height: 4),
//                             Text(
//                               'Governorate',
//                               style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 color: Color(0xFF01474D),
//                               ),
//                             ),
//                           ],
//                         ),
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               'Wilayat:',
//                               style: TextStyle(fontWeight: FontWeight.bold),
//                             ),
//                             SizedBox(height: 4),
//                             Text(
//                               'Wilayat',
//                               style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 color: Color(0xFF01474D),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//
//                   Divider(height: 20),
//                   Text(
//                     "Branch Details",
//                     style: TextStyle(fontWeight: FontWeight.bold),
//                   ),
//                   SizedBox(height: 6),
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text("Branch Name 1"),
//                       Text("28W9+J7X, Jalan Bani Buali,"),
//                       Text("Oman Jaalan Bani Bu Ali OM, 416,"),
//                       Text("Oman"),
//                     ],
//                   ),
//
//                   SizedBox(height: 12),
//                 ],
//               ),
//             ),
//             SizedBox(height: 16),
//             Text(
//               "Selected date & Time",
//               style: TextStyle(fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 10),
//             Container(
//               padding: EdgeInsets.all(20),
//               decoration: BoxDecoration(
//                 color: Colors.red,
//                 borderRadius: BorderRadius.circular(12),
//               ),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Row(
//                     children: [
//                       Icon(Icons.calendar_month, color: Colors.white),
//                       SizedBox(width: 10),
//                       Text(
//                         "07 Dec 2023",
//                         style: TextStyle(color: Colors.white),
//                       ),
//                     ],
//                   ),
//                   SizedBox(height: 8),
//                   Row(
//                     children: [
//                       Icon(Icons.access_time, color: Colors.white),
//                       SizedBox(width: 10),
//                       Text("10:30 AM", style: TextStyle(color: Colors.white)),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(height: 16),
//             // Account Number
//             buildDropdownField("Account Number", ["Account 1", "Account 2"]),
//             SizedBox(height: 12),
//
//             // Type of Visit
//             buildDropdownField("Type of Visit *", ["Visit A", "Visit B"]),
//             SizedBox(height: 12),
//
//             // Full Name
//             buildTextField("Full Name *"),
//             SizedBox(height: 12),
//
//             // GSM
//             buildTextField("GSM *"),
//             SizedBox(height: 12),
//
//             // E-mail
//             buildTextField("E-mail"),
//             SizedBox(height: 12),
//
//             // Preferred Notification
//             Text(
//               "Select Preferred Notification *",
//               style: TextStyle(fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 6),
//             Row(
//               children: [
//                 Checkbox(value: true, onChanged: (v) {}),
//                 Text("WhatsApp"),
//                 SizedBox(width: 8),
//                 Checkbox(value: false, onChanged: (v) {}),
//                 Text("SMS"),
//               ],
//             ),
//             SizedBox(height: 24),
//
//             // Buttons
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 SizedBox(
//                   width: 140,
//                   height: 48,
//                   child: OutlinedButton(
//                     onPressed: () {},
//                     style: OutlinedButton.styleFrom(
//                       side: BorderSide(color: Colors.red),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(30),
//                       ),
//                     ),
//                     child: Text("Back", style: TextStyle(color: Colors.red)),
//                   ),
//                 ),
//                 SizedBox(
//                   width: 140,
//                   height: 48,
//                   child: ElevatedButton(
//                     onPressed: () {},
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.red,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(30),
//                       ),
//                     ),
//                     child: Text(
//                       "Confirm",
//                       style: TextStyle(color: Colors.white),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(height: 16),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget buildDropdownField(String label, List<String> items) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(label),
//         SizedBox(height: 6),
//         DropdownButtonFormField<String>(
//           decoration: InputDecoration(
//             border: OutlineInputBorder(),
//             contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
//           ),
//           hint: Text("Select $label"),
//           items:
//               items.map((val) {
//                 return DropdownMenuItem(value: val, child: Text(val));
//               }).toList(),
//           onChanged: (value) {},
//         ),
//       ],
//     );
//   }
//
//   Widget buildTextField(String label) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(label),
//         SizedBox(height: 6),
//         TextField(
//           decoration: InputDecoration(
//             border: OutlineInputBorder(),
//             contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
//           ),
//         ),
//       ],
//     );
//   }
// }
//


import 'package:flutter/material.dart';
import 'responsive_row_column.dart';

void main() {
  runApp(MaterialApp(home: BookingPage(), debugShowCheckedModeBanner: false));
}

class BookingPage extends StatelessWidget {
  const BookingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Color(0xFF01474D),
        title: Text(
          'Appointment Booking',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Branch & DateTime Card
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ResponsiveRowColumn(
                    spacing: 16,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Governorate: ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Governorate",
                            style: TextStyle(
                              color: Color(0xFF01474D),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Wilayat: ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Wilayat",
                            style: TextStyle(
                              color: Color(0xFF01474D),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  Divider(height: 20),
                  ResponsiveRowColumn(
                    spacing: 16,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Branch Details Section
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Branch Details",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 6),
                          Text("Branch Name 1"),
                          Text("28W9+J7X, Jalan Bani Buali,"),
                          Text("Oman Jaalan Bani Bu Ali OM, 416,"),
                          Text("Oman"),
                        ],
                      ),
                      SizedBox(width: 16),
                      // Date & Time Section
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Selected Date & Time",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10),
                          Container(
                            padding: EdgeInsets.all(20),
                            width: 300,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.calendar_month,
                                      color: Colors.white,
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      "07 Dec 2023",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 8),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.access_time,
                                      color: Colors.white,
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      "10:30 AM",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  ResponsiveRowColumn(
                    spacing: 12,
                    children: [
                      SizedBox(
                        width: 350,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Account Number"),
                            SizedBox(
                              height: 8,
                            ), // spacing between label and dropdown
                            DropdownButtonFormField<String>(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                              ),
                              hint: Text('Select Account Number'),
                              items:
                              ['Account 1', 'Account 2'].map((value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              onChanged: (value) {
                                print("Selected Account Number: $value");
                              },
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 16),
                      SizedBox(
                        width: 300, // or any width you want
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Type of Visit *"),
                            SizedBox(height: 8),
                            DropdownButtonFormField<String>(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                              ),
                              hint: Text('Select Type of Visit'),
                              items:
                              ['Visit A', 'Visit B'].map((value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              onChanged: (value) {
                                print("Selected Type of Visit: $value");
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  // Full Name & GSM
                  ResponsiveRowColumn(
                    spacing: 12,
                    children: [
                      SizedBox(
                        width: 300,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Full Name *"),
                            SizedBox(height: 8),
                            TextFormField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Enter Full Name',
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10), // spacing between fields
                      SizedBox(
                        width: 300,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("GSM *"),
                            SizedBox(height: 8),
                            TextFormField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Enter GSM',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 16),

                  // Email & Notification Preference
                  ResponsiveRowColumn(
                    spacing: 12,
                    children: [
                      SizedBox(
                        width: 300,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("E-mail"),
                            SizedBox(height: 8),
                            TextFormField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Enter E-mail',
                              ),
                              keyboardType: TextInputType.emailAddress,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Select Preferred Notification *",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              Checkbox(value: true, onChanged: (v) {}),
                              Text("WhatsApp"),
                              SizedBox(width: 8),
                              Checkbox(value: false, onChanged: (v) {}),
                              Text("SMS"),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 24),
                  // Buttons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 110,
                        height: 38,
                        child: ElevatedButton(
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('Back pressed')),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            side: BorderSide(color: Colors.redAccent, width: 1),
                          ),
                          child: Text(
                            'Back',
                            style: TextStyle(color: Colors.redAccent),
                          ),
                        ),
                      ),
                      SizedBox(width: 16),
                      SizedBox(
                        width: 110,
                        height: 38,
                        child: ElevatedButton(
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('Continue pressed')),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.redAccent,
                          ),
                          child: Text(
                            'Continue',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 16),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildLabelValue(String label, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(height: 4),
        Text(
          value,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xFF01474D),
          ),
        ),
      ],
    );
  }

  Widget buildDropdownField(String label, List<String> items) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label),
        SizedBox(height: 6),
        DropdownButtonFormField<String>(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
          ),
          hint: Text("Select $label"),
          items:
          items
              .map((val) => DropdownMenuItem(value: val, child: Text(val)))
              .toList(),
          onChanged: (value) {},
        ),
      ],
    );
  }

  Widget buildTextField(String label) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label),
        SizedBox(height: 6),
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
          ),
        ),
      ],
    );
  }
}


// import 'package:flutter/material.dart';
// import 'responsive_row_column.dart';
//
// void main() {
//   runApp(MaterialApp(home: BookingPage(), debugShowCheckedModeBanner: false));
// }
//
// class BookingPage extends StatelessWidget {
//   const BookingPage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[100],
//       appBar: AppBar(
//         backgroundColor: Color(0xFF01474D),
//         title: Text(
//           'Appointment Booking',
//           style: TextStyle(color: Colors.white),
//         ),
//         centerTitle: true,
//       ),
//       body: SingleChildScrollView(
//         padding: EdgeInsets.all(16),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // Branch & DateTime Card
//             Container(
//               padding: EdgeInsets.all(12),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(12),
//               ),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       buildLabelValue('Governorate:', 'Governorate'),
//                       SizedBox(width: 16),
//                       Expanded(
//                         child: Align(
//                           alignment: Alignment.center,
//                           child: buildLabelValue('Wilayat:', 'Wilayat'),
//                         ),
//                       ),
//                     ],
//                   ),
//
//                   Divider(height: 20),
//                   ResponsiveRowColumn(
//                     spacing: 16,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             "Branch Details",
//                             style: TextStyle(fontWeight: FontWeight.bold),
//                           ),
//                           SizedBox(height: 6),
//                           Text("Branch Name 1"),
//                           Text("28W9+J7X, Jalan Bani Buali,"),
//                           Text("Oman Jaalan Bani Bu Ali OM, 416,"),
//                           Text("Oman"),
//                         ],
//                       ),
//                       // SizedBox(width: 16),
//                       // Date & Time Section
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             "Selected Date & Time",
//                             style: TextStyle(fontWeight: FontWeight.bold),
//                           ),
//                           SizedBox(height: 10),
//                           Container(
//                             padding: EdgeInsets.all(20),
//                             width: 300,
//                             decoration: BoxDecoration(
//                               color: Colors.red,
//                               borderRadius: BorderRadius.circular(12),
//                             ),
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Row(
//                                   children: [
//                                     Icon(
//                                       Icons.calendar_month,
//                                       color: Colors.white,
//                                     ),
//                                     SizedBox(width: 10),
//                                     Text(
//                                       "07 Dec 2023",
//                                       style: TextStyle(color: Colors.white),
//                                     ),
//                                   ],
//                                 ),
//                                 SizedBox(height: 8),
//                                 Row(
//                                   children: [
//                                     Icon(
//                                       Icons.access_time,
//                                       color: Colors.white,
//                                     ),
//                                     SizedBox(width: 10),
//                                     Text(
//                                       "10:30 AM",
//                                       style: TextStyle(color: Colors.white),
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(height: 16),
//             Container(
//               padding: EdgeInsets.all(12),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(12),
//               ),
//               child: Column(
//                 children: [
//                   ResponsiveRowColumn(
//                     spacing: 12,
//                     children: [
//                       buildDropdownField("Account Number", [
//                         'Account 1',
//                         'Account 2',
//                       ]),
//                       buildDropdownField("Type of Visit *", [
//                         'Visit A',
//                         'Visit B',
//                       ]),
//                     ],
//                   ),
//                   SizedBox(height: 16),
//                   // Full Name & GSM
//                   ResponsiveRowColumn(
//                     spacing: 12,
//                     children: [
//                       buildTextField("Full Name *"),
//                       buildTextField("GSM *"),
//                     ],
//                   ),
//
//                   SizedBox(height: 16),
//
//                   // Email & Notification Preference
//                   ResponsiveRowColumn(
//                     spacing: 12,
//                     children: [
//                       buildTextField("E-mail"),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             "Select Preferred Notification *",
//                             style: TextStyle(fontWeight: FontWeight.bold),
//                           ),
//                           Row(
//                             children: [
//                               Checkbox(value: true, onChanged: (v) {}),
//                               Text("WhatsApp"),
//                               SizedBox(width: 8),
//                               Checkbox(value: false, onChanged: (v) {}),
//                               Text("SMS"),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                   SizedBox(height: 24),
//                   // Buttons
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       SizedBox(
//                         width: 110,
//                         height: 38,
//                         child: ElevatedButton(
//                           onPressed: () {
//                             ScaffoldMessenger.of(context).showSnackBar(
//                               SnackBar(content: Text('Back pressed')),
//                             );
//                           },
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: Colors.white,
//                             side: BorderSide(color: Colors.redAccent, width: 1),
//                           ),
//                           child: Text(
//                             'Back',
//                             style: TextStyle(color: Colors.redAccent),
//                           ),
//                         ),
//                       ),
//                       SizedBox(width: 16),
//                       SizedBox(
//                         width: 110,
//                         height: 38,
//                         child: ElevatedButton(
//                           onPressed: () {
//                             ScaffoldMessenger.of(context).showSnackBar(
//                               SnackBar(content: Text('Continue pressed')),
//                             );
//                           },
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: Colors.redAccent,
//                           ),
//                           child: Text(
//                             'Continue',
//                             style: TextStyle(color: Colors.white),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//
//                   SizedBox(height: 16),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget buildLabelValue(String label, String value) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(label, style: TextStyle(fontWeight: FontWeight.bold)),
//         SizedBox(height: 4),
//         Text(
//           value,
//           style: TextStyle(
//             fontWeight: FontWeight.bold,
//             color: Color(0xFF01474D),
//           ),
//         ),
//       ],
//     );
//   }
//
//   Widget buildDropdownField(String label, List<String> items) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(label),
//         SizedBox(height: 6),
//         DropdownButtonFormField<String>(
//           decoration: InputDecoration(
//             border: OutlineInputBorder(),
//             contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
//           ),
//           hint: Text("Select $label"),
//           items:
//           items
//               .map((val) => DropdownMenuItem(value: val, child: Text(val)))
//               .toList(),
//           onChanged: (value) {},
//         ),
//       ],
//     );
//   }
//
//   Widget buildTextField(String label) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(label),
//         SizedBox(height: 6),
//         TextField(
//           decoration: InputDecoration(
//             border: OutlineInputBorder(),
//             contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
//           ),
//         ),
//       ],
//     );
//   }
// }
//
//
