// ignore_for_file: prefer_const_constructors, avoid_print, non_constant_identifier_names, use_super_parameters

import 'package:animated_background/animated_background.dart';
import 'package:audio/provider/playlist_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AudioPlayerWidgetPage extends StatefulWidget {
  const AudioPlayerWidgetPage({Key? key}) : super(key: key);

  @override
  State<AudioPlayerWidgetPage> createState() => _AudioPlayerWidgetPageState();
}

class _AudioPlayerWidgetPageState extends State<AudioPlayerWidgetPage>
    with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    print("---------Stop----------");

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final objectProvider = Provider.of<PlaylistProvider>(context);
    return SafeArea(
      child: Scaffold(
        body: AnimatedBackground(
          behaviour: RandomParticleBehaviour(
            options: ParticleOptions(
              spawnMaxRadius: 8, // raduius of background object
              spawnMinSpeed: objectProvider.isPlaying
                  ? 15
                  : 0, // minimum speed of object moving
              particleCount: 150, // no of objects in background
              spawnMaxSpeed: objectProvider.isPlaying ? 15 : 15,
              spawnOpacity: 0.05, // maximum speed of object moving in background
              baseColor: const Color.fromRGBO(140, 114, 93, 1),
              // image: Image(image: AssetImage("images/coca cola.png")),
              // that't it from today video
            ),
          ),
          vsync: this,
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //app bar
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: 10.w, vertical: 25.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/icon.png",
                              height: 38.h,
                              width: 48.w,
                              fit: BoxFit.cover,
                            ),
                            Text('القرآن الكريم',
                                style: TextStyle(
                                        fontFamily:"ReemKufi" ,
                                  fontSize: 18.sp,
                                  color: Color.fromRGBO(159, 138, 91, 1),
                                  fontWeight: FontWeight.w400,
                                )),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(140, 114, 93, 0.2),
                          borderRadius: BorderRadius.circular(1000)
                  
                  
                        ),
                        child: IconButton(
                            onPressed: () async {
                              objectProvider.stopSong();
                              Navigator.pop(context);
                            },
                        
                            //  highlightColor: Colors.black,
                            //splashColor: Colors.black,
                            icon: Icon(
                              Icons.keyboard_arrow_left,
                              color: Color.fromRGBO(140, 114, 93, 1),
                              size: 25.sp,
                            )),
                      ),
                    ],
                  ),
              
                  Spacer(flex: 2,),
                  //setting the music cover
                  Expanded(
                    flex: 15,
                    child: Container(
                      //height: 700,
                      //  height: objectProvider.isPlaying ? 90.h :10.h,
                      // curve: Curves.easeInOut,
                      // duration: const Duration(seconds: 30),
                      margin: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width/10, vertical: 15.h),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15.r),
                            child: Image.asset(
                              "assets/cover2.jpg",
                              height:  MediaQuery.of(context).size.height,
                              width: MediaQuery.of(context).size.width ,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            left: 0,
                            child: AnimatedContainer(
                              height: objectProvider.isPlaying ? 90.h : 0.h,
                              curve: Curves.easeInOut,
                              duration: const Duration(seconds: 2),
                              child: SingleChildScrollView(
                                child: Container(
                                  width: double.infinity,
                                  height: 90.h,
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 15.w),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15.r),
                                      color:
                                          Color.fromRGBO(140, 114, 93, 0.53)),
                                  child: Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            "الشيخ محمود خليل الحصري",
                                            style: TextStyle(
                                        fontFamily:"Amiri" ,
                                              fontSize: 20.sp,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          Text(
                                            objectProvider
                                                .filterSongsPlaylist[
                                                    objectProvider
                                                        .currentIndex!]
                                                .songName,
                                            style:TextStyle(
                                        fontFamily:"Amiri" ,
                                              fontSize: 20.sp,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      )),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                   
                   //audio slider
                  Container(
                    
                    padding: EdgeInsets.symmetric(vertical: 1.h),
                    margin: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width/16, vertical: 10.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.r),
                      color: Color.fromRGBO(140, 114, 93, 1),
                    ),
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          margin: EdgeInsets.symmetric(
                              horizontal: 15.h, vertical: 12.h),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.r),
                              color: Colors.white),
                          child: Column(
                            children: [
                              SizedBox(
                                width: double.infinity,
                                child: Slider(
                                
                                  min: 0.0,
                                  value: objectProvider.duration.inSeconds
                                      .toDouble(),
                                  max: objectProvider.totalDuration.inSeconds
                                      .toDouble(),
                                  onChanged: (newValue) async {
                                    objectProvider.seekTo(
                                        Duration(seconds: newValue.toInt()));
                                  },
                                  activeColor:
                                      Color.fromRGBO(140, 114, 93, 1),
                                ),
                              ),
                              
                              Container(
                                margin:
                                    EdgeInsets.symmetric(horizontal: 16.w),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "${(objectProvider.duration.inSeconds % 60).floor().toString().padLeft(2, "0")} : ${(objectProvider.duration.inSeconds / 60).floor().toString().padLeft(2, "0")} : ${(objectProvider.duration.inSeconds / (60 * 60)).floor().toString().padLeft(2, "0")}",
                                      style: TextStyle(
                                        fontFamily:"Amiri" ,
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w400,
                                          color: Color.fromRGBO(
                                              140, 114, 93, 1)),
                                    ),
                                    Text(
                                      "${(objectProvider.totalDuration.inSeconds % 60).toString().padLeft(2, '0')} : ${(objectProvider.totalDuration.inMinutes % 60).toString().padLeft(2, '0')} : ${(objectProvider.totalDuration.inHours).toString().padLeft(2, '0')}",
                                      style:TextStyle(
                                        fontFamily:"Amiri" ,
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w400,
                                          color: Color.fromRGBO(
                                              140, 114, 93, 1)),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        //setting the player controller
                        SizedBox(
                          height: 2.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(60.r),
                                border: Border.all(color: Colors.white),
                              ),
                              width: 50.w,
                              height: 50.h,
                              child: InkWell(
                                onTap: () async {
                                  objectProvider.playPreviousSong();
                                },
                                child: Center(
                                  child: Icon(
                                    Icons.fast_forward_rounded,
                                    color: Colors.white,
                                    size: 32.sp,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(
                                horizontal: 20.w,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(60.r),
                                border: Border.all(color: Colors.white),
                              ),
                              width: 60.w,
                              height: 60.h,
                              child: InkWell(
                                onTap: () async {
                                  objectProvider.resumeOrPause();
                                },
                                child: Center(
                                  child: objectProvider.isPlaying
                                      ? Icon(
                                          Icons.pause,
                                          color: Colors.white,
                                          size: 38.sp,
                                        )
                                      : Icon(
                                          Icons.play_arrow,
                                          color: Colors.white,
                                          size: 38.sp,
                                        ),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(60.r),
                                border: Border.all(color: Colors.white),
                              ),
                              width: 50.w,
                              height: 50.h,
                              child: InkWell(
                                onTap: () async {
                                  objectProvider.playNextSong();
                                },
                                child: Center(
                                  child: Icon(
                                    Icons.fast_rewind_rounded,
                                    color: Colors.white,
                                    size: 32.sp,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        )
                      ],
                    ),
                  ),
                  
                  Spacer(flex: 5,)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
