import 'package:audio/models/song.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class PlaylistProvider extends ChangeNotifier {
  // Playlist of songs

  List<Song> _playlist = [
    Song(
        songName: "سورة الفاتحة",
        path: "001.mp3",
        numberAyat: 7,
        type: "مكية",
        order: 1),
    Song(
        songName: "سورة البقرة",
        path: "002.mp3",
        numberAyat: 286,
        type: "مدنية",
        order: 2),
    Song(
        songName: "سورة آل عمران",
        path: "003.mp3",
        numberAyat: 200,
        type: "مدنية",
        order: 3),
    Song(
        songName: "سورة النساء",
        path: "004.mp3",
        numberAyat: 176,
        type: "مدنية",
        order: 4),
    Song(
        songName: "سورة المائدة",
        path: "005.mp3",
        numberAyat: 120,
        type: "مدنية",
        order: 5),
    Song(
        songName: "سورة الأنعام",
        path: "006.mp3",
        numberAyat: 165,
        type: "مكية",
        order: 6),
    Song(
        songName: "سورة الأعراف",
        path: "007.mp3",
        numberAyat: 206,
        type: "مكية",
        order: 7),
    Song(
        songName: "سورة الأنفال",
        path: "008.mp3",
        numberAyat: 75,
        type: "مدنية",
        order: 8),
    Song(
        songName: "سورة التوبة",
        path: "009.mp3",
        numberAyat: 129,
        type: "مدنية",
        order: 9),
    Song(
        songName: "سورة يونس",
        path: "010.mp3",
        numberAyat: 109,
        type: "مكية",
        order: 10),
    Song(
        songName: "سورة هود",
        path: "011.mp3",
        numberAyat: 123,
        type: "مكية",
        order: 11),
    Song(
        songName: "سورة يوسف",
        path: "012.mp3",
        numberAyat: 111,
        type: "مكية",
        order: 12),
    Song(
        songName: "سورة الرعد",
        path: "013.mp3",
        numberAyat: 43,
        type: "مدنية",
        order: 13),
    Song(
        songName: "سورة إبراهيم",
        path: "014.mp3",
        numberAyat: 52,
        type: "مكية",
        order: 14),
    Song(
        songName: "سورة الحجر",
        path: "015.mp3",
        numberAyat: 99,
        type: "مكية",
        order: 15),
    Song(
        songName: "سورة النحل",
        path: "016.mp3",
        numberAyat: 128,
        type: "مكية",
        order: 16),
    Song(
        songName: "سورة الإسراء",
        path: "017.mp3",
        numberAyat: 111,
        type: "مكية",
        order: 17),
    Song(
        songName: "سورة الكهف",
        path: "018.mp3",
        numberAyat: 110,
        type: "مكية",
        order: 18),
    Song(
        songName: "سورة مريم",
        path: "019.mp3",
        numberAyat: 98,
        type: "مكية",
        order: 19),
    Song(
        songName: "سورة طه",
        path: "020.mp3",
        numberAyat: 135,
        type: "مكية",
        order: 20),
    Song(
        songName: "سورة الأنبياء",
        path: "021.mp3",
        numberAyat: 112,
        type: "مكية",
        order: 21),
    Song(
        songName: "سورة الحج",
        path: "022.mp3",
        numberAyat: 78,
        type: "مدنية",
        order: 22),
    Song(
        songName: "سورة المؤمنون",
        path: "023.mp3",
        numberAyat: 118,
        type: "مكية",
        order: 23),
    Song(
        songName: "سورة النور",
        path: "024.mp3",
        numberAyat: 64,
        type: "مدنية",
        order: 24),
    Song(
        songName: "سورة الفرقان",
        path: "025.mp3",
        numberAyat: 77,
        type: "مكية",
        order: 25),
    Song(
        songName: "سورة الشعراء",
        path: "026.mp3",
        numberAyat: 227,
        type: "مكية",
        order: 26),
    Song(
        songName: "سورة النمل",
        path: "027.mp3",
        numberAyat: 93,
        type: "مكية",
        order: 27),
    Song(
        songName: "سورة القصص",
        path: "028.mp3",
        numberAyat: 88,
        type: "مكية",
        order: 28),
    Song(
        songName: "سورة العنكبوت",
        path: "029.mp3",
        numberAyat: 69,
        type: "مكية",
        order: 29),
    Song(
        songName: "سورة الروم",
        path: "030.mp3",
        numberAyat: 60,
        type: "مكية",
        order: 30),
    Song(
        songName: "سورة لقمان",
        path: "031.mp3",
        numberAyat: 34,
        type: "مكية",
        order: 31),
    Song(
        songName: "سورة السجدة",
        path: "032.mp3",
        numberAyat: 30,
        type: "مكية",
        order: 32),
    Song(
        songName: "سورة الأحزاب",
        path: "033.mp3",
        numberAyat: 73,
        type: "مدنية",
        order: 33),
    Song(
        songName: "سورة سبأ",
        path: "034.mp3",
        numberAyat: 54,
        type: "مكية",
        order: 34),
    Song(
        songName: "سورة فاطر",
        path: "035.mp3",
        numberAyat: 45,
        type: "مكية",
        order: 35),
    Song(
        songName: "سورة يس",
        path: "036.mp3",
        numberAyat: 83,
        type: "مكية",
        order: 36),
    Song(
        songName: "سورة الصافات",
        path: "037.mp3",
        numberAyat: 182,
        type: "مكية",
        order: 37),
    Song(
        songName: "سورة ص",
        path: "038.mp3",
        numberAyat: 88,
        type: "مكية",
        order: 38),
    Song(
        songName: "سورة الزمر",
        path: "039.mp3",
        numberAyat: 75,
        type: "مكية",
        order: 39),
    Song(
        songName: "سورة غافر",
        path: "040.mp3",
        numberAyat: 85,
        type: "مكية",
        order: 40),
    Song(
        songName: "سورة فصلت",
        path: "041.mp3",
        numberAyat: 54,
        type: "مكية",
        order: 41),
    Song(
        songName: "سورة الشورى",
        path: "042.mp3",
        numberAyat: 53,
        type: "مكية",
        order: 42),
    Song(
        songName: "سورة الزخرف",
        path: "043.mp3",
        numberAyat: 89,
        type: "مكية",
        order: 43),
    Song(
        songName: "سورة الدخان",
        path: "044.mp3",
        numberAyat: 59,
        type: "مكية",
        order: 44),
    Song(
        songName: "سورة الجاثية",
        path: "045.mp3",
        numberAyat: 37,
        type: "مكية",
        order: 45),
    Song(
        songName: "سورة الأحقاف",
        path: "046.mp3",
        numberAyat: 35,
        type: "مكية",
        order: 46),
    Song(
        songName: "سورة محمد",
        path: "047.mp3",
        numberAyat: 38,
        type: "مدنية",
        order: 47),
    Song(
        songName: "سورة الفتح",
        path: "048.mp3",
        numberAyat: 29,
        type: "مدنية",
        order: 48),
    Song(
        songName: "سورة الحجرات",
        path: "049.mp3",
        numberAyat: 18,
        type: "مدنية",
        order: 49),
    Song(
        songName: "سورة ق",
        path: "050.mp3",
        numberAyat: 45,
        type: "مكية",
        order: 50),
    Song(
        songName: "سورة الذاريات",
        path: "051.mp3",
        numberAyat: 60,
        type: "مكية",
        order: 51),
    Song(
        songName: "سورة الطور",
        path: "052.mp3",
        numberAyat: 49,
        type: "مكية",
        order: 52),
    Song(
        songName: "سورة النجم",
        path: "053.mp3",
        numberAyat: 62,
        type: "مكية",
        order: 53),
    Song(
        songName: "سورة القمر",
        path: "054.mp3",
        numberAyat: 55,
        type: "مكية",
        order: 54),
    Song(
        songName: "سورة الرحمن",
        path: "055.mp3",
        numberAyat: 78,
        type: "مدنية",
        order: 55),
    Song(
        songName: "سورة الواقعة",
        path: "056.mp3",
        numberAyat: 96,
        type: "مكية",
        order: 56),
    Song(
        songName: "سورة الحديد",
        path: "057.mp3",
        numberAyat: 29,
        type: "مدنية",
        order: 57),
    Song(
        songName: "سورة المجادلة",
        path: "058.mp3",
        numberAyat: 22,
        type: "مدنية",
        order: 58),
    Song(
        songName: "سورة الحشر",
        path: "059.mp3",
        numberAyat: 24,
        type: "مدنية",
        order: 59),
    Song(
        songName: "سورة الممتحنة",
        path: "060.mp3",
        numberAyat: 13,
        type: "مدنية",
        order: 60),
    Song(
        songName: "سورة الصف",
        path: "061.mp3",
        numberAyat: 14,
        type: "مدنية",
        order: 61),
    Song(
        songName: "سورة الجمعة",
        path: "062.mp3",
        numberAyat: 11,
        type: "مدنية",
        order: 62),
    Song(
        songName: "سورة المنافقون",
        path: "063.mp3",
        numberAyat: 11,
        type: "مدنية",
        order: 63),
    Song(
        songName: "سورة التغابن",
        path: "064.mp3",
        numberAyat: 18,
        type: "مدنية",
        order: 64),
    Song(
        songName: "سورة الطلاق",
        path: "065.mp3",
        numberAyat: 12,
        type: "مدنية",
        order: 65),
    Song(
        songName: "سورة التجريم",
        path: "066.mp3",
        numberAyat: 12,
        type: "مدنية",
        order: 66),
    Song(
        songName: "سورة الملك",
        path: "067.mp3",
        numberAyat: 30,
        type: "مكية",
        order: 67),
    Song(
        songName: "سورة القلم",
        path: "068.mp3",
        numberAyat: 52,
        type: "مكية",
        order: 68),
    Song(
        songName: "سورة الحاقة",
        path: "069.mp3",
        numberAyat: 52,
        type: "مكية",
        order: 69),
    Song(
        songName: "سورة المعارج",
        path: "070.mp3",
        numberAyat: 44,
        type: "مكية",
        order: 70),
    Song(
        songName: "سورة نوح",
        path: "071.mp3",
        numberAyat: 28,
        type: "مكية",
        order: 71),
    Song(
        songName: "سورة الجن",
        path: "072.mp3",
        numberAyat: 28,
        type: "مكية",
        order: 72),
    Song(
        songName: "سورة المزمل",
        path: "073.mp3",
        numberAyat: 20,
        type: "مكية",
        order: 73),
    Song(
        songName: "سورة المدثر",
        path: "074.mp3",
        numberAyat: 56,
        type: "مكية",
        order: 74),
    Song(
        songName: "سورة القيامة",
        path: "075.mp3",
        numberAyat: 40,
        type: "مكية",
        order: 75),
    Song(
        songName: "سورة الإنسان",
        path: "076.mp3",
        numberAyat: 31,
        type: "مدنية",
        order: 76),
    Song(
        songName: "سورة المرسلات",
        path: "077.mp3",
        numberAyat: 50,
        type: "مكية",
        order: 77),
    Song(
        songName: "سورة النبإ",
        path: "078.mp3",
        numberAyat: 40,
        type: "مكية",
        order: 78),
    Song(
        songName: "سورة النازعات",
        path: "079.mp3",
        numberAyat: 46,
        type: "مكية",
        order: 79),
    Song(
        songName: "سورة عبس",
        path: "080.mp3",
        numberAyat: 42,
        type: "مكية",
        order: 80),
    Song(
        songName: "سورة التكوير",
        path: "081.mp3",
        numberAyat: 29,
        type: "مكية",
        order: 81),
    Song(
        songName: "سورة الانفطار",
        path: "082.mp3",
        numberAyat: 19,
        type: "مكية",
        order: 82),
    Song(
        songName: "سورة المطففين",
        path: "083.mp3",
        numberAyat: 36,
        type: "مكية",
        order: 83),
    Song(
        songName: "سورة الانشقاق",
        path: "084.mp3",
        numberAyat: 25,
        type: "مكية",
        order: 84),
    Song(
        songName: "سورة البروج",
        path: "085.mp3",
        numberAyat: 22,
        type: "مكية",
        order: 85),
    Song(
        songName: "سورة الطارق",
        path: "086.mp3",
        numberAyat: 17,
        type: "مكية",
        order: 86),
    Song(
        songName: "سورة الأعلى",
        path: "087.mp3",
        numberAyat: 19,
        type: "مكية",
        order: 87),
    Song(
        songName: "سورة الغاشية",
        path: "088.mp3",
        numberAyat: 26,
        type: "مكية",
        order: 88),
    Song(
        songName: "سورة الفجر",
        path: "089.mp3",
        numberAyat: 30,
        type: "مكية",
        order: 89),
    Song(
        songName: "سورة البلد",
        path: "090.mp3",
        numberAyat: 20,
        type: "مكية",
        order: 90),
    Song(
        songName: "سورة الشمس",
        path: "091.mp3",
        numberAyat: 15,
        type: "مكية",
        order: 91),
    Song(
        songName: "سورة الليل",
        path: "092.mp3",
        numberAyat: 21,
        type: "مكية",
        order: 92),
    Song(
        songName: "سورة الضحى",
        path: "093.mp3",
        numberAyat: 11,
        type: "مكية",
        order: 93),
    Song(
        songName: "سورة الشرح",
        path: "094.mp3",
        numberAyat: 8,
        type: "مكية",
        order: 94),
    Song(
        songName: "سورة التين",
        path: "095.mp3",
        numberAyat: 8,
        type: "مكية",
        order: 95),
    Song(
        songName: "سورة العلق",
        path: "096.mp3",
        numberAyat: 19,
        type: "مكية",
        order: 96),
    Song(
        songName: "سورة القدر",
        path: "097.mp3",
        numberAyat: 5,
        type: "مكية",
        order: 97),
    Song(
        songName: "سورة البينة",
        path: "098.mp3",
        numberAyat: 8,
        type: "مدنية",
        order: 98),
    Song(
        songName: "سورة الزلزلة",
        path: "099.mp3",
        numberAyat: 8,
        type: "مدنية",
        order: 99),
    Song(
        songName: "سورة العاديات",
        path: "100.mp3",
        numberAyat: 11,
        type: "مكية",
        order: 100),
    Song(
        songName: "سورة القارعة",
        path: "101.mp3",
        numberAyat: 11,
        type: "مكية",
        order: 101),
    Song(
        songName: "سورة التكاثر",
        path: "102.mp3",
        numberAyat: 8,
        type: "مكية",
        order: 102),
    Song(
        songName: "سورة العصر",
        path: "103.mp3",
        numberAyat: 3,
        type: "مكية",
        order: 103),
    Song(
        songName: "سورة الهمزة",
        path: "104.mp3",
        numberAyat: 9,
        type: "مكية",
        order: 104),
    Song(
        songName: "سورة الفيل",
        path: "105.mp3",
        numberAyat: 5,
        type: "مكية",
        order: 105),
    Song(
        songName: "سورة قريش",
        path: "106.mp3",
        numberAyat: 4,
        type: "مكية",
        order: 106),
    Song(
        songName: "سورة الماعون",
        path: "107.mp3",
        numberAyat: 7,
        type: "مكية",
        order: 107),
    Song(
        songName: "سورة الكوثر",
        path: "108.mp3",
        numberAyat: 3,
        type: "مكية",
        order: 108),
    Song(
        songName: "سورة الكافرون",
        path: "109.mp3",
        numberAyat: 6,
        type: "مكية",
        order: 109),
    Song(
        songName: "سورة النصر",
        path: "110.mp3",
        numberAyat: 3,
        type: "مدنية",
        order: 110),
    Song(
        songName: "سورة المسد",
        path: "111.mp3",
        numberAyat: 5,
        type: "مكية",
        order: 111),
    Song(
        songName: "سورة الإخلاص",
        path: "112.mp3",
        numberAyat: 4,
        type: "مكية",
        order: 112),
    Song(
        songName: "سورة الفلق",
        path: "113.mp3",
        numberAyat: 5,
        type: "مكية",
        order: 113),
    Song(
        songName: "سورة الناس",
        path: "114.mp3",
        numberAyat: 6,
        type: "مكية",
        order: 114),
  ];
  List<Song> filterSongsPlaylist = [
    Song(
        songName: "سورة الفاتحة",
        path: "001.mp3",
        numberAyat: 7,
        type: "مكية",
        order: 1),
    Song(
        songName: "سورة البقرة",
        path: "002.mp3",
        numberAyat: 286,
        type: "مدنية",
        order: 2),
    Song(
        songName: "سورة آل عمران",
        path: "003.mp3",
        numberAyat: 200,
        type: "مدنية",
        order: 3),
    Song(
        songName: "سورة النساء",
        path: "004.mp3",
        numberAyat: 176,
        type: "مدنية",
        order: 4),
    Song(
        songName: "سورة المائدة",
        path: "005.mp3",
        numberAyat: 120,
        type: "مدنية",
        order: 5),
    Song(
        songName: "سورة الأنعام",
        path: "006.mp3",
        numberAyat: 165,
        type: "مكية",
        order: 6),
    Song(
        songName: "سورة الأعراف",
        path: "007.mp3",
        numberAyat: 206,
        type: "مكية",
        order: 7),
    Song(
        songName: "سورة الأنفال",
        path: "008.mp3",
        numberAyat: 75,
        type: "مدنية",
        order: 8),
    Song(
        songName: "سورة التوبة",
        path: "009.mp3",
        numberAyat: 129,
        type: "مدنية",
        order: 9),
    Song(
        songName: "سورة يونس",
        path: "010.mp3",
        numberAyat: 109,
        type: "مكية",
        order: 10),
    Song(
        songName: "سورة هود",
        path: "011.mp3",
        numberAyat: 123,
        type: "مكية",
        order: 11),
    Song(
        songName: "سورة يوسف",
        path: "012.mp3",
        numberAyat: 111,
        type: "مكية",
        order: 12),
    Song(
        songName: "سورة الرعد",
        path: "013.mp3",
        numberAyat: 43,
        type: "مدنية",
        order: 13),
    Song(
        songName: "سورة إبراهيم",
        path: "014.mp3",
        numberAyat: 52,
        type: "مكية",
        order: 14),
    Song(
        songName: "سورة الحجر",
        path: "015.mp3",
        numberAyat: 99,
        type: "مكية",
        order: 15),
    Song(
        songName: "سورة النحل",
        path: "016.mp3",
        numberAyat: 128,
        type: "مكية",
        order: 16),
    Song(
        songName: "سورة الإسراء",
        path: "017.mp3",
        numberAyat: 111,
        type: "مكية",
        order: 17),
    Song(
        songName: "سورة الكهف",
        path: "018.mp3",
        numberAyat: 110,
        type: "مكية",
        order: 18),
    Song(
        songName: "سورة مريم",
        path: "019.mp3",
        numberAyat: 98,
        type: "مكية",
        order: 19),
    Song(
        songName: "سورة طه",
        path: "020.mp3",
        numberAyat: 135,
        type: "مكية",
        order: 20),
    Song(
        songName: "سورة الأنبياء",
        path: "021.mp3",
        numberAyat: 112,
        type: "مكية",
        order: 21),
    Song(
        songName: "سورة الحج",
        path: "022.mp3",
        numberAyat: 78,
        type: "مدنية",
        order: 22),
    Song(
        songName: "سورة المؤمنون",
        path: "023.mp3",
        numberAyat: 118,
        type: "مكية",
        order: 23),
    Song(
        songName: "سورة النور",
        path: "024.mp3",
        numberAyat: 64,
        type: "مدنية",
        order: 24),
    Song(
        songName: "سورة الفرقان",
        path: "025.mp3",
        numberAyat: 77,
        type: "مكية",
        order: 25),
    Song(
        songName: "سورة الشعراء",
        path: "026.mp3",
        numberAyat: 227,
        type: "مكية",
        order: 26),
    Song(
        songName: "سورة النمل",
        path: "027.mp3",
        numberAyat: 93,
        type: "مكية",
        order: 27),
    Song(
        songName: "سورة القصص",
        path: "028.mp3",
        numberAyat: 88,
        type: "مكية",
        order: 28),
    Song(
        songName: "سورة العنكبوت",
        path: "029.mp3",
        numberAyat: 69,
        type: "مكية",
        order: 29),
    Song(
        songName: "سورة الروم",
        path: "030.mp3",
        numberAyat: 60,
        type: "مكية",
        order: 30),
    Song(
        songName: "سورة لقمان",
        path: "031.mp3",
        numberAyat: 34,
        type: "مكية",
        order: 31),
    Song(
        songName: "سورة السجدة",
        path: "032.mp3",
        numberAyat: 30,
        type: "مكية",
        order: 32),
    Song(
        songName: "سورة الأحزاب",
        path: "033.mp3",
        numberAyat: 73,
        type: "مدنية",
        order: 33),
    Song(
        songName: "سورة سبأ",
        path: "034.mp3",
        numberAyat: 54,
        type: "مكية",
        order: 34),
    Song(
        songName: "سورة فاطر",
        path: "035.mp3",
        numberAyat: 45,
        type: "مكية",
        order: 35),
    Song(
        songName: "سورة يس",
        path: "036.mp3",
        numberAyat: 83,
        type: "مكية",
        order: 36),
    Song(
        songName: "سورة الصافات",
        path: "037.mp3",
        numberAyat: 182,
        type: "مكية",
        order: 37),
    Song(
        songName: "سورة ص",
        path: "038.mp3",
        numberAyat: 88,
        type: "مكية",
        order: 38),
    Song(
        songName: "سورة الزمر",
        path: "039.mp3",
        numberAyat: 75,
        type: "مكية",
        order: 39),
    Song(
        songName: "سورة غافر",
        path: "040.mp3",
        numberAyat: 85,
        type: "مكية",
        order: 40),
    Song(
        songName: "سورة فصلت",
        path: "041.mp3",
        numberAyat: 54,
        type: "مكية",
        order: 41),
    Song(
        songName: "سورة الشورى",
        path: "042.mp3",
        numberAyat: 53,
        type: "مكية",
        order: 42),
    Song(
        songName: "سورة الزخرف",
        path: "043.mp3",
        numberAyat: 89,
        type: "مكية",
        order: 43),
    Song(
        songName: "سورة الدخان",
        path: "044.mp3",
        numberAyat: 59,
        type: "مكية",
        order: 44),
    Song(
        songName: "سورة الجاثية",
        path: "045.mp3",
        numberAyat: 37,
        type: "مكية",
        order: 45),
    Song(
        songName: "سورة الأحقاف",
        path: "046.mp3",
        numberAyat: 35,
        type: "مكية",
        order: 46),
    Song(
        songName: "سورة محمد",
        path: "047.mp3",
        numberAyat: 38,
        type: "مدنية",
        order: 47),
    Song(
        songName: "سورة الفتح",
        path: "048.mp3",
        numberAyat: 29,
        type: "مدنية",
        order: 48),
    Song(
        songName: "سورة الحجرات",
        path: "049.mp3",
        numberAyat: 18,
        type: "مدنية",
        order: 49),
    Song(
        songName: "سورة ق",
        path: "050.mp3",
        numberAyat: 45,
        type: "مكية",
        order: 50),
    Song(
        songName: "سورة الذاريات",
        path: "051.mp3",
        numberAyat: 60,
        type: "مكية",
        order: 51),
    Song(
        songName: "سورة الطور",
        path: "052.mp3",
        numberAyat: 49,
        type: "مكية",
        order: 52),
    Song(
        songName: "سورة النجم",
        path: "053.mp3",
        numberAyat: 62,
        type: "مكية",
        order: 53),
    Song(
        songName: "سورة القمر",
        path: "054.mp3",
        numberAyat: 55,
        type: "مكية",
        order: 54),
    Song(
        songName: "سورة الرحمن",
        path: "055.mp3",
        numberAyat: 78,
        type: "مدنية",
        order: 55),
    Song(
        songName: "سورة الواقعة",
        path: "056.mp3",
        numberAyat: 96,
        type: "مكية",
        order: 56),
    Song(
        songName: "سورة الحديد",
        path: "057.mp3",
        numberAyat: 29,
        type: "مدنية",
        order: 57),
    Song(
        songName: "سورة المجادلة",
        path: "058.mp3",
        numberAyat: 22,
        type: "مدنية",
        order: 58),
    Song(
        songName: "سورة الحشر",
        path: "059.mp3",
        numberAyat: 24,
        type: "مدنية",
        order: 59),
    Song(
        songName: "سورة الممتحنة",
        path: "060.mp3",
        numberAyat: 13,
        type: "مدنية",
        order: 60),
    Song(
        songName: "سورة الصف",
        path: "061.mp3",
        numberAyat: 14,
        type: "مدنية",
        order: 61),
    Song(
        songName: "سورة الجمعة",
        path: "062.mp3",
        numberAyat: 11,
        type: "مدنية",
        order: 62),
    Song(
        songName: "سورة المنافقون",
        path: "063.mp3",
        numberAyat: 11,
        type: "مدنية",
        order: 63),
    Song(
        songName: "سورة التغابن",
        path: "064.mp3",
        numberAyat: 18,
        type: "مدنية",
        order: 64),
    Song(
        songName: "سورة الطلاق",
        path: "065.mp3",
        numberAyat: 12,
        type: "مدنية",
        order: 65),
    Song(
        songName: "سورة التجريم",
        path: "066.mp3",
        numberAyat: 12,
        type: "مدنية",
        order: 66),
    Song(
        songName: "سورة الملك",
        path: "067.mp3",
        numberAyat: 30,
        type: "مكية",
        order: 67),
    Song(
        songName: "سورة القلم",
        path: "068.mp3",
        numberAyat: 52,
        type: "مكية",
        order: 68),
    Song(
        songName: "سورة الحاقة",
        path: "069.mp3",
        numberAyat: 52,
        type: "مكية",
        order: 69),
    Song(
        songName: "سورة المعارج",
        path: "070.mp3",
        numberAyat: 44,
        type: "مكية",
        order: 70),
    Song(
        songName: "سورة نوح",
        path: "071.mp3",
        numberAyat: 28,
        type: "مكية",
        order: 71),
    Song(
        songName: "سورة الجن",
        path: "072.mp3",
        numberAyat: 28,
        type: "مكية",
        order: 72),
    Song(
        songName: "سورة المزمل",
        path: "073.mp3",
        numberAyat: 20,
        type: "مكية",
        order: 73),
    Song(
        songName: "سورة المدثر",
        path: "074.mp3",
        numberAyat: 56,
        type: "مكية",
        order: 74),
    Song(
        songName: "سورة القيامة",
        path: "075.mp3",
        numberAyat: 40,
        type: "مكية",
        order: 75),
    Song(
        songName: "سورة الإنسان",
        path: "076.mp3",
        numberAyat: 31,
        type: "مدنية",
        order: 76),
    Song(
        songName: "سورة المرسلات",
        path: "077.mp3",
        numberAyat: 50,
        type: "مكية",
        order: 77),
    Song(
        songName: "سورة النبإ",
        path: "078.mp3",
        numberAyat: 40,
        type: "مكية",
        order: 78),
    Song(
        songName: "سورة النازعات",
        path: "079.mp3",
        numberAyat: 46,
        type: "مكية",
        order: 79),
    Song(
        songName: "سورة عبس",
        path: "080.mp3",
        numberAyat: 42,
        type: "مكية",
        order: 80),
    Song(
        songName: "سورة التكوير",
        path: "081.mp3",
        numberAyat: 29,
        type: "مكية",
        order: 81),
    Song(
        songName: "سورة الانفطار",
        path: "082.mp3",
        numberAyat: 19,
        type: "مكية",
        order: 82),
    Song(
        songName: "سورة المطففين",
        path: "083.mp3",
        numberAyat: 36,
        type: "مكية",
        order: 83),
    Song(
        songName: "سورة الانشقاق",
        path: "084.mp3",
        numberAyat: 25,
        type: "مكية",
        order: 84),
    Song(
        songName: "سورة البروج",
        path: "085.mp3",
        numberAyat: 22,
        type: "مكية",
        order: 85),
    Song(
        songName: "سورة الطارق",
        path: "086.mp3",
        numberAyat: 17,
        type: "مكية",
        order: 86),
    Song(
        songName: "سورة الأعلى",
        path: "087.mp3",
        numberAyat: 19,
        type: "مكية",
        order: 87),
    Song(
        songName: "سورة الغاشية",
        path: "088.mp3",
        numberAyat: 26,
        type: "مكية",
        order: 88),
    Song(
        songName: "سورة الفجر",
        path: "089.mp3",
        numberAyat: 30,
        type: "مكية",
        order: 89),
    Song(
        songName: "سورة البلد",
        path: "090.mp3",
        numberAyat: 20,
        type: "مكية",
        order: 90),
    Song(
        songName: "سورة الشمس",
        path: "091.mp3",
        numberAyat: 15,
        type: "مكية",
        order: 91),
    Song(
        songName: "سورة الليل",
        path: "092.mp3",
        numberAyat: 21,
        type: "مكية",
        order: 92),
    Song(
        songName: "سورة الضحى",
        path: "093.mp3",
        numberAyat: 11,
        type: "مكية",
        order: 93),
    Song(
        songName: "سورة الشرح",
        path: "094.mp3",
        numberAyat: 8,
        type: "مكية",
        order: 94),
    Song(
        songName: "سورة التين",
        path: "095.mp3",
        numberAyat: 8,
        type: "مكية",
        order: 95),
    Song(
        songName: "سورة العلق",
        path: "096.mp3",
        numberAyat: 19,
        type: "مكية",
        order: 96),
    Song(
        songName: "سورة القدر",
        path: "097.mp3",
        numberAyat: 5,
        type: "مكية",
        order: 97),
    Song(
        songName: "سورة البينة",
        path: "098.mp3",
        numberAyat: 8,
        type: "مدنية",
        order: 98),
    Song(
        songName: "سورة الزلزلة",
        path: "099.mp3",
        numberAyat: 8,
        type: "مدنية",
        order: 99),
    Song(
        songName: "سورة العاديات",
        path: "100.mp3",
        numberAyat: 11,
        type: "مكية",
        order: 100),
    Song(
        songName: "سورة القارعة",
        path: "101.mp3",
        numberAyat: 11,
        type: "مكية",
        order: 101),
    Song(
        songName: "سورة التكاثر",
        path: "102.mp3",
        numberAyat: 8,
        type: "مكية",
        order: 102),
    Song(
        songName: "سورة العصر",
        path: "103.mp3",
        numberAyat: 3,
        type: "مكية",
        order: 103),
    Song(
        songName: "سورة الهمزة",
        path: "104.mp3",
        numberAyat: 9,
        type: "مكية",
        order: 104),
    Song(
        songName: "سورة الفيل",
        path: "105.mp3",
        numberAyat: 5,
        type: "مكية",
        order: 105),
    Song(
        songName: "سورة قريش",
        path: "106.mp3",
        numberAyat: 4,
        type: "مكية",
        order: 106),
    Song(
        songName: "سورة الماعون",
        path: "107.mp3",
        numberAyat: 7,
        type: "مكية",
        order: 107),
    Song(
        songName: "سورة الكوثر",
        path: "108.mp3",
        numberAyat: 3,
        type: "مكية",
        order: 108),
    Song(
        songName: "سورة الكافرون",
        path: "109.mp3",
        numberAyat: 6,
        type: "مكية",
        order: 109),
    Song(
        songName: "سورة النصر",
        path: "110.mp3",
        numberAyat: 3,
        type: "مدنية",
        order: 110),
    Song(
        songName: "سورة المسد",
        path: "111.mp3",
        numberAyat: 5,
        type: "مكية",
        order: 111),
    Song(
        songName: "سورة الإخلاص",
        path: "112.mp3",
        numberAyat: 4,
        type: "مكية",
        order: 112),
    Song(
        songName: "سورة الفلق",
        path: "113.mp3",
        numberAyat: 5,
        type: "مكية",
        order: 113),
    Song(
        songName: "سورة الناس",
        path: "114.mp3",
        numberAyat: 6,
        type: "مكية",
        order: 114),
  ];
  // current song playing index
  int? _currentIndex;

  /*
  A U D I O P L A Y E R
  */
  // audio player
  final AudioPlayer _audioPlayer = AudioPlayer();

  // duration
  Duration _duration = Duration.zero;
  Duration _totalDuration = Duration.zero;

  // constructor
  PlaylistProvider() {
    listenToDuration();
  }

  // initially not playing
  bool _isPlaying = false;

  // play the song
  Future<void> playSong() async {
    final String path = filterSongsPlaylist[_currentIndex!].path;
    _playlist = filterSongsPlaylist;
    AudioCache.instance = AudioCache(prefix: '');
    await _audioPlayer.stop();
    await _audioPlayer.play(AssetSource(path));
    _isPlaying = true;
    notifyListeners();
  }

  // pause current song
  Future<void> pauseSong() async {
    await _audioPlayer.pause();
    _isPlaying = false;
    notifyListeners();
  }

  // resume playing
  Future<void> resumeSong() async {
    await _audioPlayer.resume();
    _isPlaying = true;
    notifyListeners();
  }

  Future<void> stopSong() async {
    await _audioPlayer.stop();
    
    notifyListeners();
  }

  // pause or resume
  void resumeOrPause() {
    if (_isPlaying) {
      pauseSong();
    } else {
      resumeSong();
    }
    notifyListeners();
  }

  // seek to a specific position in the current song
  void seekTo(Duration position) async {
    await _audioPlayer.seek(position);
  }

  // play next song
  void playNextSong() {
    if (_currentIndex != null) {
      if (_currentIndex! < filterSongsPlaylist.length - 1) {
        _currentIndex = _currentIndex! + 1;
        setCurrentIndex(_currentIndex);
        notifyListeners();
      } else {
        _isPlaying = false;
        stopSong();

        notifyListeners();
      }
    }
  }

  // play previous song
  void playPreviousSong() async {
    if (_duration.inSeconds > 2) {
    } else {
      if (_currentIndex != null) {
        if (_currentIndex! > 0) {
          _currentIndex = _currentIndex! - 1;
        } else {
          _currentIndex = 0;
        }
      }
    }
    setCurrentIndex(_currentIndex);
    //  notifyListeners();
  }

  void filterSongs(String keyword) {
    List<Song> results = filterSongsPlaylist;
    if (keyword.isEmpty) {
      results = filterSongsPlaylist;
    } else {
      results = filterSongsPlaylist
          .where((element) =>
              element.songName.toLowerCase().contains(keyword.toLowerCase()))
          .toList();
    }

    _playlist = results;
  }

  // listen to duration
  Future<void> listenToDuration() async {
    // listen for total duration
    _audioPlayer.onDurationChanged.listen((value) {
      _totalDuration = value;

      notifyListeners();
    });

    // listen for current duration
    _audioPlayer.onPositionChanged.listen((value) {
      _duration = value;

      notifyListeners();
    });

    // listen for song completion
    _audioPlayer.onPlayerComplete.listen((event) {
      // play next song
      print(
          "_currentIndex:$_currentIndex,,,   _playlist.length : ${_playlist.length} , _totalDuration : $_totalDuration  ,,, _duration : $_duration");

      playNextSong();
    });

    await _audioPlayer.stop();
  }

  // dispose audio player

  /*
  G E T T E R S
  */
  List<Song> get playlist => _playlist;
  int? get currentIndex => _currentIndex;
  bool get isPlaying => _isPlaying;
  Duration get duration => _duration;
  Duration get totalDuration => _totalDuration;

  /*
  S E T T E R S
  */
  void setCurrentIndex(int? index) {
    _currentIndex = index;
    if (index != null) {
      playSong();
    }
    notifyListeners();
  }
}
