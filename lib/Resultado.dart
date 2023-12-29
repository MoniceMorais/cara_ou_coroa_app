import 'package:flutter/material.dart';

class Resultado extends StatefulWidget {
  final String moeda;

  const Resultado({super.key, required this.moeda});

  @override
  State<Resultado> createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {
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
                child: Image.asset(widget.moeda),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('images/botao_voltar.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
