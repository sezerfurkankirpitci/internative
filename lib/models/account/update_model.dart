class UpdateModel {
  List<ValidationErrors>? validationErrors;
  bool? hasError;
  String? message;
  bool? data;

  UpdateModel({this.validationErrors, this.hasError, this.message, this.data});

  UpdateModel.fromJson(Map<String, dynamic> json) {
    if (json['ValidationErrors'] != null) {
      validationErrors = <ValidationErrors>[];
      json['ValidationErrors'].forEach((v) {
        validationErrors!.add(new ValidationErrors.fromJson(v));
      });
    }
    hasError = json['HasError'];
    message = json['Message'];
    data = json['Data'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.validationErrors != null) {
      data['ValidationErrors'] =
          this.validationErrors!.map((v) => v.toJson()).toList();
    }
    data['HasError'] = this.hasError;
    data['Message'] = this.message;
    data['Data'] = this.data;
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