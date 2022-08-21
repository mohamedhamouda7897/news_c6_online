import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Category{

  String id;
  String title;
  String image;
  Color ColorCode;
  Category(this.id, this.title, this.image, this.ColorCode);



  static List<Category> getCategories(){
    return [
      Category('sports', 'Sports', 'assets/images/sports.png', Color(0xFFC91C22)),
      Category('technology', 'Technology', 'assets/images/politics.png', Color(0xFF003E90)),
      Category('health', 'Health', 'assets/images/health.png', Color(0xFFED1E79)),
      Category('business', 'Business', 'assets/images/bussines.png', Color(0xFFCF7E48)),
      Category('science', 'Science', 'assets/images/science.png', Color(0xFFF2D352)),
      Category('entertainment', 'Entertainment', 'assets/images/environment.png', Color(0xFF4882CF)),
    ];
  }
}