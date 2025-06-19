import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:uas_mobile/database.dart';

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
        leading: Icon(Icons.search, color: Colors.white),

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
          Padding(
            padding: EdgeInsets.only(right: 20, left: 15),
            child: Icon(
              Icons.notifications_active_outlined,
              size: 30,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    " most",
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    " popular",
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30, top: 5, bottom: 20),
                  child: Text(
                    "960 playlist",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Container(height: 300, child: TrackWidget(refresh)),
                CircleTrackWidget(
                  song: newRelease,
                  title: "new releases",
                  subtitle: "3456 songs",
                  notifyParents: refresh,
                ),
                CircleTrackWidget(
                  song: mostPopular,
                  title: "Your playlist",
                  subtitle: "345 songs",
                  notifyParents: refresh,
                ),
                SizedBox(height: 130),
              ],
            ),
          ),
          Align(alignment: Alignment.bottomCenter, child: PlayerHome(currentSong), 
          )
        ],
      ),
    );
  }

  refresh() {
    setState(() {});
  }
}

Song currentSong = Song(
  name: "tittle",
  singer: "singer",
  image: "assets/song1.jpg",
  duration: 100,
  color: Colors.black,
);
double currentSlider = 0;

class PlayerHome extends StatefulWidget {
  final Song song;
  PlayerHome(this.song);

  @override
  _PlayerHomeState createState() => _PlayerHomeState();
}

class _PlayerHomeState extends State<PlayerHome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.only(topRight: Radius.circular(30)),

      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(widget.song.image),
                    radius: 30,
                  ),
                  SizedBox(width: 10 ,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.song.name, style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold 
                      ),),
                      Text(widget.song.singer,
                      style: TextStyle(
                        color: Colors.white54,
                      ),)
                    ],
                    
                  ),
                ],
              ),
              Row(
            children: [
              Icon(Icons.skip_previous_outlined, color: Colors.white, size: 30),
              SizedBox(
                width: 10,
              ),
              Icon(Icons.pause, color: Colors.white, size: 30),
              SizedBox(width: 10,),
              Icon(Icons.skip_next_outlined, color: Colors.white, size: 30),
              SizedBox(
                width: 10,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(Duration(seconds: currentSlider.toInt()).toString().split('.')[0].substring(2),
              style: TextStyle(color: Colors.white),),
              
            ],
          )
              
            ],
          ),
          
        ],
      ),
    );
  }
}

class TrackWidget extends StatelessWidget {
  final Function() notifyParent;
  TrackWidget(this.notifyParent);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: mostPopular.length,
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          margin: EdgeInsets.all(10),
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: mostPopular[index].color,
                blurRadius: 1,
                spreadRadius: 0.3,
              ),
            ],
            image: DecorationImage(
              image: AssetImage(mostPopular[index].image),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  mostPopular[index].name,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  mostPopular[index].singer,
                  style: TextStyle(
                    color: Colors.white54,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        );
      },
    );
  }
}

class CircleTrackWidget extends StatelessWidget {
  final String title;
  final List<Song> song;
  final String subtitle;
  final Function() notifyParents;

  const CircleTrackWidget({
    required this.title,
    required this.song,
    required this.subtitle,
    required this.notifyParents,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20, top: 10),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, bottom: 20),
            child: Text(
              subtitle,
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
            ),
          ),
          Container(
            height: 120,
            child: ListView.builder(
              itemCount: song.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(song[index].image),
                        radius: 40,
                      ),
                      SizedBox(height: 5),
                      Text(
                        song[index].name,
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        song[index].singer,
                        style: TextStyle(color: Colors.white54),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
