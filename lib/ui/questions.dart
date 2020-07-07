import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:fluttertestapp/ui/question_three.dart';
import 'package:fluttertestapp/utils/navigater_helper.dart';
import 'package:fluttertestapp/utils/utils.dart';

class Questions extends StatefulWidget {
  @override
  _QuestionsState createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  final TextEditingController _answerController =
      TextEditingController(text: "");

  Color hexToColor(String code) {
    return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }

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

  Widget _nextButton(){
    return Align(
      alignment: Alignment.center,
      child: RaisedButton(
        elevation: 0.0,
        padding: EdgeInsets.only(
            left: 40.0,
            right: 40.0,
            top: 9.0,
            bottom: 13.0),
        color: Utils.hexToColor("#c9e9f6"),//Color.fromARGB(999, 201, 233, 246),
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(40.0),
        ),
        onPressed: () {
          NavigationHelper.push(
              context, QuestionsThree());
        },
        child: Text(
          'Next',
          style: TextStyle(
              fontSize: 20.0, color: Colors.black,fontWeight:  FontWeight.w400),
        ),
      ),
    );
  }

  //region InputTextField
  Widget _inputTextField(){
    return TextFormField(
      keyboardType: TextInputType.multiline,
      controller: _answerController,
      maxLines: 8,
      minLines: 8,
      autofocus: false,
      decoration: new InputDecoration(
        filled: true,
        isDense: true,
        hintText: "Answer",
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
                  /// top margin
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

                  ///container padding
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 30.0, bottom: 20.0, left: 40.0, right: 20.0),
                    child: Text(
                      'Question 1',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600,color: Colors.black),
                    ),
                  ),

                  Stack(
                    alignment: Alignment.topLeft,
                    children: <Widget>[

                      Container(
                        margin: EdgeInsets.only(top: 17, right: 20.0, left: 20.0),
                        padding: EdgeInsets.all(20.0),
                        width: queryData.size.width,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Utils.hexToColor("#43b3e0"),
                            borderRadius: BorderRadius.all(Radius.circular(20.0))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[

                            SizedBox(height: 50,),

                            Text("What is an emotion \nthat has been on your \nmind recently?",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold
                              ),
                            ),

                            SizedBox(height: 30.0,),

                            ///input text filed
                            _inputTextField(),

                            SizedBox(
                              height: 30,
                            ),

                            ///next button..
                            _nextButton(),

                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 40.0, bottom: 40.0),
                          child: Image(
                            width: 100,
                            height: 80,
                            image: AssetImage('assets/images/flutter_logo_v2.png'),
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
