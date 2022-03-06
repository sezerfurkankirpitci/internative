import 'package:flutter/material.dart';

class CatalogItem extends StatelessWidget {
  const CatalogItem(
      {Key? key, required this.url, required this.title, required this.id})
      : super(key: key);
  final String url;
  final String title;
  final String id;

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(8),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          width: 200,
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
      ),
    );
  }
}
