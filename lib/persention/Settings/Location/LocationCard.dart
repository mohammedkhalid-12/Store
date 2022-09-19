import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:store/const/color.dart';

class LocationCard extends StatefulWidget {
  LocationCard({Key key}) : super(key: key);

  @override
  State<LocationCard> createState() => _LocationCardState();
}

class _LocationCardState extends State<LocationCard> {
  List<Widget> _cardList = [];

  void _addCardWidget() {
    setState(() {
      _cardList.add(_card());
    });
  }

  Widget _card() {
    return Container(
      height: 350,
      margin: EdgeInsets.only(top: 5, left: 8, right: 8),
      decoration: new BoxDecoration(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Card(
        color: Colors.white,
        margin: EdgeInsets.all(15),
        elevation: 1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            width: 50,
            child: Column(
              children: [
                Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Spacer(),
                      Column(children: [
                    
                        Container(
                            width: MediaQuery.of(context).size.width/1.2,
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              shape: BoxShape.rectangle,
                              borderRadius: new BorderRadius.circular(2.0),
                            ),
                            child: TextFormField(
                                textDirection: TextDirection.rtl,
                                decoration: InputDecoration(
                                  hintTextDirection: TextDirection.rtl,
                                  border: InputBorder.none,
                                     hintStyle:  TextStyle(
                            color: Colors.grey[600],
                          ),
                                  hintText: '     اسم العنوان ',
                                ))),
                      ]),
                   
                    ]),
                 SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                  height: 4,
                ),
                    Column(
                                        mainAxisAlignment: MainAxisAlignment.end,

                      children: [
                        Container(
                            width: 165,
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              shape: BoxShape.rectangle,
                              borderRadius: new BorderRadius.circular(2.0),
                            ),
                            child: TextFormField(
                                textDirection: TextDirection.rtl,
                                decoration: InputDecoration(
                                  hintTextDirection: TextDirection.rtl,
                                  border: InputBorder.none,
                                     hintStyle:  TextStyle(
                            color: Colors.grey[600],
                          ),
                                  hintText: '    الشارع ',
                                ))),
                        SizedBox(width: 20),
                        SizedBox(
                          height: 3,
                        ),
                        Container(
                            width: 165,
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              shape: BoxShape.rectangle,
                              borderRadius: new BorderRadius.circular(2.0),
                            ),
                            child: TextFormField(
                                textDirection: TextDirection.rtl,
                                decoration: InputDecoration(
                                  hintTextDirection: TextDirection.rtl,
                                  border: InputBorder.none,
                                  hintText: '  رقم المنزل ',
                                ))),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Container(
                            width: 165,
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              shape: BoxShape.rectangle,
                              borderRadius: new BorderRadius.circular(2.0),
                            ),
                            child: TextFormField(
                                textDirection: TextDirection.rtl,
                                decoration: InputDecoration(
                                  hintTextDirection: TextDirection.rtl,
                                  border: InputBorder.none,
                                     hintStyle:  TextStyle(
                            color: Colors.grey[600],
                          ),
                                  hintText: '   المدينة',
                                ))),
                        SizedBox(width: 20),
                        SizedBox(
                          height: 3,
                        ),
                        Container(
                            width: 165,
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              shape: BoxShape.rectangle,
                              borderRadius: new BorderRadius.circular(2.0),
                            ),
                            child: TextFormField(
                                textDirection: TextDirection.rtl,
                                decoration: InputDecoration(
                                  hintTextDirection: TextDirection.rtl,
                                  border: InputBorder.none,
                                     hintStyle:  TextStyle(
                            color: Colors.grey[600],
                          ),
                                  hintText: '  الحي ',
                                ))),
                                
                      ],
                    ),
                  ],
                ),
                 SizedBox(
                  height: 8,
                ),
                     Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Spacer(),
                      Column(children: [
                    
                        Container(
                          height: 70,
                            width: MediaQuery.of(context).size.width/1.2,
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              shape: BoxShape.rectangle,
                              borderRadius: new BorderRadius.circular(2.0),
                            ),
                            child: TextFormField(
                               maxLines: 4,
                           minLines: 4,
                          
                                textDirection: TextDirection.rtl,
                                decoration: InputDecoration(
                                  hintTextDirection: TextDirection.rtl,
                                  border: InputBorder.none,
                                     hintStyle:  TextStyle(
                            color: Colors.grey[600],
                          ),
                                  hintText: '     تفاصيل  إضافية ',
                                ))),
                      ]),
                   
                    ]),
                       SizedBox(
                  height: 8,
                ),
                     Container(
                    height: 50,
                    width:100,
                    child: RaisedButton(
                      color:     HexColor(BottomBarcolor),
                      onPressed: () {
                        // Validate returns true if the form is valid, or false
                        // otherwise.
                         
                      },
                      child: Text(
                        'حفظ',
                        style: TextStyle(color: Colors.white),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(18.0),
                          side: BorderSide(color: 
                          HexColor(BottomBarcolor))),
                    ),
                  ),
              ],
              
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor(BackColor),

      appBar: AppBar(
        title: Text(
          " Add Location",
        ),
        backgroundColor: HexColor(BottomBarcolor),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: ListView.builder(
            itemCount: _cardList.length,
            itemBuilder: (context, index) {
              return _cardList[index];
            }),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: HexColor(BottomBarcolor),
        onPressed: _addCardWidget,
        tooltip: 'Add',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
