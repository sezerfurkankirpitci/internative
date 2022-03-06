import 'package:flutter/material.dart';
import 'package:internative/widgets/article_item_widgets.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  _FavoriteScreenState createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Favorite')),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GridView.count(
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            crossAxisCount: 2,
            children: [
              ArticleItem(
                title: 'Kategori 1',
                id: '620ceffecd70d74ab56d5b7f',
                url:
                    'https://img.imageus.dev/https://internative.s3.eu-central-1.amazonaws.com/uploads/projectPictures/a9f7d018-e0c3-4b46-80ac-47f6fd3c48f4.jpg?width=500&height=400&mode=cover',
              ),
              ArticleItem(
                  title: 'Kategori 2',
                  id: '620ceffecd70d74ab56d5b7f',
                  url:
                      'https://img.imageus.dev/https://internative.s3.eu-central-1.amazonaws.com/uploads/projectPictures/a9f7d018-e0c3-4b46-80ac-47f6fd3c48f4.jpg?width=500&height=400&mode=cover'),
              ArticleItem(
                  title: 'Kategori 3',
                  id: '620ceffecd70d74ab56d5b81',
                  url:
                      'https://img.imageus.dev/https://internative.s3.eu-central-1.amazonaws.com/uploads/projectPictures/a9f7d018-e0c3-4b46-80ac-47f6fd3c48f4.jpg?width=500&height=400&mode=cover'),
              ArticleItem(
                  title: 'Kategori 4',
                  id: '620ceffecd70d74ab56d5b82',
                  url:
                      'https://img.imageus.dev/https://internative.s3.eu-central-1.amazonaws.com/uploads/projectPictures/a9f7d018-e0c3-4b46-80ac-47f6fd3c48f4.jpg?width=500&height=400&mode=cover'),
              ArticleItem(
                title: 'Kategori 1',
                id: '620ceffecd70d74ab56d5b7f',
                url:
                    'https://img.imageus.dev/https://internative.s3.eu-central-1.amazonaws.com/uploads/projectPictures/a9f7d018-e0c3-4b46-80ac-47f6fd3c48f4.jpg?width=500&height=400&mode=cover',
              ),
              ArticleItem(
                  title: 'Kategori 2',
                  id: '620ceffecd70d74ab56d5b7f',
                  url:
                      'https://img.imageus.dev/https://internative.s3.eu-central-1.amazonaws.com/uploads/projectPictures/a9f7d018-e0c3-4b46-80ac-47f6fd3c48f4.jpg?width=500&height=400&mode=cover'),
              ArticleItem(
                  title: 'Kategori 3',
                  id: '620ceffecd70d74ab56d5b81',
                  url:
                      'https://img.imageus.dev/https://internative.s3.eu-central-1.amazonaws.com/uploads/projectPictures/a9f7d018-e0c3-4b46-80ac-47f6fd3c48f4.jpg?width=500&height=400&mode=cover'),
              ArticleItem(
                  title: 'Kategori 4',
                  id: '620ceffecd70d74ab56d5b82',
                  url:
                      'https://img.imageus.dev/https://internative.s3.eu-central-1.amazonaws.com/uploads/projectPictures/a9f7d018-e0c3-4b46-80ac-47f6fd3c48f4.jpg?width=500&height=400&mode=cover'),
              ArticleItem(
                title: 'Kategori 1',
                id: '620ceffecd70d74ab56d5b7f',
                url:
                    'https://img.imageus.dev/https://internative.s3.eu-central-1.amazonaws.com/uploads/projectPictures/a9f7d018-e0c3-4b46-80ac-47f6fd3c48f4.jpg?width=500&height=400&mode=cover',
              ),
              ArticleItem(
                  title: 'Kategori 2',
                  id: '620ceffecd70d74ab56d5b7f',
                  url:
                      'https://img.imageus.dev/https://internative.s3.eu-central-1.amazonaws.com/uploads/projectPictures/a9f7d018-e0c3-4b46-80ac-47f6fd3c48f4.jpg?width=500&height=400&mode=cover'),
              ArticleItem(
                  title: 'Kategori 3',
                  id: '620ceffecd70d74ab56d5b81',
                  url:
                      'https://img.imageus.dev/https://internative.s3.eu-central-1.amazonaws.com/uploads/projectPictures/a9f7d018-e0c3-4b46-80ac-47f6fd3c48f4.jpg?width=500&height=400&mode=cover'),
              ArticleItem(
                  title: 'Kategori 4',
                  id: '620ceffecd70d74ab56d5b82',
                  url:
                      'https://img.imageus.dev/https://internative.s3.eu-central-1.amazonaws.com/uploads/projectPictures/a9f7d018-e0c3-4b46-80ac-47f6fd3c48f4.jpg?width=500&height=400&mode=cover'),
              ArticleItem(
                title: 'Kategori 1',
                id: '620ceffecd70d74ab56d5b7f',
                url:
                    'https://img.imageus.dev/https://internative.s3.eu-central-1.amazonaws.com/uploads/projectPictures/a9f7d018-e0c3-4b46-80ac-47f6fd3c48f4.jpg?width=500&height=400&mode=cover',
              ),
              ArticleItem(
                  title: 'Kategori 2',
                  id: '620ceffecd70d74ab56d5b7f',
                  url:
                      'https://img.imageus.dev/https://internative.s3.eu-central-1.amazonaws.com/uploads/projectPictures/a9f7d018-e0c3-4b46-80ac-47f6fd3c48f4.jpg?width=500&height=400&mode=cover'),
              ArticleItem(
                  title: 'Kategori 3',
                  id: '620ceffecd70d74ab56d5b81',
                  url:
                      'https://img.imageus.dev/https://internative.s3.eu-central-1.amazonaws.com/uploads/projectPictures/a9f7d018-e0c3-4b46-80ac-47f6fd3c48f4.jpg?width=500&height=400&mode=cover'),
              ArticleItem(
                  title: 'Kategori 4',
                  id: '620ceffecd70d74ab56d5b82',
                  url:
                      'https://img.imageus.dev/https://internative.s3.eu-central-1.amazonaws.com/uploads/projectPictures/a9f7d018-e0c3-4b46-80ac-47f6fd3c48f4.jpg?width=500&height=400&mode=cover'),
            ]),
      ),
    );
  }
}
