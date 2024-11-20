// To parse this JSON data, do
//
//     final parkEntry = parkEntryFromJson(jsonString);

import 'dart:convert';

List<ParkEntry> parkEntryFromJson(String str) => List<ParkEntry>.from(json.decode(str).map((x) => ParkEntry.fromJson(x)));

String parkEntryToJson(List<ParkEntry> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ParkEntry {
    String model;
    String pk;
    Fields fields;

    ParkEntry({
        required this.model,
        required this.pk,
        required this.fields,
    });

    factory ParkEntry.fromJson(Map<String, dynamic> json) => ParkEntry(
        model: json["model"],
        pk: json["pk"],
        fields: Fields.fromJson(json["fields"]),
    );

    Map<String, dynamic> toJson() => {
        "model": model,
        "pk": pk,
        "fields": fields.toJson(),
    };
}

class Fields {
    int user;
    String nama;
    DateTime time;
    int price;
    String description;
    int rating;
    String image;
    int quantity;

    Fields({
        required this.user,
        required this.nama,
        required this.time,
        required this.price,
        required this.description,
        required this.rating,
        required this.image,
        required this.quantity,
    });

    factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        user: json["user"],
        nama: json["nama"],
        time: DateTime.parse(json["time"]),
        price: json["price"],
        description: json["description"],
        rating: json["rating"],
        image: json["image"],
        quantity: json["quantity"],
    );

    Map<String, dynamic> toJson() => {
        "user": user,
        "nama": nama,
        "time": "${time.year.toString().padLeft(4, '0')}-${time.month.toString().padLeft(2, '0')}-${time.day.toString().padLeft(2, '0')}",
        "price": price,
        "description": description,
        "rating": rating,
        "image": image,
        "quantity": quantity,
    };
}
