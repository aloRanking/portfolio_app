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
  Project(
      image: kProjectImageUrl9,
      title: 'Foodelo for Riders',
      subtitle: 'A food ordering and delivering app',
      url: foodeloRiderURL),
  Project(
      image: kProjectImageUrl8,
      title: 'Foodelo',
      subtitle: 'A food ordering and delivering app',
      url: foodeloURL),
  Project(
      image: kServiceImageUrl1,
      title: 'ProjectsNigeria',
      subtitle:
          'This app allows undergraduate students to have easy access to project materials',
      url: prjctN),
  Project(
    image: kProjectImageUrl2,
    title: 'HaggleX',
    subtitle: 'This is an Hagglex app Mock',
    url: hagglex,
  ),
  Project(
      image: kProjectImageUrl6,
      title: 'Recipe App',
      subtitle: 'A reecipe App',
      url: foodapp1),
  Project(
      image: kProjectImageUrl4,
      title: 'Covid Tracker',
      subtitle: 'A covid 19 tracker app',
      url: foodapp),
      Project(
      image: kProjectImageUrl7,
      title: 'Restuarant App',
      subtitle: 'A restuarant app',
      url: foodapp),
  Project(
      image: kProjectImageUrl5,
      title: 'LasserFever Diagnostic System',
      subtitle: 'LasserFever Diagnostic system',
      url: lfds),
];
