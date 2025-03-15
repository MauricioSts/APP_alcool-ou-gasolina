# O que eu aprendi na criação do meu 4° APP?
Nessa aplicação o principal estudo foi a entrada de dados via texto

# TextField()
o TextField serve para receber os dados fornecidos pelo usuario, ele é acompanhado por mais algumas coisas:

`  keyboardType: TextInputType.number ` define o tipo de dado que sera digitado, number, text...

` decoration: InputDecoration(labelText: "digite um valor")` define a label.

` style: TextStyle(fontSize: 30, color: Colors.green)` é acompanhado tbm do style.

`onSubmitted: (String texto)`
`{print("valor digitado:" + texto);},` Quando for submetido exibe o valor digitado.
` controller: _textEditingController` Principal responsavel por fazer a ligação entre o textfield e o botão ou algo que va entregar o dados para algum lugar.

# Controller
`TextEditingController _textEditingController = TextEditingController();` Definido acima do @override
` print("valor digitado:" + _textEditingController.text)` Definino dentro do botão OnPressed, exibe o valor digitado.text

# Função CalcularMelhorOpcao() 
` double? alcool = double.tryParse(_alcool.text);
  double? gasolina = double.tryParse(_gasolina.text);` Aqui o `double?` aceita valores nulos para gasolina e alcool e o `tryParse` tenta converter esses valores em texto para double

`    if (alcool == null || gasolina == null || gasolina == 0) {
       setState(() {
         melhorOpcao = "Digite valores válidos!";
       });
       return;
     }` Faz a verificação se os dados forem nulos. 
