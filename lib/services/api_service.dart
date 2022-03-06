import 'dart:convert';

import 'package:internative/models/account/get_model.dart';
import 'package:internative/models/account/update_model.dart';
import 'package:internative/models/blog/get_blogs_model.dart';
import 'package:internative/models/blog/get_categories_model.dart';
import 'package:internative/models/blog/toggle_favorite_model.dart';
import 'package:internative/models/general/upload_image_model.dart';
import 'package:internative/models/login/signin_model.dart';
import 'package:internative/models/login/signup_model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  Future<SignUpModel> signUp(
      String email, String password, String rePassword) async {
    var headers = <String, String>{
      "Accept": "Application/json",
      'Content-Type': 'application/json; charset=UTF-8',
    };
    var data = jsonEncode(<String, String>{
      'email': email,
      'password': password,
      "PasswordRetry": rePassword
    });
    var response = await http.post(
      Uri.parse('http://test20.internative.net/Login/SignUp'),
      headers: headers,
      body: data,
    );
    SignUpModel signUpResponse =
        SignUpModel.fromJson(jsonDecode(response.body));
    return signUpResponse;
  }

  Future<SignInModel> signIn(String email, String password) async {
    var headers = <String, String>{
      'accept': '*/*',
      'Content-Type': 'application/json',
    };

    var data =
        jsonEncode(<String, String>{'email': email, 'password': password});
    var response = await http.post(
      Uri.parse('http://test20.internative.net/Login/SignIn'),
      headers: headers,
      body: data,
    );
    SignInModel signInResponse =
        SignInModel.fromJson(jsonDecode(response.body));
    return signInResponse;
  }

  Future<UploadImageModel> uploadImage(String path, String token) async {
    final response = await http.post(
      Uri.parse('http://test20.internative.net/General/UploadImage'),
      headers: <String, String>{
        'accept': 'application/json',
        'Authorization': 'Bearer ' + token,
        'Content-Type': 'multipart/form-data',
      },
      body: jsonEncode(<String, String>{}),
    );
    //print(response.body);
    UploadImageModel uploadImageResponse =
        UploadImageModel.fromJson(jsonDecode(response.body));
    return uploadImageResponse;
  }

  Future<GetModel> get(String token) async {
    var headers = <String, String>{
      'accept': '*/*',
      'Authorization': 'Bearer ' + token,
    };
    var response = await http.get(
        Uri.parse('http://test20.internative.net/Account/Get'),
        headers: headers);
    GetModel getResponse = GetModel.fromJson(jsonDecode(response.body));
    return getResponse;
  }

  Future<UpdateModel> update(
      String image, Location location, String token) async {
    var headers = <String, String>{
      "Accept": "Application/json",
      'Authorization': 'Bearer ' + token,
      'Content-Type': 'application/json; charset=UTF-8',
    };
    var data =
        jsonEncode(<String, dynamic>{"Image": image, "Location": location});
    var response = await http.post(
      Uri.parse('http://test20.internative.net/Account/Update'),
      headers: headers,
      body: data,
    );
    UpdateModel responseUpdateModel =
        UpdateModel.fromJson(jsonDecode(response.body));
    return responseUpdateModel;
  }

  Future<ToggleFavoriteModel> toggleFavorite(String id, String token) async {
    var headers = <String, String>{
      'accept': '*/*',
      'Authorization': 'Bearer ' + token,
      'Content-Type': 'application/json',
    };
    var data = jsonEncode({"Id": id});

    var response = await http.post(
        Uri.parse('http://test20.internative.net/Blog/ToggleFavorite'),
        headers: headers,
        body: data);
    ToggleFavoriteModel responseToggleFavoriteModel =
        ToggleFavoriteModel.fromJson(jsonDecode(response.body));
    return responseToggleFavoriteModel;
  }

  Future<GetBlogsModel> getBlogs(String catagoriId, String token) async {
    var headers = <String, String>{
      'accept': '*/*',
      'Authorization': 'Bearer ' + token,
    };
    var data = jsonEncode({"CategoryId": catagoriId});
    var response = await http.post(
        Uri.parse('http://test20.internative.net/Blog/GetBlogs'),
        headers: headers,
        body: data);
    GetBlogsModel blogs = GetBlogsModel.fromJson(jsonDecode(response.body));
    return blogs;
  }

  Future<GetCategoriesModel> getCategories(String token) async {
    var headers = <String, String>{
      'accept': '*/*',
      'Authorization': 'Bearer ' + token,
    };
    var response = await http.get(
        Uri.parse('http://test20.internative.net/Blog/GetCategories'),
        headers: headers);
    GetCategoriesModel responseGetCategories =
        GetCategoriesModel.fromJson(jsonDecode(response.body));
    return responseGetCategories;
  }
}
