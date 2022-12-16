// To parse this JSON data, do
//
//     final CategoriesModel = CategoriesModelFromJson(jsonString);

import 'dart:convert';

List<CategoriesModel> CategoriesModelFromJson(String str) => List<CategoriesModel>.from(json.decode(str).map((x) => CategoriesModel.fromJson(x)));

String CategoriesModelToJson(List<CategoriesModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CategoriesModel {
    CategoriesModel({
        required this.id,
        required this.code,
        required this.name,
        this.parent,
        this.slug,
        this.dateAdded,
        this.lastModified,
        this.fontAwesomeClass,
        this.thumbnail,
        this.order,
        this.numberOfCourses,
    });

    String? id;
    String? code;
    String? name;
    String? parent;
    String? slug;
    String? dateAdded;
    String? lastModified;
    FontAwesomeClass? fontAwesomeClass;
    String? thumbnail;
    String? order;
    int? numberOfCourses;

    factory CategoriesModel.fromJson(Map<String, dynamic> json) => CategoriesModel(
        id: json["id"],
        code: json["code"],
        name: json["name"],
        parent: json["parent"],
        slug: json["slug"],
        dateAdded: json["date_added"],
        lastModified: json["last_modified"],
        fontAwesomeClass: fontAwesomeClassValues.map[json["font_awesome_class"]],
        thumbnail: json["thumbnail"],
        order: json["order"],
        numberOfCourses: json["number_of_courses"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "code": code,
        "name": name,
        "parent": parent,
        "slug": slug,
        "date_added": dateAdded,
        "last_modified": lastModified,
        "font_awesome_class": fontAwesomeClassValues.reverse[fontAwesomeClass],
        "thumbnail": thumbnail,
        "order": order,
        "number_of_courses": numberOfCourses,
    };
}

enum FontAwesomeClass { FAS_FA_CHESS }

final fontAwesomeClassValues = EnumValues({
    "fas fa-chess": FontAwesomeClass.FAS_FA_CHESS
});

class EnumValues<T> {
   Map<String, T> map;
   late  Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        if (reverseMap == null) {
            reverseMap = map.map((k, v) => new MapEntry(v, k));
        }
        return reverseMap;
    }
}
