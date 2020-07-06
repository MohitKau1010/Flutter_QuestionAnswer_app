import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:fluttertestapp/ui/StartScreen.dart';
import 'package:fluttertestapp/utils/navigater_helper.dart';

class StoryScreen extends StatefulWidget {
  @override
  _StoryScreenState createState() => _StoryScreenState();
}

class _StoryScreenState extends State<StoryScreen> {
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
                  Container(
                    width: queryData.size.width,
                    padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0, bottom: 13.0),
                    child:RaisedButton(
                      elevation: 0.0,
                      padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 13.0, bottom: 13.0),
                      color: Color.fromARGB(999, 201, 233, 246),
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10.0),
                      ),
                      onPressed: () {
                        ///NavigationHelper.push(context, Questions());
                      },
                    ),
                  ),

                  SizedBox(height:10.0,),

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
                              height: 50,
                            ),

                            TextFormField(
                              keyboardType: TextInputType.multiline,
                              controller: _answerController,
                              maxLines: 1,
                              minLines: 1,
                              autofocus: false,
                              decoration: new InputDecoration(
                                filled: true,
                                isDense: true,
                                hintText: "Search Stories",
                                hintStyle: TextStyle(color: Colors.grey),
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
                            SizedBox(height:20.0),
                            SizedBox(height: 400.0,
                            child: ListView(
                              padding: EdgeInsets.all(0),
                              children: [
                                Container(
                                  decoration: new BoxDecoration(
                                    color: Colors.white,
                                    //fillColor: Colors.white,
                                    borderRadius: new BorderRadius.circular(5.0),
                                    border: Border.all(
                                      color: Colors.grey

                                    ),
                                  ),
                                  child: ListTile(
                                    title: Text("Story name",style: TextStyle(color: Colors.grey)),
                                    trailing: Text("30/4/20",style: TextStyle(color: Colors.grey)),
                                    onTap: (){},
                                  ),
                                ),
                                Divider(),
                                Container(
                                  decoration: new BoxDecoration(
                                    color: Colors.white,
                                    //fillColor: Colors.white,
                                    borderRadius: new BorderRadius.circular(5.0),
                                    border: Border.all(
                                        color: Colors.grey

                                    ),
                                  ),
                                  child: ListTile(
                                    title: Text("Story name",style: TextStyle(color: Colors.grey)),
                                    trailing: Text("30/4/20",style: TextStyle(color: Colors.grey)),
                                    onTap: (){},
                                  ),
                                ),
                                Divider(),
                                Container(
                                  decoration: new BoxDecoration(
                                    color: Colors.white,
                                    //fillColor: Colors.white,
                                    borderRadius: new BorderRadius.circular(5.0),
                                    border: Border.all(
                                        color: Colors.grey

                                    ),
                                  ),
                                  child: ListTile(
                                    title: Text("Story name",style: TextStyle(color: Colors.grey)),
                                    trailing: Text("30/4/20",style: TextStyle(color: Colors.grey)),
                                    onTap: (){},
                                  ),
                                ),
                                Divider(),
                                Container(
                                  decoration: new BoxDecoration(
                                    color: Colors.white,
                                    //fillColor: Colors.white,
                                    borderRadius: new BorderRadius.circular(5.0),
                                    border: Border.all(
                                        color: Colors.grey

                                    ),
                                  ),
                                  child: ListTile(
                                    title: Text("Story name",style: TextStyle(color: Colors.grey)),
                                    trailing: Text("30/4/20",style: TextStyle(color: Colors.grey)),
                                    onTap: (){},
                                  ),
                                ),
                                Divider(),
                                Container(
                                  decoration: new BoxDecoration(
                                    color: Colors.white,
                                    //fillColor: Colors.white,
                                    borderRadius: new BorderRadius.circular(5.0),
                                    border: Border.all(
                                        color: Colors.grey

                                    ),
                                  ),
                                  child: ListTile(
                                    title: Text("Story name",style: TextStyle(color: Colors.grey)),
                                    trailing: Text("30/4/20",style: TextStyle(color: Colors.grey)),
                                    onTap: (){},
                                  ),
                                ),
                                Divider(),
                                Container(
                                  decoration: new BoxDecoration(
                                    color: Colors.white,
                                    //fillColor: Colors.white,
                                    borderRadius: new BorderRadius.circular(5.0),
                                    border: Border.all(
                                        color: Colors.grey

                                    ),
                                  ),
                                  child: ListTile(
                                    title: Text("Story name",style: TextStyle(color: Colors.grey)),
                                    trailing: Text("30/4/20",style: TextStyle(color: Colors.grey)),
                                    onTap: (){},
                                  ),
                                ),
                                Divider(),
                                Container(
                                  decoration: new BoxDecoration(
                                    color: Colors.white,
                                    //fillColor: Colors.white,
                                    borderRadius: new BorderRadius.circular(5.0),
                                    border: Border.all(
                                        color: Colors.grey

                                    ),
                                  ),
                                  child: ListTile(
                                    title: Text("Story name",style: TextStyle(color: Colors.grey)),
                                    trailing: Text("30/4/20",style: TextStyle(color: Colors.grey)),
                                    onTap: (){},
                                  ),
                                ),
                                Divider(),
                                Container(
                                  decoration: new BoxDecoration(
                                    color: Colors.white,
                                    //fillColor: Colors.white,
                                    borderRadius: new BorderRadius.circular(5.0),
                                    border: Border.all(
                                        color: Colors.grey

                                    ),
                                  ),
                                  child: ListTile(
                                    title: Text("Story name",style: TextStyle(color: Colors.grey)),
                                    trailing: Text("30/4/20",style: TextStyle(color: Colors.grey)),
                                    onTap: (){},
                                  ),
                                ),

                              ],
                            ),),

                            SizedBox(height: 10.0,),
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
                                  NavigationHelper.removeAll(context, StartScreen());
                                },
                                child: Text('Back', style: TextStyle(fontSize: 20.0, color: Colors.black),),
                              ),
                            ),
                          ],
                        ),

                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 40.0,right: 50.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Image(
                                width: 100,
                                height: 80,
                                image:
                                AssetImage('assets/images/flutter_logo_v2.png'),
                              ),
                              Padding(
                                  padding: const EdgeInsets.only(top: 60.0),
                                  child: Text("Sorted By"))
                            ],
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
