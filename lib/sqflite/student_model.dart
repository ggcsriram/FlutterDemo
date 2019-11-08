import 'dart:convert';

Student studentFromJson(String str) {
    final jsonData = json.decode(str);
    return Student.fromJson(jsonData);
}

String studentToJson(Student data) {
    final dyn = data.toJson();
    return json.encode(dyn);
}

class Student {
    int id;
    String firstName;
    String lastName;
    
    Student({
        this.id,
        this.firstName,
        this.lastName,
       
    });

    factory Student.fromJson(Map<String, dynamic> json) =>  Student(
        id: json["id"],
        firstName: json["first_name"],
        lastName: json["last_name"],
       
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "first_name": firstName,
        "last_name": lastName,
       
    };
}