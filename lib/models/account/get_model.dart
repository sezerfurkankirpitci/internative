class GetModel {
  List<ValidationErrors>? validationErrors;
  bool? hasError;
  String? message;
  Data? data;

  GetModel({this.validationErrors, this.hasError, this.message, this.data});

  GetModel.fromJson(Map<String, dynamic> json) {
    if (json['ValidationErrors'] != null) {
      validationErrors = <ValidationErrors>[];
      json['ValidationErrors'].forEach((v) {
        validationErrors!.add(new ValidationErrors.fromJson(v));
      });
    }
    hasError = json['HasError'];
    message = json['Message'];
    data = json['Data'] != null ? new Data.fromJson(json['Data']) : null;
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
      data['Data'] = this.data!.toJson();
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
  String? id;
  String? email;
  String? image;
  Location? location;
  List<String>? favoriteBlogIds;

  Data({this.id, this.email, this.image, this.location, this.favoriteBlogIds});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    email = json['Email'];
    image = json['Image'];
    location = json['Location'] != null
        ? new Location.fromJson(json['Location'])
        : null;
    favoriteBlogIds = json['FavoriteBlogIds'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Id'] = this.id;
    data['Email'] = this.email;
    data['Image'] = this.image;
    if (this.location != null) {
      data['Location'] = this.location!.toJson();
    }
    data['FavoriteBlogIds'] = this.favoriteBlogIds;
    return data;
  }
}

class Location {
  String? longtitude;
  String? latitude;

  Location({this.longtitude, this.latitude});

  Location.fromJson(Map<String, dynamic> json) {
    longtitude = json['Longtitude'];
    latitude = json['Latitude'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Longtitude'] = this.longtitude;
    data['Latitude'] = this.latitude;
    return data;
  }
}