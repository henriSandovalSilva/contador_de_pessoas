import 'package:flutter/material.dart';

void main() {
  runApp(
    new MaterialApp(
        title: 'Contador de pessoas',
        //Home do App - Column
        home: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //Alinhamento da coluna na tela
          children: <Widget>[
            //Texto
            Text(
              "Pessoas: 0",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
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
                    onPressed: () {}, //Quando clicar no botão
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
                    onPressed: () {}, //Quando clicar no botão
                    //Texto dentro do botão
                    child: Text(
                      "+1",
                      style: TextStyle(fontSize: 40.0, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            //Texto
            Text(
              "Pode entrar!",
              style: TextStyle(
                color: Colors.white,
                fontStyle: FontStyle.italic,
                fontSize: 30.0,
              ),
            ),
          ],
        )),
  );
}
