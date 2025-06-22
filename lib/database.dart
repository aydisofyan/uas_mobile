import 'package:flutter/material.dart';

class Song {
  final String name;
  final String singer;
  final String image;
  final int duration;
  final Color color;
  final String audioPath;
  Song({
    required this.name,
    required this.singer,
    required this.image,
    required this.duration,
    required this.color,
    required this.audioPath,
  });
}

List<Song> mostPopular = [
  Song(
    name: "Mangu",
    image: "assets/song1.jpg",
    singer: "Charle Cardin",
    duration: 300,
    color: Colors.grey,
    audioPath: "assets/audio/song1.mp3",
  ),
  Song(
    name: "a little pace a heaven",
    image: "assets/song2.jpg",
    singer: "Avenged",
    duration: 252,
    color: Colors.red,
    audioPath: "assets/audio/song2.mp3",
  ),
  Song(
    name: "Nanti Kita Seperti Ini",
    image: "assets/song3.jpg",
    singer: "Batas Senja",
    duration: 532,
    color: Colors.orange,
    audioPath: "assets/audio/song3.mp3",
  ),
  Song(
    name: "Bulan & Ksatria",
    image: "assets/song4.jpg",
    singer: "Superman is dead",
    duration: 264,
    color: Colors.blue,
    audioPath: "assets/audio/song4.mp3",
  ),
];

List<Song> newRelease = [
  Song(
    name: "a little pace a heaven",
    image: "assets/song2.jpg",
    singer: "Avenged",
    duration: 252,
    color: Colors.red,
    audioPath: "assets/audio/song2.mp3",
  ),
  Song(
    name: "Mangu",
    image: "assets/song1.jpg",
    singer: "Charle Cardin",
    duration: 300,
    color: Colors.grey,
    audioPath: "assets/audio/song1.mp3",
  ),
  Song(
    name: "Bulan & Ksatria",
    image: "assets/song4.jpg",
    singer: "Superman is dead",
    duration: 264,
    color: Colors.blue,
    audioPath: "assets/audio/song4.mp3",
  ),
  Song(
    name: "Nanti Kita Seperti Ini",
    image: "assets/song3.jpg",
    singer: "Batas Senja",
    duration: 532,
    color: Colors.orange,
    audioPath: "assets/audio/song3.mp3",
  ),
];
