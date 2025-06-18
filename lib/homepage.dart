import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.light,
        backgroundColor: Colors.grey[900],
        elevation: 0,
        leading: Icon(Icons.search, color: Colors.white,),
        actions: [
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Halo, MASABI",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                "indonesia",
                style: TextStyle(fontSize: 10, color: Colors.white),
              ),
            ],
          ),
          Padding(padding: EdgeInsets.only(right: 8, left: 15), child: Icon(Icons.notifications_active_outlined, size: 30, color: Colors.white,) ,),
        ],
      ),
      body: Stack(
        children: [
        ],
      ),
    );
  }
}
