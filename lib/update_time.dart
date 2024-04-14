import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class UpdateTime extends StatefulWidget {
  final String? selectedProject;

  UpdateTime({this.selectedProject});

  @override
  _UpdateTimeState createState() => _UpdateTimeState();
}

class _UpdateTimeState extends State<UpdateTime> {
  bool status = false;

  String _getCurrentDate() {
    return DateFormat('dd/MM').format(DateTime.now());
  }

  String _getCurrentTime() {
    return DateFormat('HH:mm').format(DateTime.now());
  }

  @override
  Widget build(BuildContext context) {
    Widget size() {
      return SizedBox(
        height: 0,
        width: double.infinity,
        child: Divider(
          color: Color.fromARGB(255, 0, 0, 0),
        ),
      );
    }

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Text(
            "Update Time",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.black,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 45,
                        color: Color.fromARGB(255, 221, 221, 223),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 50),
                          child: Center(
                            child: Text(
                              "Project",
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        height: 45,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 15, left: 5),
                          child: Text(
                            widget.selectedProject ?? "",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                size(),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 45,
                        color: Color.fromARGB(255, 221, 221, 223),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 50),
                          child: Center(
                            child: Text(
                              "Client",
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        height: 45,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 15, left: 5),
                          child: Text(
                            "who do you work for?",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                size(),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 45,
                        color: Color.fromARGB(255, 221, 221, 223),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 50),
                          child: Center(
                            child: Text(
                              "Time in",
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 45,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 15, left: 5),
                          child: Text(
                            _getCurrentDate(),
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 45,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 15, left: 5),
                          child: Text(
                            _getCurrentTime(),
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                size(),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 45,
                        color: Color.fromARGB(255, 221, 221, 223),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 50),
                          child: Center(
                            child: Text(
                              "Time out",
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 45,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 15, left: 5),
                          child: Text(
                            _getCurrentDate(),
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 45,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 15, left: 5),
                          child: Text(
                            _getCurrentTime(),
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                size(),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 45,
                        color: Color.fromARGB(255, 221, 221, 223),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 50),
                          child: Center(
                            child: Text(
                              "Break",
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        height: 45,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 15, left: 5),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Minutes",
                            ),
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                size(),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 50,
                        color: Color.fromARGB(255, 221, 221, 223),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Center(
                              child: Text(
                            "Working hours",
                            style: TextStyle(fontWeight: FontWeight.w500),
                          )),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        height: 50,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 15, left: 5),
                          child: Text(
                            "00:00",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                size(),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 50,
                        color: Color.fromARGB(255, 221, 221, 223),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Center(
                              child: Text(
                            "Hourly Rate",
                            style: TextStyle(fontWeight: FontWeight.w500),
                          )),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        height: 50,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 15, left: 5),
                          child: Text(
                            "10",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                size(),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        height: 45,
                        color: Color.fromARGB(255, 221, 221, 223),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 50),
                          child: Center(
                            child: Text(
                              "Break",
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        height: 50,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 10, left: 5),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "what task have you done?",
                            ),
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                        flex: 1,
                        child: Container(
                          height: 50,
                          color: Colors.white,
                          child: Icon(Icons.menu),
                        ))
                  ],
                ),
                size(),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 45,
                        color: Color.fromARGB(255, 221, 221, 223),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 50),
                          child: Center(
                            child: Text(
                              "Notes",
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        height: 50,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 10, left: 5),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "",
                            ),
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                size(),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 45,
                        color: Color.fromARGB(255, 221, 221, 223),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 50),
                          child: Center(
                            child: Text(
                              "Status",
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        height: 45,
                        color: Colors.white,
                        child: Text(
                          "Open",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      ),
                    ),
                  ],
                ),
                size(),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 45,
                        color: Color.fromARGB(255, 221, 221, 223),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 50),
                          child: Center(
                            child: Text(
                              "Billable",
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                        flex: 2,
                        child: Container(
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 220),
                            child: Switch(
                                value: status,
                                onChanged: (val) {
                                  print("object");
                                  setState(() {
                                    status = val;
                                  });
                                }),
                          ),
                        )),
                  ],
                ),
                MaterialButton(
                  minWidth: double.infinity,
                  color: Color.fromARGB(255, 221, 221, 223),
                  onPressed: () {},
                  child: Text("Add Expense /  Deduction"),
                ),
                MaterialButton(
                  minWidth: double.infinity,
                  color: Color.fromARGB(255, 221, 221, 223),
                  onPressed: () {},
                  child: Text("Add Mileage"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
