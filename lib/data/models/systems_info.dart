class Sys {
  Sys({
    this.type,
    this.id,
    this.message,
    this.country,
    this.sunrise,
    this.sunset,
  });

  final int? type;
  final int? id;
  final String? message;
  final String? country;
  final int? sunrise;
  final int? sunset;

  factory Sys.fromJson(Map<String, dynamic> json) => Sys(
    type: json["type"],
    id: json["id"],
    message: json["message"],
    country: json["country"],
    sunrise: json["sunrise"],
    sunset: json["sunset"],
  );

  Map<String, dynamic> toJson() => {
    "type": type,
    "id": id,
    "message": message,
    "country": country,
    "sunrise": sunrise,
    "sunset": sunset,
  };
}