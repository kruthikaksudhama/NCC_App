import 'package:flutter/material.dart';
import 'package:ncc_app/videoPlayer.dart';
import 'navDrawer.dart';
import 'package:video_player/video_player.dart';


class HomeScreen extends StatefulWidget{
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          drawer: NavDrawer(),
          appBar: AppBar(
            backgroundColor: Color(0xff113448),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("NCC NITK"),
                Image.asset('images/ncc_logo.png', width: 50, height: 50, fit: BoxFit.cover,),
              ],
            ),
          ),
          body: Column(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(25, 20, 25, 5),
                    child: const Text("2 KAR ENGR COY NCC",
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.normal,
                        color: Color(0xff444442)
                      ),
                      textAlign: TextAlign.center,
                    )
                ),
                Container(
                    padding: EdgeInsets.fromLTRB(50, 10, 50, 0),
                    child: const Text("Discipline Patriotism Leadership Motivation It All Reflects",
                      style: TextStyle(
                          fontSize: 18,
                          //fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.normal,
                          color: Color(0xff444442)
                      ),
                      textAlign: TextAlign.center,
                    )
                ),
                Container(
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                    child: const Text("2 Kar Engr Coy NCC, is also called NCC - NITK. NCC in NITK has been functional since the inception of the institute. "
                        "NCC welcomes the cadets to the world of patriotism, discipline, adventure, courage and motivation. It is important to remember that"
                        " becoming a good NCC cadet is not an easy task. A lot of hard work and dedication is required to achieve the expected goal. Here, in "
                        "NCC you are taught to be a good leader, a decision maker, a good team member, and be a disciplined citizen. NCC has a very close "
                        "association with the Indian Armed Forces. NITK has the Army wing of NCC.",
                      style: TextStyle(
                          fontSize: 16,
                          //fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.normal,
                          color: Color(0xff939393)
                      ),
                      textAlign: TextAlign.justify,
                    )
                ),
                Expanded(
                  child: ChewieListItem(
                      controller: VideoPlayerController.network('https://drive.google.com/uc?export=download&id=1CEgyDowPAR2fhOi4gDY2AgWiRJ34qNGy'),
                      //controller: VideoPlayerController.asset('videos/2KarEngCoyNCC.mp4'),
                    //https://drive.google.com/file/d/1CEgyDowPAR2fhOi4gDY2AgWiRJ34qNGy/view?usp=sharing
                      ),
                )
              ],
            ),
          ),
    );
  }
}
