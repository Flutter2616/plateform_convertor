import 'package:flutter/material.dart';
import 'package:plateform_convertor/screen/view/android/modal/play_store_model.dart';

class PlaystoreProvider extends ChangeNotifier {
  int i = 0;
  List<Appmodal> showlist = [
    Appmodal(
        name: "free fire",
        img:
            "https://images.hindustantimes.com/tech/img/2022/06/23/960x540/54f31449f5f91cf0cc223cc635cd5952jpg_1655955051259_1655955067513.jpeg",
        type: "game"),
    Appmodal(
        name: "Car racing",
        img:
            "https://play-lh.googleusercontent.com/Ni0S2Ltuia1l8n1aO1QF2MstwlNbGbDrApYlj-nFYZvkVKspUrKvUxGEirs1YKsuVmM=s48-rw",
        type: "game"),
    Appmodal(
        name: "Bottle flip",
        img:
            "https://play-lh.googleusercontent.com/sMpJpTPMtTMr9tfusBtbWIz_h2UdX3iwx8Ea4w6vJ-0vyFILvpIMj_JvwVSeS6Xq0bg=w240-h480-rw",
        type: "game"),
    Appmodal(
        name: "Subwey safar",
        img:
            "https://play-lh.googleusercontent.com/IHpPJDyaTx3wZ6Bqk5RRI3d1SxDlq_hiR8UQ7A7XpZ3t7d4qehI0OTUkqp8wy3b6SQ=s48-rw",
        type: "game"),
    Appmodal(
        name: "Temple run",
        img:
            "https://play-lh.googleusercontent.com/onlNBInQHIZtB2rY24BwrEsUUKwE753ao1BAvvhOw2ePEN1IHIUjaR3gvlGd3jyKTdg=s48-rw",
        type: "game"),
    Appmodal(
        name: "Puzzle master",
        img:
            "https://play-lh.googleusercontent.com/_B2ghpewo_RJiNTpi7tSvcLgvKY_zP1RuBBdO1h0W_lK6bFXkFTcTMn-YjDZ1Q668aGH=w240-h480-rw",
        type: "game"),
    Appmodal(
        name: "Stack ball",
        img:
            "https://play-lh.googleusercontent.com/3pf26YI4SRN_Uk72hQeHJHbv57xOKOVEThflyjzoM6OegOxEolE8lGCImYz7DC9bv4w=w240-h480-rw",
        type: "game"),
    Appmodal(
        name: "Run race",
        img:
            "https://play-lh.googleusercontent.com/KIE26FLMZA8DDRpWF7hqI1xsUPo7mkvNE5CIY6tUDRDkQh64U2oAXa5C7sgIjDAdi_w=w240-h480-rw",
        type: "game"),
    Appmodal(
        name: "House paint",
        img:
            "https://play-lh.googleusercontent.com/MNT_GLLV_NHy0Q4GV6RYZMOlDpRdNIHxsrqv1iWEkoh9xYhrwY0_z0x6EDHWacLzLJw=s48-rw",
        type: "game"),
    Appmodal(
        name: "Riding",
        img:
            "https://play-lh.googleusercontent.com/590AflDt-hW2t85Cit_ODJPJdRiMMRn2cSF0vYNfsBpjm895x1zDy0npbD7IlDCvmNvI=s48-rw",
        type: "game"),
    Appmodal(
        name: "Dream 11",
        img:
            "https://play-lh.googleusercontent.com/2SJ2HPkeD4kmnLdGUU7KhuZPBxBWOFUG7EooelydUzy0jziBOz0hQdWeNRbbMogOsg=s48-rw",
        type: "game"),
    Appmodal(
        name: "Pubg",
        img:
            "https://play-lh.googleusercontent.com/1lWAkJbu-pgG1rjm6u1hw211aJgOOUnzSKaWk0Es0e517OwsR4A9NWRg6siYqp4lt5s=s48-rw",
        type: "game"),
    Appmodal(
        name: "Door puzzle",
        img:
            "https://play-lh.googleusercontent.com/xXsOL7t7AvgMZM4Vtab4nkB2F8skAXyf_5DWnRe4F7mWnM_arUrrO2GM_YoL9oszs7gE=w240-h480-rw",
        type: "game"),
  ];
  List<Appmodal> alllist = [
    //game
    Appmodal(
        name: "free fire",
        img:
            "https://images.hindustantimes.com/tech/img/2022/06/23/960x540/54f31449f5f91cf0cc223cc635cd5952jpg_1655955051259_1655955067513.jpeg",
        type: "game"),
    Appmodal(
        name: "Car racing",
        img:
            "https://play-lh.googleusercontent.com/Ni0S2Ltuia1l8n1aO1QF2MstwlNbGbDrApYlj-nFYZvkVKspUrKvUxGEirs1YKsuVmM=s48-rw",
        type: "game"),
    Appmodal(
        name: "Bottle flip",
        img:
            "https://play-lh.googleusercontent.com/sMpJpTPMtTMr9tfusBtbWIz_h2UdX3iwx8Ea4w6vJ-0vyFILvpIMj_JvwVSeS6Xq0bg=w240-h480-rw",
        type: "game"),
    Appmodal(
        name: "Subwey safar",
        img:
            "https://play-lh.googleusercontent.com/IHpPJDyaTx3wZ6Bqk5RRI3d1SxDlq_hiR8UQ7A7XpZ3t7d4qehI0OTUkqp8wy3b6SQ=s48-rw",
        type: "game"),
    Appmodal(
        name: "Temple run",
        img:
            "https://play-lh.googleusercontent.com/onlNBInQHIZtB2rY24BwrEsUUKwE753ao1BAvvhOw2ePEN1IHIUjaR3gvlGd3jyKTdg=s48-rw",
        type: "game"),
    Appmodal(
        name: "Puzzle master",
        img:
            "https://play-lh.googleusercontent.com/_B2ghpewo_RJiNTpi7tSvcLgvKY_zP1RuBBdO1h0W_lK6bFXkFTcTMn-YjDZ1Q668aGH=w240-h480-rw",
        type: "game"),
    Appmodal(
        name: "Stack ball",
        img:
            "https://play-lh.googleusercontent.com/3pf26YI4SRN_Uk72hQeHJHbv57xOKOVEThflyjzoM6OegOxEolE8lGCImYz7DC9bv4w=w240-h480-rw",
        type: "game"),
    Appmodal(
        name: "Run race",
        img:
            "https://play-lh.googleusercontent.com/KIE26FLMZA8DDRpWF7hqI1xsUPo7mkvNE5CIY6tUDRDkQh64U2oAXa5C7sgIjDAdi_w=w240-h480-rw",
        type: "game"),
    Appmodal(
        name: "House paint",
        img:
            "https://play-lh.googleusercontent.com/MNT_GLLV_NHy0Q4GV6RYZMOlDpRdNIHxsrqv1iWEkoh9xYhrwY0_z0x6EDHWacLzLJw=s48-rw",
        type: "game"),
    Appmodal(
        name: "Riding",
        img:
            "https://play-lh.googleusercontent.com/590AflDt-hW2t85Cit_ODJPJdRiMMRn2cSF0vYNfsBpjm895x1zDy0npbD7IlDCvmNvI=s48-rw",
        type: "game"),
    Appmodal(
        name: "Dream 11",
        img:
            "https://play-lh.googleusercontent.com/2SJ2HPkeD4kmnLdGUU7KhuZPBxBWOFUG7EooelydUzy0jziBOz0hQdWeNRbbMogOsg=s48-rw",
        type: "game"),
    Appmodal(
        name: "Pubg",
        img:
            "https://play-lh.googleusercontent.com/1lWAkJbu-pgG1rjm6u1hw211aJgOOUnzSKaWk0Es0e517OwsR4A9NWRg6siYqp4lt5s=s48-rw",
        type: "game"),
    Appmodal(
        name: "Door puzzle",
        img:
            "https://play-lh.googleusercontent.com/xXsOL7t7AvgMZM4Vtab4nkB2F8skAXyf_5DWnRe4F7mWnM_arUrrO2GM_YoL9oszs7gE=w240-h480-rw",
        type: "game"),
    //app
    Appmodal(
        name: "Cricbuzz",
        img:
            "https://play-lh.googleusercontent.com/DR77tjTRELjjz08osmWgvIFyUvkbQItRf0II8r-eaIzLDOH9YGxSIfIrcToj3IOriyc",
        type: "app"),
    Appmodal(
        name: "Instagram",
        img:
            "https://png.pngtree.com/png-vector/20221018/ourmid/pngtree-instagram-icon-png-image_6315974.png",
        type: "app"),
    Appmodal(
        name: "Snap chat",
        img:
            "https://png.pngtree.com/element_our/png/20181011/snapchat-social-media-icon-design-template-vector-png_127001.jpg",
        type: "app"),
    Appmodal(
        name: "Whatsapp",
        img:
            "https://png.pngtree.com/png-vector/20221018/ourmid/pngtree-whatsapp-icon-png-image_6315990.png",
        type: "app"),
    Appmodal(
        name: "Facebook",
        img:
            "https://png.pngtree.com/png-clipart/20180515/ourmid/pngtree-facebook-logo-facebook-icon-png-image_3566127.png",
        type: "app"),
    Appmodal(
        name: "PIcs art",
        img:
            "https://e7.pngegg.com/pngimages/470/798/png-clipart-graphic-design-art-creativity-design-leaf-logo.png",
        type: "app"),
    Appmodal(
        name: "Fitness",
        img:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7d5r9gk9stRcMc5Pwphd0BOl2SB0UG3GWkg&usqp=CAU",
        type: "app"),
    Appmodal(
        name: "Amezon",
        img:
            "https://play-lh.googleusercontent.com/7nPCXIJ5I2KZCPdPH12SFIoYM6GF_tIGy3bIEGPB6kC8NV03MkaOzBaPIb6wesANuls",
        type: "app"),
    Appmodal(
        name: "Flipcart",
        img:
            "https://i.pinimg.com/originals/15/aa/16/15aa1678d4ee5615c5c53ed5c9968126.png",
        type: "app"),
    Appmodal(
        name: "Messho",
        img:
            "https://upload.wikimedia.org/wikipedia/commons/thumb/8/80/Meesho_Logo_Full.png/480px-Meesho_Logo_Full.png",
        type: "app"),
    Appmodal(
        name: "Ajio",
        img:
            "https://play-lh.googleusercontent.com/4jZOcII742vq4jMw4H8SKjvyMWEgI4V3dpoGVwVyqKh_mcnx3_01QsYRTbV6hwiYEg",
        type: "app"),
    Appmodal(
        name: "Zoom",
        img:
            "v",
        type: "app"),
    Appmodal(
        name: "inDrive",
        img:
            "https://downloadr2.apkmirror.com/wp-content/uploads/2021/09/25/614014251bd37.png",
        type: "app"),
    Appmodal(
        name: "Spotify",
        img:
            "https://upload.wikimedia.org/wikipedia/commons/thumb/7/74/Spotify_App_Logo.svg/2048px-Spotify_App_Logo.svg.png",
        type: "app"),
    //movie

    //book
    Appmodal(
        name: "The art of war",
        type: "book",
        img:
            "https://rukminim1.flixcart.com/image/416/416/l0tweq80/book/w/s/u/the-art-of-war-original-imagcgzzmyjmcf4f.jpeg?q=70"),
    Appmodal(
        name: "Deep work",
        type: "book",
        img:
            "https://rukminim1.flixcart.com/image/416/416/l0tweq80/book/w/s/u/the-art-of-war-original-imagcgzzmyjmcf4f.jpeg?q=70"),
    Appmodal(
        name: "Hidden Hindu",
        type: "book",
        img:
            "https://rukminim1.flixcart.com/image/416/416/l0tweq80/book/w/s/u/the-art-of-war-original-imagcgzzmyjmcf4f.jpeg?q=70"),
    Appmodal(
        name: "Mastering in python",
        type: "book",
        img:
            "https://rukminim1.flixcart.com/image/416/416/l0tweq80/book/w/s/u/the-art-of-war-original-imagcgzzmyjmcf4f.jpeg?q=70"),
    Appmodal(
        name: "10 Priciple to beat failure",
        type: "book",
        img:
            "https://rukminim1.flixcart.com/image/416/416/l0tweq80/book/w/s/u/the-art-of-war-original-imagcgzzmyjmcf4f.jpeg?q=70"),
    Appmodal(
        name: "Rich dad poor dad",
        type: "book",
        img:
            "https://rukminim1.flixcart.com/image/416/416/l0tweq80/book/w/s/u/the-art-of-war-original-imagcgzzmyjmcf4f.jpeg?q=70"),
    Appmodal(
        name: "Suicide squade",
        type: "book",
        img:
            "https://rukminim1.flixcart.com/image/416/416/l0tweq80/book/w/s/u/the-art-of-war-original-imagcgzzmyjmcf4f.jpeg?q=70"),
    Appmodal(
        name: "The story from the future",
        type: "book",
        img:
            "https://rukminim1.flixcart.com/image/416/416/l0tweq80/book/w/s/u/the-art-of-war-original-imagcgzzmyjmcf4f.jpeg?q=70"),
    Appmodal(
        name: "Nightmare",
        type: "book",
        img:
            "https://rukminim1.flixcart.com/image/416/416/l0tweq80/book/w/s/u/the-art-of-war-original-imagcgzzmyjmcf4f.jpeg?q=70"),
    Appmodal(
        name: "Learn Mind",
        type: "book",
        img:
            "https://rukminim1.flixcart.com/image/416/416/l0tweq80/book/w/s/u/the-art-of-war-original-imagcgzzmyjmcf4f.jpeg?q=70"),
    Appmodal(
        name: "The mind And control",
        type: "book",
        img:
            "https://rukminim1.flixcart.com/image/416/416/l0tweq80/book/w/s/u/the-art-of-war-original-imagcgzzmyjmcf4f.jpeg?q=70"),
    Appmodal(
        name: "Bhagavad gita chapter 1",
        type: "book",
        img:
            "https://rukminim1.flixcart.com/image/416/416/l0tweq80/book/w/s/u/the-art-of-war-original-imagcgzzmyjmcf4f.jpeg?q=70"),
    Appmodal(
        name: "Thoughts power",
        type: "book",
        img:
            "https://rukminim1.flixcart.com/image/416/416/l0tweq80/book/w/s/u/the-art-of-war-original-imagcgzzmyjmcf4f.jpeg?q=70"),
  ];

  void bottomnavigation(int value) {
    i = value;
    if (i == 0) {
      showlist.clear();
      for (int j = 0; j < alllist.length; j++) {
        if (alllist[j].type == "game") {
          showlist.add(alllist[j]);
        }
      }
    } else if (i == 1) {
      showlist.clear();
      for (int j = 0; j < alllist.length; j++) {
        if (alllist[j].type == "app") {
          showlist.add(alllist[j]);
        }
      }
    } else if (i == 2) {
      showlist.clear();
      for (int j = 0; j < alllist.length; j++) {
        if (alllist[j].type == "movie") {
          showlist.add(alllist[j]);
        }
      }
    } else {
      showlist.clear();
      for (int j = 0; j < alllist.length; j++) {
        if (alllist[j].type == "book") {
          showlist.add(alllist[j]);
        }
      }
    }
    notifyListeners();
  }

  bool swi = true;

  void switch1(bool value) {
    swi = value;
    notifyListeners();
  }
}
