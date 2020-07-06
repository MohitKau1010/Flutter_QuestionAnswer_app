import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:fluttertestapp/ui/StartScreen.dart';
import 'package:fluttertestapp/ui/story.dart';
import 'package:fluttertestapp/utils/navigater_helper.dart';

class LastScreen extends StatefulWidget {
  @override
  _LastScreenState createState() => _LastScreenState();
}

class _LastScreenState extends State<LastScreen> {
  final TextEditingController _answerController =
  TextEditingController(text: "");

  Color hexToColor(String code) {
    return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.white),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
            ),
          ),
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  ///
                  SizedBox(
                    height: 40,
                  ),
                  ///
                  Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        RaisedButton(
                          elevation: 0.0,
                          padding: EdgeInsets.only(
                              left: 20.0, right: 20.0, top: 13.0, bottom: 13.0),
                          color: Color.fromARGB(999, 201, 233, 246),
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(10.0),
                          ),
                          onPressed: () {
                            ///NavigationHelper.push(context, Questions());
                          },
                          child: Text(
                            'Questions',
                            style: TextStyle(fontSize: 20.0, color: Colors.black),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 50.0),
                        ),
                        RaisedButton(
                          elevation: 2.0,
                          padding: EdgeInsets.only(
                              left: 40.0, right: 40.0, top: 13.0, bottom: 13.0),
                          color: Color.fromARGB(999, 67, 179, 224),
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(10.0),
                          ),
                          onPressed: () {
                            ///NavigationHelper.push(context, Questions());
                          },
                          child: Text(
                            'Story',
                            style: TextStyle(fontSize: 20.0, color: Colors.black),
                          ),
                        ),
                      ]),


                  SizedBox(height: 70.0,),

                  Stack(
                    alignment: Alignment.topLeft,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 30, right: 20.0, left: 20.0),
                        padding: EdgeInsets.all(20.0),
                        width: queryData.size.width,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Color.fromARGB(999, 67, 179, 224),
                            borderRadius:
                            new BorderRadius.all(Radius.circular(20.0))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              "An emotion i am currently \nfeeling is... \n\nA recent action that triggered this emotion is... ",
                              style: TextStyle(
                                fontSize: 24,
                              ),
                            ),
                            SizedBox(height: 200.0,),
                            ///
                            Align(
                              alignment: Alignment.center,
                              child: RaisedButton(
                                elevation: 0.0,
                                padding: EdgeInsets.only(
                                    left: 40.0, right: 40.0, top: 13.0, bottom: 13.0),
                                color: Color.fromARGB(999, 201, 233, 246),
                                shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(7.0),
                                ),
                                onPressed: () {
                                  NavigationHelper.push(context, StartScreen());
                                },
                                child: Text('Finish', style: TextStyle(fontSize: 20.0, color: Colors.black),),
                              ),
                            ),
                          ],
                        ),

                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 40.0),
                          child: Image(
                            width: 100,
                            height: 80,
                            image:
                            AssetImage('assets/images/flutter_logo_v2.png'),
                          ),
                        ),
                      )
                    ],
                  ),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

}
