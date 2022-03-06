import 'package:flutter/material.dart';
import 'package:internative/data/favorite_count.dart';
import 'package:internative/data/users_model.dart';
import 'package:internative/models/account/get_model.dart';
import 'package:internative/models/blog/toggle_favorite_model.dart';
import 'package:internative/services/api_service.dart';
import 'package:provider/provider.dart';

class ArticleItem extends StatelessWidget {
  ArticleItem(
      {Key? key, required this.url, required this.title, required this.id})
      : super(key: key);
  final String url;
  final String title;
  final String id;

  @override
  Widget build(BuildContext context) {
    void _favorite() async {
      ToggleFavoriteModel responseToggle = await ApiService()
          .toggleFavorite(id, context.read<User>().token().toString());
      GetModel responseGet =
          await ApiService().get(context.read<User>().token().toString());
      context
          .read<FavoriteCount>()
          .setCountOfFavorite(responseGet.data!.favoriteBlogIds!.length);
    }

    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 800,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          image: DecorationImage(
              image: NetworkImage(
                url,
              ),
              fit: BoxFit.fill),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                        onPressed: _favorite,
                        icon: Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ))
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.white70,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(child: Text(title)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

