import 'package:flutter/material.dart';

class Campotexto extends StatefulWidget {
  const Campotexto({super.key});

  @override
  State<Campotexto> createState() => _CampotextoState();
}

class _CampotextoState extends State<Campotexto> {
  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "Entrada de dados",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(32),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(32),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(labelText: "digite um valor"),
                  style: TextStyle(fontSize: 30, color: Colors.green),
                  /* onChanged: (String texto) {
                    print("valor digitado: " + texto);
                  },*/
                  onSubmitted: (String texto) {
                    print("valor digitado:" + texto);
                  },
                  controller: _textEditingController,
                ),
              ),
              TextButton(
                onPressed: () {
                  print("valor digitado:" + _textEditingController.text);
                },
                child: Text("Submit", style: TextStyle(color: Colors.white)),
                style: TextButton.styleFrom(backgroundColor: Colors.blueAccent),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
