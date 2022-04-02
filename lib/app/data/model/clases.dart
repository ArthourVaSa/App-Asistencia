class Clases {
  Clases({
    required this.id,
    required this.asistencia,
    required this.biblias,
    required this.fecha,
    required this.ofrendas,
    required this.visitas,
  });

  final String id;
  final String asistencia;
  final String biblias;
  final String fecha;
  final String ofrendas;
  final String visitas;

  factory Clases.fromJson(Map<String, dynamic> json) => Clases(
        id: json["id"],
        asistencia: json["asistencia"],
        biblias: json["biblias"],
        fecha: json["fecha"],
        ofrendas: json["ofrenda"],
        visitas: json["visitas"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "asistencia": asistencia,
        "biblias": biblias,
        "fecha": fecha,
        "ofrenda": ofrendas,
        "visitas": visitas,
      };
}
