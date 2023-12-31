import 'dart:math';

import 'package:cara_ou_coroa/Resultado.dart';
import 'package:flutter/material.dart';

class Jogar extends StatefulWidget {
  const Jogar({super.key});

  @override
  State<Jogar> createState() => _JogarState();
}

class _JogarState extends State<Jogar> {
  void _exibirResultado() {
    String imagem = "";
    int caraOuCoroa = Random().nextInt(2);

    imagem =
        (caraOuCoroa == 1) ? "images/moeda_cara.png" : "images/moeda_coroa.png";

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Resultado(moeda: imagem),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff61bd86),
      body: Center(
        // Este Center centraliza os elementos no corpo do Scaffold
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment
                .center, // Centraliza os elementos verticalmente na Column
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('images/logo.png'),
              ),
              GestureDetector(
                onTap: _exibirResultado,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('images/botao_jogar.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
