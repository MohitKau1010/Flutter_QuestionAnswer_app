import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:fluttertestapp/ui/start_screen.dart';
import 'package:fluttertestapp/utils/navigater_helper.dart';
import 'package:fluttertestapp/utils/utils.dart';

class LastScreen extends StatefulWidget {
  @override
  _LastScreenState createState() => _LastScreenState();
}

class _LastScreenState extends State<LastScreen> {
  final TextEditingController _answerController =
      TextEditingController(text: "");

  //region QuestionBtn
  Widget _questionBtn() {
    return RaisedButton(
      elevation: 0.0,
      padding:
          EdgeInsets.only(left: 30.0, right: 30.0, top: 13.0, bottom: 13.0),
      color: Utils.hexToColor("#c9e9f6"),
      shape: new RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(10.0),
      ),
      onPressed: () {
        ///NavigationHelper.push(context, Questions());
      },
      child: Text(
        'Questions',
        style: TextStyle(
            fontSize: 18.0, fontWeight: FontWeight.w600, color: Colors.black),
      ),
    );
  }
  //endregion

  //region StoryButton
  Widget _storyButton() {
    return RaisedButton(
      elevation: 4.0,
      padding:
          EdgeInsets.only(left: 50.0, right: 50.0, top: 13.0, bottom: 13.0),
      color: Utils.hexToColor("#43b3e0"),
      shape: new RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(10.0),
      ),
      onPressed: () {
        ///NavigationHelper.push(context, Questions());
      },
      child: Text(
        'Story',
        style: TextStyle(
            fontSize: 18.0, fontWeight: FontWeight.w600, color: Colors.black),
      ),
    );
  }
  //endregion

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
                  ///top margin
                  SizedBox(
                    height: 30,
                  ),

                  ///top buttons..
                  Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        _questionBtn(),
                        Padding(
                          padding: EdgeInsets.only(right: 30.0),
                        ),
                        _storyButton(),
                      ]),

                  SizedBox(
                    height: 37.0,
                  ),

                  Stack(
                    alignment: Alignment.topLeft,
                    children: <Widget>[
                      Container(
                        margin:
                            EdgeInsets.only(top: 30, right: 30.0, left: 30.0),
                        padding: EdgeInsets.all(20.0),
                        width: queryData.size.width,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Color.fromARGB(999, 67, 179, 224),
                            borderRadius:
                                new BorderRadius.all(Radius.circular(28.0))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              height: 40,
                            ),
                            Text(
                              "An emotion i am currently \nfeeling is...... \n\nA recent action that triggered this emotion is...... ",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 270.0,
                            ),

                            ///center finish button
                            Align(
                              alignment: Alignment.center,
                              child: RaisedButton(
                                elevation: 0.0,
                                padding: EdgeInsets.only(
                                    left: 50.0,
                                    right: 50.0,
                                    top: 13.0,
                                    bottom: 13.0),
                                color: Utils.hexToColor("#c9e9f6"),
                                shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(7.0),
                                ),
                                onPressed: () {
                                  NavigationHelper.push(context, StartScreen());
                                },
                                child: Text(
                                  'Finish',
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black),
                                ),
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
