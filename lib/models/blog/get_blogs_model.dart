class GetBlogsModel {
  List<ValidationErrors>? validationErrors;
  bool? hasError;
  String? message;
  List<Data>? data;

  GetBlogsModel(
      {this.validationErrors, this.hasError, this.message, this.data});

  GetBlogsModel.fromJson(Map<String, dynamic> json) {
    if (json['ValidationErrors'] != null) {
      validationErrors = <ValidationErrors>[];
      json['ValidationErrors'].forEach((v) {
        validationErrors!.add(new ValidationErrors.fromJson(v));
      });
    }
    hasError = json['HasError'];
    message = json['Message'];
    if (json['Data'] != null) {
      data = <Data>[];
      json['Data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.validationErrors != null) {
      data['ValidationErrors'] =
          this.validationErrors!.map((v) => v.toJson()).toList();
    }
    data['HasError'] = this.hasError;
    data['Message'] = this.message;
    if (this.data != null) {
      data['Data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ValidationErrors {
  String? s;

  ValidationErrors({this.s});

  ValidationErrors.fromJson(Map<String, dynamic> json) {
    s = json['s'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['s'] = this.s;
    return data;
  }
}

class Data {
  String? title;
  String? content;
  String? image;
  String? categoryId;
  String? id;

  Data({this.title, this.content, this.image, this.categoryId, this.id});

  Data.fromJson(Map<String, dynamic> json) {
    title = json['Title'];
    content = json['Content'];
    image = json['Image'];
    categoryId = json['CategoryId'];
    id = json['Id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Title'] = this.title;
    data['Content'] = this.content;
    data['Image'] = this.image;
    data['CategoryId'] = this.categoryId;
    data['Id'] = this.id;
    return data;
  }
}