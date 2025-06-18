import 'package:flutter/material.dart';

class Song {
  final String name;
  final String singer;
  final String image;
  final int duration;
  final Color color;
  Song(
      {required this.name,
      required this.singer,
      required this.image,
      required this.duration,
      required this.color});
}

List<Song> mostPopular = [
  Song(
      name: "Mangu",
      image: "assets/song1.jpg",
      singer: "Charle Cardin",
      duration: 300,
      color: Colors.grey),
  Song(
      name: "a little pace a heaven",
      image: "assets/song2.jpg",
      singer: "Avenged",
      duration: 252,
      color: Colors.red),
  Song(
      name: "Nanti Kita Seperti Ini",
      image: "assets/song3.jpg",
      singer: "Batas Senja",
      duration: 532,
      color: Colors.orange),
  Song(
      name: "Bulan & Ksatria",
      image: "assets/song4.jpg",
      singer: "Superman is dead",
      duration: 264,
      color: Colors.blue)
];

List<Song> newRelease = [
  Song(
      name: "a little pace a heaven",
      image: "assets/song2.jpg",
      singer: "Avenged",
      duration: 252,
      color: Colors.red),
  Song(
      name: "Mangu",
      image: "assets/song1.jpg",
      singer: "Charle Cardin",
      duration: 300,
      color: Colors.grey),
  Song(
      name: "Bulan & Ksatria",
      image: "assets/song4.jpg",
      singer: "Superman is dead",
      duration: 264,
      color: Colors.blue),
  Song(
      name: "Nanti Kita Seperti Ini",
      image: "assets/song3.jpg",
      singer: "Batas Senja",
      duration: 532,
      color: Colors.orange),
];