import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Building Phrase 1 "),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 0,
              child: Center(
                child: Container(
                  width: 200,
                  height: 200,
                  child: Image.asset('assets/images/logo/logo_black.png'),
                ),
              ),
            ),
            const SizedBox(height: 2),
            const Text(
              "Lets Experience for the better",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Colors.deepOrangeAccent,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            const Text(
              "To get start Enter your Phone Number",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
              Expanded(
              flex: 0,
              child: Center(
                child: SizedBox(
                  width: 300,
                  child: TextField(
                    controller: phoneController,
                    keyboardType: TextInputType.phone,
                    decoration: const InputDecoration(
                      focusedBorder:  OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(11)
                        ),
                        borderSide: BorderSide(
                          width: 1,
                          color: Colors.black87,
                        ),
                      ),
                      border:  OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(11)
                        ),
                        borderSide: BorderSide(
                          width: 1,
                          color: Colors.deepOrangeAccent,
                        ),
                      ),
                      labelText: 'Add Phone Number',
                      labelStyle: TextStyle(
                        fontSize: 18,
                        color: Colors.black87,
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
