import 'package:flutter/cupertino.dart';

class FavoriteCount extends ChangeNotifier {
  int _countOfFavorite = 0;
  List<String>? _favoriteBlogIds;

  void setCountOfFavorite(int count) {
    _countOfFavorite = count;
    notifyListeners();
  }

  void setFavorite(List<String> data) {
    _favoriteBlogIds = data;
    _countOfFavorite = _favoriteBlogIds!.length;
    print('Data sayısı = '+_countOfFavorite.toString());
    notifyListeners();
  }

  int get countOfFavorite => _countOfFavorite;
}
