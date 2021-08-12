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

  Project(image:'images/pjctsnap.jpg', title: 'ProjectsNigeria', 
  subtitle: 'This app allows undergraduate students to have easy access to project materials',
  url: '' ),
  Project(image:'images/hagglexsnap.jpg', title: 'HaggleX', 
  subtitle: 'This is an Hagglex app Mock',
  url: hagglex, ),
   Project(image:'images/moviesnap.jpg', title: 'Movie App', 
  subtitle: 'A movie App',
  url: movieapp ),
  
  Project(image:'images/moviesnap.jpg', title: 'FoodApp', 
  subtitle: foodapp,
  url: foodapp ),
  Project(image:'images/lfdssnap.jpg', title: 'LasserFever Diagnostic System', 
  subtitle: 'LasserFever Diagnostic system',
  url: lfds ),
];
