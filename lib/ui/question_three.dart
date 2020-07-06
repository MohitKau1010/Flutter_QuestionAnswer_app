import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:fluttertestapp/ui/lastScreen.dart';
import 'package:fluttertestapp/utils/navigater_helper.dart';

class QuestionsThree extends StatefulWidget {
  @override
  _QuestionsThreeState createState() => _QuestionsThreeState();
}

class _QuestionsThreeState extends State<QuestionsThree> {
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
                          elevation: 2.0,
                          padding: EdgeInsets.only(
                              left: 20.0, right: 20.0, top: 13.0, bottom: 13.0),
                          color: Color.fromARGB(999, 67, 179, 224),
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
                          elevation: 0.0,
                          padding: EdgeInsets.only(
                              left: 40.0, right: 40.0, top: 13.0, bottom: 13.0),
                          color: Color.fromARGB(999, 201, 233, 246),
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

                  ///
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 40.0, bottom: 20.0, left: 40.0, right: 20.0),
                    child: Text(
                      'Question 3',
                      style: TextStyle(fontSize: 24, color: Colors.black),
                    ),
                  ),

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
                              "Can you further break \nthis down into three \nreasons? ",
                              style: TextStyle(
                                fontSize: 24,
                              ),
                            ),
                            SizedBox(height: 30.0,),

                            ///text input 1
                            TextFormField(
                              keyboardType: TextInputType.multiline,
                              controller: _answerController,
                              maxLines: 1,
                              minLines: 1,
                              autofocus: false,
                              decoration: new InputDecoration(
                                filled: true,
                                isDense: true,
                                hintText: "Answer",
                                //labelText: "Answer",
                                fillColor: Colors.white,
                                border: new OutlineInputBorder(
                                  borderRadius: new BorderRadius.circular(5.0),
                                  borderSide: new BorderSide(),
                                ),
                              ),
                              validator: (val) {
                                if (val.length == 0) {
                                  return "Answer is not empty";
                                } else {
                                  return null;
                                }
                              },
                              style: new TextStyle(
                                fontFamily: "Poppins",
                              ),
                            ),

                            SizedBox(height: 20.0,),
                            ///text input 2
                            TextFormField(
                              keyboardType: TextInputType.multiline,
                              controller: _answerController,
                              maxLines: 1,
                              minLines: 1,
                              autofocus: false,
                              decoration: new InputDecoration(
                                filled: true,
                                isDense: true,
                                hintText: "Answer",
                                //labelText: "Answer",
                                fillColor: Colors.white,
                                border: new OutlineInputBorder(
                                  borderRadius: new BorderRadius.circular(5.0),
                                  borderSide: new BorderSide(),
                                ),
                              ),
                              validator: (val) {
                                if (val.length == 0) {
                                  return "Answer is not empty";
                                } else {
                                  return null;
                                }
                              },
                              style: new TextStyle(
                                fontFamily: "Poppins",
                              ),
                            ),

                            SizedBox(height: 20.0,),
                            ///Text input 3
                            TextFormField(
                              keyboardType: TextInputType.multiline,
                              controller: _answerController,
                              maxLines: 1,
                              minLines: 1,
                              autofocus: false,
                              decoration: new InputDecoration(
                                filled: true,
                                isDense: true,
                                hintText: "Answer",
                                //labelText: "Answer",
                                fillColor: Colors.white,
                                border: new OutlineInputBorder(
                                  borderRadius: new BorderRadius.circular(5.0),
                                  borderSide: new BorderSide(),
                                ),
                              ),
                              validator: (val) {
                                if (val.length == 0) {
                                  return "Answer is not empty";
                                } else {
                                  return null;
                                }
                              },
                              style: new TextStyle(
                                fontFamily: "Poppins",
                              ),
                            ),

                            SizedBox(height: 30,),
                            ///
                            Align(
                              alignment: Alignment.center,
                              child: RaisedButton(
                                elevation: 0.0,
                                padding: EdgeInsets.only(
                                    left: 40.0, right: 40.0, top: 13.0, bottom: 13.0),
                                color: Color.fromARGB(999, 201, 233, 246),
                                shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(40.0),
                                ),
                                onPressed: () {
                                  NavigationHelper.push(context, LastScreen());
                                },
                                child: Text('Next', style: TextStyle(fontSize: 20.0, color: Colors.black),),
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

                  Container(
                    margin: EdgeInsets.only(top: 0.0, right: 40.0, left: 40.0),
                    padding: EdgeInsets.only(top: 26.0,left:35.0,right: 35.0),
                    width: queryData.size.width,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: hexToColor("#87cfea"),
                        borderRadius:
                        new BorderRadius.only(
                            bottomLeft:Radius.circular(30.0),
                            bottomRight:Radius.circular(30.0))),),

                  Container(
                    margin: EdgeInsets.only(top: 0.0, right: 60.0, left: 60.0),
                    padding: EdgeInsets.only(top: 26.0,left:35.0,right: 35.0),
                    width: queryData.size.width,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color:  hexToColor("#c9e9f6"),
                        borderRadius:
                        new BorderRadius.only(
                            bottomLeft:Radius.circular(30.0),
                            bottomRight:Radius.circular(30.0))),),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

}
