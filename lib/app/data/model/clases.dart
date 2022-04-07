class Clases {
  Clases({
    required this.tipoClase,
    required this.asistencia,
    required this.biblias,
    required this.fecha,
    required this.ofrendas,
    required this.visitas,
  });

  final String tipoClase;
  final String asistencia;
  final String biblias;
  final String fecha;
  final String ofrendas;
  final String visitas;

  factory Clases.fromJson(Map<String, dynamic> json) => Clases(
        tipoClase: json["id"],
        asistencia: json["asistencia"],
        biblias: json["biblias"],
        fecha: json["fecha"],
        ofrendas: json["ofrenda"],
        visitas: json["visitas"],
      );

  Map<String, dynamic> toJson() => {
        "tipoClase": tipoClase,
        "asistencia": asistencia,
        "biblias": biblias,
        "fecha": fecha,
        "ofrenda": ofrendas,
        "visitas": visitas,
      };
}
