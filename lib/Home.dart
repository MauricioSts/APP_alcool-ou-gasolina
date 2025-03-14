import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController _alcool = TextEditingController();
  TextEditingController _gasolina = TextEditingController();

  var melhorOpcao = "";

  void calcularMelhorOpcao() {
    double? alcool = double.tryParse(_alcool.text);
    double? gasolina = double.tryParse(_gasolina.text);

    if (alcool == null || gasolina == null || gasolina == 0) {
      setState(() {
        melhorOpcao = "Digite valores válidos!";
      });
      return;
    }

    double resultado = alcool / gasolina;

    setState(() {
      if (resultado <= 0.70) {
        melhorOpcao = "Abasteça com Álcool!";
      } else {
        melhorOpcao = "Abasteça com Gasolina!";
      }
    });
  }

  void limparCampos() {
    _alcool.text = "";
    _gasolina.text = "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Álcool ou Gasolina",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(32),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(padding: EdgeInsets.only(bottom: 32)),
                Image.asset("images/logo.png"),
                Padding(padding: EdgeInsets.only(bottom: 32)),
                Text(
                  "Saiba qual a melhor opção para abastecimento do seu carro",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Padding(padding: EdgeInsets.only(bottom: 32)),
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "Preço Álcool, ex: 1.59",
                  ),
                  style: TextStyle(fontSize: 15),
                  controller: _alcool,
                ),

                TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "Preço Gasolina, ex: 6.20",
                  ),
                  style: TextStyle(fontSize: 15),
                  controller: _gasolina,
                ),
                Padding(padding: EdgeInsets.only(bottom: 32)),
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                  ),
                  onPressed: () {
                    calcularMelhorOpcao();
                    limparCampos();
                  },
                  child: Text(
                    "Calcular",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
                Padding(padding: EdgeInsets.only(bottom: 32)),
                Text(
                  melhorOpcao,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
