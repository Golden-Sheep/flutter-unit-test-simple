import 'package:calc/botao.dart';
import 'package:calc/calculadora.dart';
import 'package:flutter/material.dart';

class HomeWidget extends StatefulWidget {
  HomeWidget({Key? key}) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  var calc = Calculadora();
  TextEditingController inputNumero1 = new TextEditingController();
  TextEditingController inputNumero2 = new TextEditingController();
  String textHolder = '';
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$textHolder', style: TextStyle(fontSize: 21)),
              SizedBox(
                height: 100,
              ),
              TextField(
                controller: inputNumero1,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Digite um numero'),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: inputNumero2,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Digite um numero'),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Botao(
                      texto: '+',
                      callback: () {
                        calc.setNum1 = double.parse(inputNumero1.text);
                        calc.setNum2 = double.parse(inputNumero2.text);
                        calc.setOp = '+';
                        setState(() {
                          textHolder = calc.calcular().toString();
                        });
                      }),
                  Botao(
                      texto: '-',
                      callback: () {
                        calc.setNum1 = double.parse(inputNumero1.text);
                        calc.setNum2 = double.parse(inputNumero2.text);
                        calc.setOp = '-';
                        setState(() {
                          textHolder = calc.calcular().toString();
                        });
                      }),
                  Botao(
                      texto: '/',
                      callback: () {
                        calc.setNum1 = double.parse(inputNumero1.text);
                        calc.setNum2 = double.parse(inputNumero2.text);
                        calc.setOp = '/';
                        setState(() {
                          textHolder = calc.calcular().toString();
                        });
                      }),
                  Botao(
                      texto: 'x',
                      callback: () {
                        calc.setNum1 = double.parse(inputNumero1.text);
                        calc.setNum2 = double.parse(inputNumero2.text);
                        calc.setOp = 'x';
                        setState(() {
                          textHolder = calc.calcular().toString();
                        });
                      }),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
