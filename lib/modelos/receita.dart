class Receita {
  String? titulo;
  String? foto;
  String? porcoes;
  String? tempoPreparo;
  String? ingredientes;
  String? modoPreparo;

  Receita ({
    this.titulo,
    this.foto,
    this.porcoes,
    this.tempoPreparo,
    this.ingredientes,
    this.modoPreparo
  });

  Receita.fromJson(Map<String, dynamic> json) {
    titulo = json['titulo'];
    foto = json['foto'];
    porcoes = json['porcoes'];
    tempoPreparo = json['tempoPreparo'];
    ingredientes = json['ingredientes'];
    modoPreparo = json['modoPreparo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['titulo'] = this.titulo;
    data['foto'] = this.foto;
    data['porcoes'] = this.porcoes;
    data['tempoPreparo'] = this.tempoPreparo;
    data['ingredientes'] = this.ingredientes;
    data['modoPreparo'] = this.modoPreparo;

    return data;
  }
}