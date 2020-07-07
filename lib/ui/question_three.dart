import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:fluttertestapp/ui/last_screen.dart';
import 'package:fluttertestapp/utils/navigater_helper.dart';
import 'package:fluttertestapp/utils/utils.dart';

class QuestionsThree extends StatefulWidget {
  @override
  _QuestionsThreeState createState() => _QuestionsThreeState();
}

class _QuestionsThreeState extends State<QuestionsThree> {
  final TextEditingController _answerController =
  TextEditingController(text: "");


  //region StoryBtn
  Widget _storyButton(){
    return RaisedButton(
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
        style:
        TextStyle(fontSize: 18.0, color: Colors.black, fontWeight: FontWeight.w600),
      ),
    );
  }
  //endregion

  //region QuestionBtn
  Widget _questionButton(){
    return RaisedButton(
      elevation: 4.0,
      padding: EdgeInsets.only(
          left: 20.0, right: 20.0, top: 13.0, bottom: 13.0),
      color: Utils.hexToColor("#43b3e0"),
      shape: new RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(10.0),
      ),
      onPressed: () {
        ///NavigationHelper.push(context, Questions());
      },
      child: Text(
        'Questions',
        style:
        TextStyle(fontSize: 18.0, color: Colors.black,fontWeight: FontWeight.w600),
      ),
    );
  }
  //endregion

  Widget _inputTextField(){
    return TextFormField(
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
          borderRadius: new BorderRadius.circular(8.0),
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
    );

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
                  ///top margin..
                  SizedBox(
                    height: 30,
                  ),

                  ///Buttons row..
                  Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        _questionButton(),
                        Padding(
                          padding: EdgeInsets.only(right: 50.0),
                        ),
                        _storyButton(),
                      ]),
                  ///
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 40.0, bottom: 20.0, left: 40.0, right: 20.0),
                    child: Text(
                      'Question 3',
                      style: TextStyle(fontSize: 20, color: Colors.black,fontWeight: FontWeight.w600),
                    ),
                  ),

                  Stack(
                    alignment: Alignment.topLeft,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 20, right: 20.0, left: 20.0),
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
                              height: 45,
                            ),
                            Text(
                              "Can you further break \nthis down into three \nreasons? ",
                              style: TextStyle(
                                fontSize: 23,
                                fontWeight: FontWeight.w700
                              ),
                            ),
                            SizedBox(height: 30.0,),
                            ///text input 1
                            _inputTextField(),
                            SizedBox(height: 20.0,),
                            ///text input 2
                            _inputTextField(),
                            SizedBox(height: 20.0,),
                            ///Text input 3
                            _inputTextField(),
                            SizedBox(height: 50,),
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
                                child: Text('Next', style: TextStyle(fontSize: 20.0, color: Colors.black,fontWeight: FontWeight.w700),),
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

                  Utils.darkShadesOfContainer(queryData),
                  Utils.lightShadeOfContainer(queryData),
                  SizedBox(height: 50,),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

}
