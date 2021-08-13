import 'package:flutter/material.dart';
import 'package:portfolio_app/utils/strings.dart';

class Project {

  String image;
  String title;
  String subtitle;
  String? url;
  Color bgColor;
  Project({
    required this.image,
    required this.title,
    required this.subtitle,
     this.url,
     this.bgColor = Colors.white
  });

  

}

List<Project> selectedProjects = [

  Project(image:kProjectImageUrl1, title: 'ProjectsNigeria', 
  subtitle: 'This app allows undergraduate students to have easy access to project materials',
  url: '' ),
  Project(image:kProjectImageUrl2, title: 'HaggleX', 
  subtitle: 'This is an Hagglex app Mock',
  url: hagglex, ),
   Project(image:kProjectImageUrl3, title: 'Movie App', 
  subtitle: 'A movie App',
  url: movieapp ),
  
  Project(image:kProjectImageUrl3, title: 'FoodApp', 
  subtitle: foodapp,
  url: foodapp ),
  Project(image:kProjectImageUrl4, title: 'LasserFever Diagnostic System', 
  subtitle: 'LasserFever Diagnostic system',
  url: lfds ),
];
