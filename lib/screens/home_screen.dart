import 'package:flutter/material.dart';
import 'package:internative/data/users_model.dart';
import 'package:internative/models/account/get_model.dart';
import 'package:internative/models/blog/get_categories_model.dart';
import 'package:internative/services/api_service.dart';
import 'package:internative/widgets/article_item_widgets.dart';
import 'package:internative/widgets/catalog_item_widgets.dart';
import 'package:provider/provider.dart';

import '../data/favorite_count.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Home'),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: size.height * 0.23,
            padding: EdgeInsets.all(6),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CatalogItem(
                  title: 'Test',
                  id: '34234',
                  url:
                      'https://img.imageus.dev/https://internative.s3.eu-central-1.amazonaws.com/uploads/projectPictures/a9f7d018-e0c3-4b46-80ac-47f6fd3c48f4.jpg?width=500&height=400&mode=cover',
                ),
                CatalogItem(
                  title: 'Test',
                  id: '34234',
                  url:
                      'https://img.imageus.dev/https://internative.s3.eu-central-1.amazonaws.com/uploads/projectPictures/a9f7d018-e0c3-4b46-80ac-47f6fd3c48f4.jpg?width=500&height=400&mode=cover',
                ),
                CatalogItem(
                  title: 'Test',
                  id: '34234',
                  url:
                      'https://img.imageus.dev/https://internative.s3.eu-central-1.amazonaws.com/uploads/projectPictures/a9f7d018-e0c3-4b46-80ac-47f6fd3c48f4.jpg?width=500&height=400&mode=cover',
                ),
                CatalogItem(
                  title: 'Test',
                  id: '34234',
                  url:
                      'https://img.imageus.dev/https://internative.s3.eu-central-1.amazonaws.com/uploads/projectPictures/a9f7d018-e0c3-4b46-80ac-47f6fd3c48f4.jpg?width=500&height=400&mode=cover',
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            child: Text(
              'Blog',
              style: TextStyle(fontSize: 20),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Expanded(
            child: Padding(
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
          )
        ],
      ),
    );
  }
}
