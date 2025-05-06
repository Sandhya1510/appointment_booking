import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: BookingPage(), debugShowCheckedModeBanner: false,));
}

class BookingPage extends StatelessWidget {
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
            // Governorate & Wilayat

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
                  Padding(
                    padding: EdgeInsets.only(right: 56.0), // space at right end
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Governorate:',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'Governorate',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF01474D),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Wilayat:',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'Wilayat',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF01474D),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  Divider(height: 20),
                  Text(
                    "Branch Details",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 6),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Branch Name 1"),
                      Text("28W9+J7X, Jalan Bani Buali,"),
                      Text("Oman Jaalan Bani Bu Ali OM, 416,"),
                      Text("Oman"),
                    ],
                  ),

                  SizedBox(height: 12),
                ],
              ),
            ),
            SizedBox(height: 16),
            Text(
              "Selected date & Time",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.calendar_month, color: Colors.white),
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
                      Icon(Icons.access_time, color: Colors.white),
                      SizedBox(width: 10),
                      Text("10:30 AM", style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            // Account Number
            buildDropdownField("Account Number", ["Account 1", "Account 2"]),
            SizedBox(height: 12),

            // Type of Visit
            buildDropdownField("Type of Visit *", ["Visit A", "Visit B"]),
            SizedBox(height: 12),

            // Full Name
            buildTextField("Full Name *"),
            SizedBox(height: 12),

            // GSM
            buildTextField("GSM *"),
            SizedBox(height: 12),

            // E-mail
            buildTextField("E-mail"),
            SizedBox(height: 12),

            // Preferred Notification
            Text(
              "Select Preferred Notification *",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 6),
            Row(
              children: [
                Checkbox(value: true, onChanged: (v) {}),
                Text("WhatsApp"),
                SizedBox(width: 8),
                Checkbox(value: false, onChanged: (v) {}),
                Text("SMS"),
              ],
            ),
            SizedBox(height: 24),

            // Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 140,
                  height: 48,
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: Colors.red),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Text("Back", style: TextStyle(color: Colors.red)),
                  ),
                ),
                SizedBox(
                  width: 140,
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Text(
                      "Confirm",
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
              items.map((val) {
                return DropdownMenuItem(value: val, child: Text(val));
              }).toList(),
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

