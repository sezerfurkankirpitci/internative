class GetCategoriesModel {
  List<ValidationErrors>? validationErrors;
  bool? hasError;
  String? message;
  List<Data>? data;

  GetCategoriesModel(
      {this.validationErrors, this.hasError, this.message, this.data});

  GetCategoriesModel.fromJson(Map<String, dynamic> json) {
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
  String? key;
  String? value;

  ValidationErrors({this.key, this.value});

  ValidationErrors.fromJson(Map<String, dynamic> json) {
    key = json['Key'];
    value = json['Value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Key'] = this.key;
    data['Value'] = this.value;
    return data;
  }
}

class Data {
  String? title;
  String? image;
  String? id;

  Data({this.title, this.image, this.id});

  Data.fromJson(Map<String, dynamic> json) {
    title = json['Title'];
    image = json['Image'];
    id = json['Id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Title'] = this.title;
    data['Image'] = this.image;
    data['Id'] = this.id;
    return data;
  }
}