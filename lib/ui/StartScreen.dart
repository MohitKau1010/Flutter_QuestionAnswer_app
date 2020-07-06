import 'package:flutter/material.dart';
import 'package:fluttertestapp/ui/questions.dart';
import 'package:fluttertestapp/ui/story.dart';
import 'package:fluttertestapp/utils/navigater_helper.dart';

class StartScreen extends StatefulWidget {
  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.white),
            child: Container(
              decoration: BoxDecoration(
                color: hexToColor("#87cfea"),//Color.fromARGB(999, 135, 207, 234),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: 0),
                      Text(
                        "Welcome to Reflections",
                        softWrap: true,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 24.0,),
                      ),
                      Opacity(
                        opacity: 1.0,
                        child: Padding(
                          padding: EdgeInsets.only(left: 60.0, right: 60.0,top: 20.0,bottom: 40.0),
                          child: Image.asset('assets/images/app_logo.png'),
                        ),
                      ),
                      Text(
                        "How are you feeling today?",
                        softWrap: true,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 24.0,),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 60),
                      ),
                      RaisedButton(
                        elevation: 0.0,
                        padding: EdgeInsets.only(left: 50.0, right: 50.0,top: 13.0,bottom: 13.0),
                        color: Color.fromARGB(999, 67, 179, 224),
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(50.0),
                        ),
                        onPressed: () {
                          NavigationHelper.push(context, Questions());
                      },
                        child: Text('Questions', style: TextStyle(color: Colors.white),),
                      ),

                      Padding(
                        padding: EdgeInsets.only(top: 10),
                      ),

                      RaisedButton(
                        elevation: 0.0,
                        padding: EdgeInsets.only(left: 60.0, right: 60.0,top: 13.0,bottom: 13.0),
                        color: Color.fromARGB(999, 201, 233, 246),
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(50.0),
                        ),
                        onPressed: () {
                          NavigationHelper.push(context, StoryScreen());
                        },
                        child: Text('Stories', style: TextStyle(color: Colors.black),),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
  Color hexToColor(String code) {
    return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }
}
