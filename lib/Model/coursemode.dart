// To parse this JSON data, do
//
//     final courseModel = courseModelFromJson(jsonString);

import 'dart:convert';

List<CourseModel> courseModelFromJson(String str) => List<CourseModel>.from(
    json.decode(str).map((x) => CourseModel.fromJson(x)));

String courseModelToJson(List<CourseModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CourseModel {
  CourseModel({
    required this.id,
    required this.title,
    required this.shortDescription,
    required this.description,
    required this.outcomes,
    required this.language,
    required this.categoryId,
    required this.subCategoryId,
    required this.section,
    required this.requirements,
    required this.price,
    required this.discountFlag,
    required this.discountedPrice,
    required this.level,
    required this.userId,
    required this.thumbnail,
    required this.videoUrl,
    required this.dateAdded,
    required this.lastModified,
    this.visibility,
    required this.isTopCourse,
    required this.isAdmin,
    required this.status,
    required this.courseOverviewProvider,
    required this.metaKeywords,
    required this.metaDescription,
    this.isFreeCourse,
    required this.courseModelExternal,
    required this.externalLink,
    required this.rating,
    required this.numberOfRatings,
    required this.instructorName,
    required this.totalEnrollment,
    required this.shareableLink,
    required this.fullPrice,
   required  this.videoCount,
  });

  String id;
  String title;
  String shortDescription;
  String description;
  List<dynamic> outcomes;
  String language;
  String categoryId;
  String subCategoryId;
  String section;
  List<dynamic> requirements;
  String price;
  String discountFlag;
  String discountedPrice;
  String level;
  String userId;
  String thumbnail;
  String videoUrl;
  String dateAdded;
  String lastModified;
  dynamic visibility;
  String isTopCourse;
  String isAdmin;
  String status;
  String courseOverviewProvider;
  String metaKeywords;
  String metaDescription;
  dynamic isFreeCourse;
  String courseModelExternal;
  String externalLink;
  int rating;
  int numberOfRatings;
  String instructorName;
  int totalEnrollment;
  String shareableLink;
  String fullPrice;
  String videoCount;

  factory CourseModel.fromJson(Map<String, dynamic> json) => CourseModel(
        id: json["id"],
        title: json["title"],
        shortDescription: json["short_description"],
        description: json["description"],
        outcomes: List<dynamic>.from(json["outcomes"].map((x) => x)),
        language: json["language"],
        categoryId: json["category_id"],
        subCategoryId: json["sub_category_id"],
        section: json["section"],
        requirements: List<dynamic>.from(json["requirements"].map((x) => x)),
        price: json["price"],
        discountFlag: json["discount_flag"],
        discountedPrice: json["discounted_price"],
        level: json["level"],
        userId: json["user_id"],
        thumbnail: json["thumbnail"],
        videoUrl: json["video_url"],
        dateAdded: json["date_added"],
        lastModified: json["last_modified"],
        visibility: json["visibility"],
        isTopCourse: json["is_top_course"],
        isAdmin: json["is_admin"],
        status: json["status"],
        courseOverviewProvider: json["course_overview_provider"],
        metaKeywords: json["meta_keywords"],
        metaDescription: json["meta_description"],
        isFreeCourse: json["is_free_course"],
        courseModelExternal: json["external"],
        externalLink: json["external_link"],
        rating: json["rating"],
        numberOfRatings: json["number_of_ratings"],
        instructorName: json["instructor_name"],
        totalEnrollment: json["total_enrollment"],
        shareableLink: json["shareable_link"],
        fullPrice: json["full_price"],
        videoCount: json["video_count"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "short_description": shortDescription,
        "description": description,
        "outcomes": List<dynamic>.from(outcomes.map((x) => x)),
        "language": language,
        "category_id": categoryId,
        "sub_category_id": subCategoryId,
        "section": section,
        "requirements": List<dynamic>.from(requirements.map((x) => x)),
        "price": price,
        "discount_flag": discountFlag,
        "discounted_price": discountedPrice,
        "level": level,
        "user_id": userId,
        "thumbnail": thumbnail,
        "video_url": videoUrl,
        "date_added": dateAdded,
        "last_modified": lastModified,
        "visibility": visibility,
        "is_top_course": isTopCourse,
        "is_admin": isAdmin,
        "status": status,
        "course_overview_provider": courseOverviewProvider,
        "meta_keywords": metaKeywords,
        "meta_description": metaDescription,
        "is_free_course": isFreeCourse,
        "external": courseModelExternal,
        "external_link": externalLink,
        "rating": rating,
        "number_of_ratings": numberOfRatings,
        "instructor_name": instructorName,
        "total_enrollment": totalEnrollment,
        "shareable_link": shareableLink,
        "full_price": fullPrice,
        "video_count": videoCount,
      };
}
