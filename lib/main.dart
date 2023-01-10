import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const loginHome(),
    );
  }
}

//page login
// ignore: camel_case_types
class loginHome extends StatefulWidget {
  const loginHome({Key? key}) : super(key: key);

  @override
  State<loginHome> createState() => _loginHomeState();
}

// ignore: camel_case_types
class _loginHomeState extends State<loginHome> {
  //declare texfield
  var usernameController = TextEditingController();
  var passwordController = TextEditingController();

  String result = "";
  String username = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LOG IN", style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.lightBlueAccent,
        actions: [
          IconButton(onPressed: () {},
              icon: Icon(Icons.settings,color: Colors.white)),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextField(
                controller: usernameController,
                keyboardType: TextInputType.number,
                decoration:
                InputDecoration(
                    prefixIcon: Icon(Icons.account_circle),
                    hintText: "username",
                    filled: true,
                    fillColor: Colors.grey[200],
                    border:
                    OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: BorderSide.none
                    )
                ),
              ),

              SizedBox(
                height: 20.0,
              ),

              //Form password
              TextField(
                controller: passwordController,
                decoration:
                InputDecoration(
                    prefixIcon:Icon(Icons.key),
                    hintText: "password",
                    filled: true,
                    fillColor: Colors.grey[200],
                    border:
                    OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: BorderSide.none
                    )
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextButton(
                  onPressed: () {
                    setState(() {
                      //username = double.parse(heightController.value.text);
                      //password = double.parse(heightController.value.text);
                      username = usernameController.text;
                      password = passwordController.text;
                    });
                    login(username, password);
                    if(result == ""){
                    Navigator.push(
                        context,
                    MaterialPageRoute(builder: (context) => checkSmallestValue()),);
                    }else{

                    };
                  },
                  child: Text("LOGIN")
              ),
              SizedBox(
                height: 15.0,
              ),
              Text("$result",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  void login(String username, String password){
    String finalResult = "";
    if (username == "admin" && password == "admin"){
      finalResult = "";
    }else {
      finalResult = "username or password wrong";
    }

    setState(() {
      result = finalResult;
    });
    //String bmi = finalresult.toStringAsFixed(2);
    // setState(() {
    //   result = bmi;
    // });
  }
}

//page smallesValue
// ignore: camel_case_types
class checkSmallestValue extends StatefulWidget {
  const checkSmallestValue({Key? key}) : super(key: key);

  @override
  State<checkSmallestValue> createState() => _checkSmallestValueState();
}


class _checkSmallestValueState extends State<checkSmallestValue> {
  //declare texfield
  TextEditingController value1Controller = TextEditingController();
  TextEditingController value2Controller = TextEditingController();
  TextEditingController value3Controller = TextEditingController();
  TextEditingController value4Controller = TextEditingController();

  String result = "";
  // double value1 = 0;
  // double value2 = 0;
  // double value3 = 0;
  // double value4 = 0;

  String value1 = "";
  String value2 = "";
  String value3 = "";
  String value4 = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mencari Nilai terkecil", style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.lightBlueAccent,
        actions: [
          IconButton(onPressed: () {},
              icon: Icon(Icons.settings,color: Colors.white)),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextField(
                controller: value1Controller,
                keyboardType: TextInputType.number,
                decoration:
                InputDecoration(
                    hintText: "value 1",
                    filled: true,
                    fillColor: Colors.grey[200],
                    border:
                    OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: BorderSide.none
                    )
                ),
              ),

              SizedBox(
                height: 20.0,
              ),

              TextField(
                controller: value2Controller,
                keyboardType: TextInputType.number,
                decoration:
                InputDecoration(
                    hintText: "value 2",
                    filled: true,
                    fillColor: Colors.grey[200],
                    border:
                    OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: BorderSide.none
                    )
                ),
              ),
              SizedBox(
                height: 20.0,
              ),

              TextField(
                controller: value3Controller,
                keyboardType: TextInputType.number,
                decoration:
                InputDecoration(
                    hintText: "value 3",
                    filled: true,
                    fillColor: Colors.grey[200],
                    border:
                    OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: BorderSide.none
                    )
                ),
              ),
              SizedBox(
                height: 20.0,
              ),

              TextField(
                controller: value4Controller,
                keyboardType: TextInputType.number,
                decoration:
                InputDecoration(
                    hintText: "value 4",
                    filled: true,
                    fillColor: Colors.grey[200],
                    border:
                    OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: BorderSide.none
                    )
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextButton(
                  onPressed: () {
                    setState(() {
                      // value1 = double.parse(value1Controller.value.text);
                      // value2 = double.parse(value2Controller.value.text);
                      // value3 = double.parse(value3Controller.value.text);
                      // value4 = double.parse(value4Controller.value.text);

                      value1 = value1Controller.text;
                      value2 = value2Controller.text;
                      value3 = value3Controller.text;
                      value4 = value4Controller.text;

                    });
                    if(value1 == "" ||value2 == "" ||
                        value3 == "" ||value4 == "") {
                      setState(() {
                        result = "ada data yang kosong";
                      });
                    }else{
                      int value1C = int.parse(value1);
                      int value2C = int.parse(value2);
                      int value3C = int.parse(value3);
                      int value4C = int.parse(value4);

                      cariValue(value1C, value2C, value3C, value4C);
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) =>
                            konfirmasiNilai(
                              //dibawah adalah variable untuk get data
                                title: result),
                        ),
                      );
                    }
                  },
                  child: Text("Cari")
              ),
              Text("$result",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  //function cari nilai terkecil
  void cariValue(int value1, int value2,int value3,int value4) {
      int finalresult = [value1, value2, value3, value4].reduce(min);
      String smallest = finalresult.toStringAsFixed(0);
      setState(() {
        result = smallest;
      });
    }

}

class konfirmasiNilai extends StatefulWidget {
  const konfirmasiNilai({Key? key,required this.title}) : super(key: key);

  final String title;
  @override
  State<konfirmasiNilai> createState() => _konfirmasiNilaiState();
}

class _konfirmasiNilaiState extends State<konfirmasiNilai> {
  //declare texfield


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator", style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.lightBlueAccent,
        actions: [
          IconButton(onPressed: () {},
              icon: Icon(Icons.settings,color: Colors.white)),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Konfirmasi Nilai terkecil adalah ${widget.title}",
                  style:
                  TextStyle(
                    fontSize: 20,
                  )),
              SizedBox(
                height: 20.0,
              ),
              TextButton(
                  onPressed: () => showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: Text("Nilai terkecil tersimpan :"),
                      content: Text("${widget.title}"),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'Cancel'),
                          child: const Text('Cancel'),
                        ),
                        TextButton(
                          onPressed: () => Navigator.popUntil(context, (route) => route.isFirst),
                          child: const Text('OK'),
                        ),
                      ],
                    ),
                  ),
                  child: Text("Save")
              ),
            ],
          ),
        ),
      ),
    );
  }
}

