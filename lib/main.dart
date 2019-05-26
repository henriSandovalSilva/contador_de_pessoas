import 'package:flutter/material.dart';

void main() {
  runApp(
    new MaterialApp(
        title: 'Contador de pessoas',
        //Home do App
        home: Home()),
  );
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //Quantidade total de pessoas que entraram
  int _pessoas = 0;

  //Status do local
  String _status = "Vazio!";

  void _atualiza(int valor) {
    setState(() {
      //Atualiza o valor conforme o clique do botão "+1" e "-1"
      _pessoas += valor;

      //Atualiza o valor conforme a quantidade de pessoas
      if (_pessoas < 10 && _pessoas > 0) {
        _status = "Disponível!";
      } else if (_pessoas < 1) {
        _status = "Vazio!";
      } else {
        _status = "Lotado!";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      //Alinhamento da coluna na tela
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        //Texto com a quantidade de pessoas
        Text(
          "Pessoas: $_pessoas",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        //Linha com os botões
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          //Alinhamento da linha na tela
          children: <Widget>[
            //Padding do botão
            Padding(
              padding: EdgeInsets.all(10.0),
              //Botão
              child: FlatButton(
                //Clique do botão
                onPressed: () {
                  //Atualiza o valor total de pessoas
                  if (_pessoas < 10) {
                    _atualiza(1);
                  }
                },
                //Texto dentro do botão
                child: Text(
                  "+1",
                  style: TextStyle(fontSize: 40.0, color: Colors.white),
                ),
              ),
            ),
            //Padding do botão
            Padding(
              padding: EdgeInsets.all(10.0),
              //Botão
              child: FlatButton(
                //Clique do botão
                onPressed: () {
                  //Atualiza o valor total de pessoas
                  if (_pessoas > 0) {
                    _atualiza(-1);
                  }
                },
                //Texto dentro do botão
                child: Text(
                  "-1",
                  style: TextStyle(fontSize: 40.0, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
        //Texto com status do local
        Text(
          _status,
          style: TextStyle(
            color: Colors.white,
            fontStyle: FontStyle.italic,
            fontSize: 30.0,
          ),
        ),
      ],
    );
  }
}
