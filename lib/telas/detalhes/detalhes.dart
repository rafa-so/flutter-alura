import 'package:flutter/material.dart';
import '../../modelos/receita.dart';

class Detalhes extends StatelessWidget {
  final Receita receita;

  Detalhes({ Key? key, required this.receita }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return _construirDetalhes();
  }

  Widget _construirDetalhes() {
    return Scaffold(
      appBar: _construirAppBar(),
      body: Column(
      children: <Widget> [
        _construirImagemDetalhes(receita.foto),
        _construirTituloDetalhes(receita.titulo),
        _construirLinhaIconesDetalhes(receita.porcoes, receita.tempoPreparo),
        _construirSubTituloDetalhes('Ingredientes'),
        _construirTextoDetalhes(receita.ingredientes),
        _construirSubTituloDetalhes('Modo de Preparo'),
        _construirTextoDetalhes(receita.modoPreparo),
      ]
      ),
    );
  }

  Widget _construirImagemDetalhes(imagem) {
    return Image.asset(imagem);
  }

  Widget _construirTituloDetalhes(titulo) {
    return Text(
        titulo,
        style: TextStyle(
          color: Colors.deepOrange,
          fontSize: 30,
        )
    );
  }

  Widget _construirLinhaIconesDetalhes(rendimento, tempo_preparo) {
    return Row(
      children: <Widget> [
        _construirColunaIconesDetalhes(Icons.restaurant, rendimento),
        _construirColunaIconesDetalhes(Icons.timer, tempo_preparo),
      ]
    );
  }
  
  Widget _construirColunaIconesDetalhes(icone, texto) {
    return Expanded(
      child: Column(
          children: <Widget> [
            Icon(
                icone,
                color: Colors.deepOrange
            ),
            Text(
                texto,
                style: TextStyle(
                  color: Colors.deepOrange,
                  fontWeight: FontWeight.bold,
                ))
          ]
      ),
    );
  }

  Widget _construirSubTituloDetalhes(subtitulo) {
    return Text(
      subtitulo,
      style: TextStyle(
          // fontWeight: FontWeight.bold,
          fontSize: 20,
      ),
    );
  }

  Widget _construirTextoDetalhes(texto) {
    return Text(texto);
  }
  
  AppBar _construirAppBar() {
    return AppBar(title: Text("Detalhes"));
  }
}