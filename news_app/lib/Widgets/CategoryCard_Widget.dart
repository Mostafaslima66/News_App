
import 'package:flutter/material.dart';
import 'package:news_app/Models/CategoryCard_model.dart';
import 'package:news_app/Widgets/category_view.dart';

class CategoryCard_Widget extends StatelessWidget {
  const CategoryCard_Widget(
      {super.key, required this.categoryModel});
  final CategoryModel categoryModel;
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (BuildContext context) {
            return  categoryview(
              category:categoryModel.CategoryName,
              
            );
          }));
        },
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                  image: AssetImage(categoryModel.image), fit: BoxFit.fill)),
          height: 100,
          width: 200,
          child: Center(
            child: Text(
              categoryModel.CategoryName,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
