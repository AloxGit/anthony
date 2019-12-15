import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new ListView(
        children: [
          GestureDetector(
            onTap: () {
             var router = new MaterialPageRoute(
                 builder: (BuildContext context) => new AddText(template: "doge",));
             Navigator.of(context).push(router);
            },
            child: Image.asset('images/doge.jpg',
              fit: BoxFit.cover,),
          ),

          SizedBox(height: 10,),

          GestureDetector(
            onTap: () {
              var router = new MaterialPageRoute(
                  builder: (BuildContext context) => new AddText(template: "buzz",));
              Navigator.of(context).push(router);
            },
            child: Image.asset('images/buzz.jpg',
              fit: BoxFit.cover,),
          ),

          SizedBox(height: 10,),


          GestureDetector(
            onTap: () {
              var router = new MaterialPageRoute(
                  builder: (BuildContext context) => new AddText(template: "joker",));
              Navigator.of(context).push(router);
            },
            child: Image.asset('images/joker.jpg',
              fit: BoxFit.cover,),
          ),

          SizedBox(height: 10,),

          GestureDetector(
            onTap: () {
              var router = new MaterialPageRoute(
                  builder: (BuildContext context) => new AddText(template: "baby",));
              Navigator.of(context).push(router);
            },
            child: Image.asset('images/baby.jpg',
              fit: BoxFit.cover,),
          ),

        ],
      ),
    );
  }
}

class AddText extends StatefulWidget {
  final String template;

  const AddText({Key key, this.template}) : super(key: key);

  @override
  _AddTextState createState() => _AddTextState();
}

class _AddTextState extends State<AddText> {

  String text1, text2, url="https://memegen.link/";

  getText1(text1) {
    this.text1 = text1;
  }

  getText2(text2) {
    this.text2 = text2;
  }

  @override
  Widget build(BuildContext context) {

    final UpText = Container(
      padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0),
      child: TextField(
        onChanged: (String text1) {
          getText1(text1);
        },

        obscureText: false,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(15.0, 15.0, 20.0, 15.0),
          hintText: "Upper text",
          hintStyle: TextStyle(color: Color(0xff999999)),
          fillColor: Color(0xfffafafa),
          filled: true,
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xffa7a7a7), width: 0.0),
              borderRadius: BorderRadius.circular(5.0)),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xffa7a7a7), width: 0.0),
              borderRadius: BorderRadius.circular(5.0)),
        ),
      ),
    );

    final BottomText = Container(
      padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0),
      child: TextField(
        onChanged: (String text2) {
          getText2(text2);
        },

        obscureText: false,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(15.0, 15.0, 20.0, 15.0),
          hintText: "Bottom text",
          hintStyle: TextStyle(color: Color(0xff999999)),
          fillColor: Color(0xfffafafa),
          filled: true,
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xffa7a7a7), width: 0.0),
              borderRadius: BorderRadius.circular(5.0)),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xffa7a7a7), width: 0.0),
              borderRadius: BorderRadius.circular(5.0)),
        ),
      ),
    );

    final CreateMeme = Container(
      padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0),
      child: Material(
        //elevation: 5.0,
        borderRadius: BorderRadius.circular(5.0),
        color: Color(0xff3897f0),
        child: MaterialButton(
          minWidth: MediaQuery
              .of(context)
              .size
              .width,
          padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),

          onPressed: () {
            String newUrl="$url${widget.template}/$text1/$text2.jpg";

            //createData();
            showDialog(
                context: context,
                builder: (_) => new AlertDialog(
                  title:

                  new Text("mood",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(0xff888888)
                    ),),
                  content: Image.network(
                    '$newUrl',)
                )
            );
          },
          child: Text("Create",
              textAlign: TextAlign.center,
              style: new TextStyle(color: Colors.white, fontSize: 14.0)),
        ),
      ),
    );


    return new Scaffold(
      body: new ListView(
        children: <Widget>[
          SizedBox(height: 290,),
          UpText,
          SizedBox(height: 20,),
          BottomText,
          SizedBox(height: 20,),
          CreateMeme
        ],
      ),
    );
  }
}

//class memeView extends StatefulWidget {
//  @override
//  _memeViewState createState() => _memeViewState();
//}
//
//class _memeViewState extends State<memeView> {
//  @override
//  Widget build(BuildContext context) {
//    return Container(
//      child: Image.network(
//        '$newUrl',),
//    );
//  }
//}


