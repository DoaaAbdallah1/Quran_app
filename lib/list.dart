// ignore_for_file: prefer_final_fields, prefer_const_constructors, sort_child_properties_last

import 'package:audio/provider/playlist_provider.dart';
import 'package:audio/song_page_.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ListAudios extends StatefulWidget {
  const ListAudios({super.key});

  @override
  State<ListAudios> createState() => _ListAudiosState();
}

class _ListAudiosState extends State<ListAudios> {
  late final dynamic objectProvider;
  final searchBoxController = TextEditingController();
  final scrollController = ScrollController();

  void onListenerController() {
    setState(() {});
  }

  @override
  void initState() {
    scrollController.addListener(onListenerController);
    super.initState();

    objectProvider = Provider.of<PlaylistProvider>(context, listen: false);
    //objectProvider.playlist = objectProvider.playlist;
  }

  @override
  void dispose() {
    scrollController.removeListener(onListenerController);
    print("---------Stop----------");
    objectProvider.stopSong();
    super.dispose();
  }

  goToSong(int index) {
    // objectProvider.playlist=objectProvider.filterSongsPlaylist;
    objectProvider.setCurrentIndex(index);
    // Navigate to audio player widget

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => AudioPlayerWidgetPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    //final objectProvider6 = Provider.of<PlaylistProvider>(context);
    // widthScreen = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
          body: Container(
        margin: EdgeInsets.only(top: 26.h),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25.w),
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
                      style:TextStyle(
                                        fontFamily:"ReemKufi" ,
                        fontSize: 18.sp,
                        color: Color.fromRGBO(159, 138, 91, 1),
                        fontWeight: FontWeight.w400,
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Expanded(
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: 26.w),
                    height: 139.h,
                    child: Stack(
                      children: [
                        Container(
                            decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: const [
                              Color.fromRGBO(159, 138, 91, 0.8),
                              Color.fromRGBO(90, 77, 47, 0.8),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(10.r),
                        )),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Spacer(
                              flex: 1,
                            ),
                            Expanded(
                              flex: 3,
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Image.asset(
                                    "assets/book.png",
                                    width: 25.w,
                                    height: 25.h,
                                  ),
                                  // Icon(
                                  //   CupertinoIcons.book,
                                  //   size: 25.sp,
                                  //   color: Colors.white,
                                  // ),
                                  SizedBox(
                                    width: 7.w,
                                  ),
                                  Text(
                                    "رواية حفص عن عاصم",
                                    style:TextStyle(
                                        fontFamily:"Amiri" ,
                                        fontSize: 19.sp,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                            Spacer(
                              flex: 1,
                            ),
                            Expanded(
                                flex: 3,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 10.w,
                                    ),
                                    Text(
                                      "الشيخ محمود خليل الحصري",
                                      style:TextStyle(
                                        fontFamily:"Amiri" ,

                                          fontSize: 18.sp,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white),
                                    ),
                                  ],
                                )),
                            Spacer(
                              flex: 1,
                            ),
                          ],
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/Rectangle 2.png",
                          ),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(10.r),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.25),
                          blurRadius: 4,
                          offset: Offset(0, 4),
                          spreadRadius: 0.0,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 27.h,
                  ),
                  // create the search box
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.r),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.25),
                          blurRadius: 4,
                          offset: Offset(0, 4),
                          spreadRadius: 0.0,
                        )
                      ],
                      color: Color.fromRGBO(140, 114, 93, 1),
                    ),
                    margin: EdgeInsets.symmetric(horizontal: 26.w),
                    padding:
                        EdgeInsets.symmetric(vertical: 0.5.h, horizontal: 6.w),
                    child: TextField(
                      onChanged: (value) {
                        setState(() {
                          objectProvider.filterSongs(value);
                        });
                      },
                      controller: searchBoxController,
                      cursorColor: Colors.black54,
                      style: TextStyle(
                                        fontFamily:"Inter" ,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                        hintText: 'بحث باسم السورة',
                        contentPadding: EdgeInsets.only(right: 120.w),
                        prefixIcon: Icon(
                          Icons.search,
                          size: 28,
                        ),
                        prefixIconColor: Colors.white,
                        hintStyle:TextStyle(
                                        fontFamily:"Inter" ,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Expanded(
                    child: ListView.builder(
                      controller: scrollController,
                      shrinkWrap: true,
                      itemCount: objectProvider.playlist.length,
                      itemBuilder: (context, index) {
                        final itemOffset = index * 90.h;
                        final difference = scrollController.offset - itemOffset;
                        final percent = 1 - (difference / (90.h / 2));
                        double opacity = percent;
                        double scale = percent;
                        if (opacity < 0) {
                          opacity = 0;
                        }
                        if (opacity > 1) {
                          opacity = 1;
                        }
                        if (scale > 1.0) {
                          scale = 1.0;
                        }
                        return Opacity(
                          opacity: opacity,
                          child: Transform(
                            //alignment: Alignment.center,
                            transform: Matrix4.identity()..scale(scale, 1.0),

                            child: Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 26.w, vertical: 8.h),
                              padding: EdgeInsets.symmetric(vertical: 2.h),
                              //height: 63.h,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color.fromRGBO(0, 0, 0, 0.25),
                                      blurRadius: 4,
                                      offset: Offset(0, 4),
                                      spreadRadius: 0.0,
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(5.r)),
                              child: ListTile(
                                leading: Container(
                                  height: 35.75.h,
                                  width: 35.75.w,
                                  child: Center(
                                      child: Text(
                                    "${objectProvider.playlist[index].order}",
                                    style: TextStyle(
                                        fontFamily:"Amiri" ,
                                        fontSize: objectProvider
                                                    .playlist[index].order
                                                    .toString()
                                                    .length >
                                                2
                                            ? 12.2.sp
                                            : 16.sp,
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromRGBO(117, 99, 57, 1)),
                                  )),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage("assets/Star 1.png"),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                                title: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '${objectProvider.playlist[index].songName}',
                                      style: TextStyle(
                                        fontFamily:"Amiri" ,
                                          fontSize: 18.sp,
                                          fontWeight: FontWeight.w400,
                                          color:
                                              Color.fromRGBO(159, 138, 91, 1)),
                                    ),
                                    Text(
                                      "${objectProvider.playlist[index].type} - ${objectProvider.playlist[index].numberAyat} عدد آياتها",
                                      style:TextStyle(
                                        fontFamily:"Amiri" ,
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w400,
                                          color:
                                              Color.fromRGBO(125, 118, 118, 1)),
                                    )
                                  ],
                                ),
                                onTap: () async {
                                  print(objectProvider.playlist[index].order);
                                  
                                  int indexTest =
                                      objectProvider.playlist[index].order - 1;
                                  print("---------------${indexTest}");
                                  await goToSong(indexTest);
                                  searchBoxController.text = "";
                                  setState(() {
                                  
                                  });
                                  
                                },
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
