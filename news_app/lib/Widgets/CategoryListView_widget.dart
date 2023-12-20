import 'package:flutter/material.dart';
import 'package:news_app/Models/CategoryCard_model.dart';
import 'package:news_app/Widgets/CategoryCard_Widget.dart';

class CategoryListViewWidget extends StatelessWidget {
  const CategoryListViewWidget({super.key});
  final List<CategoryModel> categoryModel = const [
    CategoryModel(CategoryName: 'Business', image: 'assets/business.avif'),
    CategoryModel(
        CategoryName: 'Entertainment', image: 'assets/entertaiment.avif'),
    CategoryModel(CategoryName: 'General', image: 'assets/general.avif'),
    CategoryModel(CategoryName: 'Health', image: 'assets/health.avif'),
    CategoryModel(CategoryName: 'SCience', image: 'assets/science.avif'),
    CategoryModel(CategoryName: 'Sports', image: 'assets/sports.avif'),
    CategoryModel(CategoryName: 'Technology', image: 'assets/technology.jpeg'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categoryModel.length,
          itemBuilder: (context, index) {
            return CategoryCard_Widget(
              categoryModel: categoryModel[index],
            );
          }),
    );
  }
}
