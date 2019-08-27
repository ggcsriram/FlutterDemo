
import 'dart:convert';

Friends friendsFromJson(String str) => Friends.fromJson(json.decode(str));

String friendsToJson(Friends data) => json.encode(data.toJson());

class Friends {
    List<Datum> data;
    String status;
    String message;

    Friends({
        this.data,
        this.status,
        this.message,
    });

    factory Friends.fromJson(Map<String, dynamic> json) => new Friends(
        data: new List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
        status: json["status"],
        message: json["message"],
    );

    Map<String, dynamic> toJson() => {
        "data": new List<dynamic>.from(data.map((x) => x.toJson())),
        "status": status,
        "message": message,
    };
}

class Datum {
    String id;
    String names;

    Datum({
        this.id,
        this.names,
    });

    factory Datum.fromJson(Map<String, dynamic> json) => new Datum(
        id: json["id"],
        names: json["names"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "names": names,
    };
}
