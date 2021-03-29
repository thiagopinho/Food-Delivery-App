import 'package:flutter/material.dart';
import 'food_card.dart';

//Data

import '../data/category_data.dart';

// Model

import '../models/category_model.dart';

class foodCategory extends StatelessWidget{

  final List<Category> _categories = categories; 

  @override
  Widget build(BuildContext context){
    return Container(
      height: 80.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _categories.length,
        itemBuilder: (BuildContext context, int index){
          return foodCard(
            categoryName: _categories[index].categoryName,
            imagePath: _categories[index].imagePath,
            numberOfItens: _categories[index].numberOfItens,
          );
        },
      ),
    );
  }
}