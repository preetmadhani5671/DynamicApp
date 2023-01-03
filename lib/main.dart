import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DYNAMICAPP(),
    ),
  );
}

class DYNAMICAPP extends StatefulWidget {
  const DYNAMICAPP({Key? key}) : super(key: key);

  @override
  State<DYNAMICAPP> createState() => _DYNAMICAPPState();
}

class _DYNAMICAPPState extends State<DYNAMICAPP> {
  TextEditingController txt = TextEditingController();

  List Name = ["Mukesh Ambani", "Gautam Adani", "Ratan Tata", "Narendra Modi"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text("Dynamic App"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextField(
                controller: txt,
                decoration: InputDecoration(
                  hintText: '     Enter The Name',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      Name.add(txt.text);
                    });
                  },
                  child: Text(
                    "ADD NAME",
                  ),
                  style: ElevatedButton.styleFrom(primary: Colors.green),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      Name.remove(txt.text);
                    });
                  },
                  child: Text("REMOVE"),
                  style: ElevatedButton.styleFrom(primary: Colors.red),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: Name.map((e) => Container(
                    height: 60,
                    width: double.infinity,
                    margin: EdgeInsets.all(8),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.orangeAccent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      "$e",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  )).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
