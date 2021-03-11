import 'package:daftpunk/src/widgets/onboardingSlider.dart';
import 'package:flutter/material.dart';

class DummyData {
  static final List<Widget> pages = [
    OnboardingSlider(
      title: "Welcome",
      description:
          "Lorem Ipsum is simply dummy\ntext Ipsum is simply dummy text\ntext Ipsum is simply dummy text",
      image: "assets/images/2.png",
    ),
    OnboardingSlider(
      title: "Join",
      description:
          "Lorem Ipsum is simply dummy\ntext Ipsum is simply dummy text\ntext Ipsum is simply dummy text",
      image: "assets/images/3.png",
    ),
    OnboardingSlider(
      title: "Get Help",
      description:
          "Lorem Ipsum is simply dummy\ntext Ipsum is simply dummy text\ntext Ipsum is simply dummy text",
      image: "assets/images/4.png",
    ),
    OnboardingSlider(
      title: "Enjoy",
      description:
          "Lorem Ipsum is simply dummy\ntext Ipsum is simply dummy text\ntext Ipsum is simply dummy text",
      image: "assets/images/5.png",
    ),
  ];
  static const List<String> albums = [
    'assets/images/d1.jpg',
    'assets/images/d2.jpg',
    'assets/images/d3.jpg',
    'assets/images/d4.jpg',
    'assets/images/d5.jpg',
    'assets/images/d6.jpg',
    'assets/images/d7.jpg'
  ];
}
