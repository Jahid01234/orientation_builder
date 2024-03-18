import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}
var MyItems = [
  {
    "img":
    "https://t4.ftcdn.net/jpg/05/62/99/31/360_F_562993122_e7pGkeY8yMfXJcRmclsoIjtOoVDDgIlh.jpg",
    "title": "Cat"
  },
  {
    "img":
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_-2crR5T9FPOoVLRFSw5kS8YqbsWqPTh_UQ&usqp=CAU",
    "title": "bcat"
  },
  {
    "img":
    "https://media.istockphoto.com/id/623368750/photo/sacred-birma-cat-in-interior.webp?b=1&s=170667a&w=0&k=20&c=xreU24meHpD4O-zL5k_Y2TB_nEJ3WKVLztpb1a5l9F8=",
    "title": "DCat"
  },
  {
    "img":
    "https://media.istockphoto.com/id/637000686/photo/portrait-of-siberian-kitten.webp?b=1&s=170667a&w=0&k=20&c=iCwhgjEfJgl8xZh_kOZwFPkBwnl-Li_gzdQYRsN4qxI=",
    "title": "FCat"
  },
  {
    "img":
    "https://images.unsplash.com/photo-1592814053501-57ad75c41863?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8YmVhdXRpZnVsJTIwY2F0fGVufDB8fDB8fHww",
    "title": "ICat"
  },
  {
    "img":
    "https://t4.ftcdn.net/jpg/05/62/99/31/360_F_562993122_e7pGkeY8yMfXJcRmclsoIjtOoVDDgIlh.jpg",
    "title": "Cat"
  },
  {
    "img":
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_-2crR5T9FPOoVLRFSw5kS8YqbsWqPTh_UQ&usqp=CAU",
    "title": "bcat"
  },
];


 MySnackBar(message,context){
   ScaffoldMessenger.of(context).showSnackBar(
     SnackBar(content: Text(message))
   );
 }



class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {



    return Scaffold(
      appBar: AppBar(
        title: Text("Orientation Builder Example"),
        centerTitle: true,
        backgroundColor: Colors.cyan,
      ),
      body: OrientationBuilder(
        builder: (context,orientation){
          if(orientation==Orientation.portrait)
            {
              return PortraitWidget();
            }
          else
            {
              return LandscapeWidget();
            }
        },
      ),
    );
  }

  Widget PortraitWidget() {

    return ListView.builder(

          itemCount:MyItems.length,
          itemBuilder: (context, index) {
            var _mediaQuary = MediaQuery.of(context);

            return GestureDetector(
              onTap: (){
                MySnackBar(MyItems[index]["title"]!,context);
              },
              child: Container(
                margin: EdgeInsets.all(10),
                height: 250,
                width: _mediaQuary.size.width,
                child: Image.network(MyItems[index]["img"]!,fit: BoxFit.fill),

              ),
            );
          },
      );
  }


  Widget LandscapeWidget() {

    return ListView.builder(

      itemCount:MyItems.length,
      itemBuilder: (context, index) {
        var _mediaQuary = MediaQuery.of(context);

        return GestureDetector(
          onTap: (){
            MySnackBar(MyItems[index]["title"]!,context);
          },
          child: Container(
            margin: EdgeInsets.all(10),
            height: 250,
            width: _mediaQuary.size.width,
            child: Image.network(MyItems[index]["img"]!,fit: BoxFit.fill),

          ),
        );
      },

    );
  }
}
