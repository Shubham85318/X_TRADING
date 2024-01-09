import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ListModel {
  final String image;
  final String name;
  final IconData icon;
  final String persentage;
  final String button;

  ListModel(
      {required this.image,
      required this.name,
      required this.icon,
      required this.persentage,
      required this.button});
}

List<ListModel> mainList = [];

List<ListModel> getFavoritesModel = [
  ListModel(
      image: "assets/flags_icons/eur-usd-flags.png",
      name: "EURUSD",
      button: 'view',
      icon: FontAwesomeIcons.anglesDown,
      persentage: '-0.37%'),
  ListModel(
      image: "assets/flags_icons/eur-usd-flags.png",
      name: "EURUSD",
      button: 'view',
      icon: FontAwesomeIcons.anglesUp,
      persentage: '-0.37%'),
  ListModel(
      image: "assets/flags_icons/eur-usd-flags.png",
      name: "EURUSD",
      button: 'view',
      icon: FontAwesomeIcons.anglesDown,
      persentage: '-0.37%'),
  ListModel(
      image: "assets/flags_icons/eur-usd-flags.png",
      name: "EURUSD",
      button: 'view',
      icon: FontAwesomeIcons.anglesUp,
      persentage: '0.37%'),
  ListModel(
      image: "assets/flags_icons/eur-usd-flags.png",
      name: "EURUSD",
      button: 'view',
      icon: FontAwesomeIcons.anglesUp,
      persentage: '0.37%'),
  ListModel(
      image: "assets/flags_icons/eur-usd-flags.png",
      name: "EURUSD",
      button: 'view',
      icon: FontAwesomeIcons.anglesUp,
      persentage: '0.37%'),
  ListModel(
      image: "assets/flags_icons/eur-usd-flags.png",
      name: "EURUSD",
      button: 'view',
      icon: FontAwesomeIcons.anglesUp,
      persentage: '0.37%'),
];

List<ListModel> getHotModel = [
  ListModel(
      image: "assets/flags_icons/eur-usd-flags.png",
      name: "EURUSD",
      button: 'view',
      icon: FontAwesomeIcons.anglesUp,
      persentage: '0.37%'),
];

List<ListModel> getPrintIfViewModel = [
  ListModel(
      image: "assets/flags_icons/eur-usd-flags.png",
      name: "EURUSD",
      button: 'view',
      icon: FontAwesomeIcons.anglesUp,
      persentage: '0.37%'),
  ListModel(
      image: "assets/flags_icons/eur-usd-flags.png",
      name: "EURUSD",
      button: 'view',
      icon: FontAwesomeIcons.anglesUp,
      persentage: '0.37%'),
  ListModel(
      image: "assets/flags_icons/eur-usd-flags.png",
      name: "EURUSD",
      button: 'view',
      icon: FontAwesomeIcons.anglesUp,
      persentage: '0.37%'),
];

List<ListModel> getOpenPositionModel = [
  ListModel(
      image: "assets/flags_icons/eur-usd-flags.png",
      name: "EURUSD",
      button: 'view',
      icon: FontAwesomeIcons.anglesUp,
      persentage: '0.37%'),
  ListModel(
      image: "assets/flags_icons/eur-usd-flags.png",
      name: "EURUSD",
      button: 'view',
      icon: FontAwesomeIcons.anglesUp,
      persentage: '0.37%'),
];

List<ListModel> getClosedPositionModel = [
  ListModel(
      image: "assets/flags_icons/eur-usd-flags.png",
      name: "EURUSD",
      button: 'view',
      icon: FontAwesomeIcons.anglesUp,
      persentage: '0.37%'),
  ListModel(
      image: "assets/flags_icons/eur-usd-flags.png",
      name: "EURUSD",
      button: 'view',
      icon: FontAwesomeIcons.anglesUp,
      persentage: '0.37%'),
];
