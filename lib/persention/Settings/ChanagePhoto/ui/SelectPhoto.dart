import 'dart:io';

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:image_picker/image_picker.dart';
import 'package:store/const/color.dart';
import 'package:store/persention/Settings/ChanagePhoto/bloc/photo_bloc.dart';
import 'package:store/persention/Settings/ChanagePhoto/route/route_names.dart';
import 'package:store/persention/Settings/settings.dart';
class ChanagePhotoPage extends StatefulWidget {
  @override
  _ChanagePhotoPageState createState() => _ChanagePhotoPageState();
}

class _ChanagePhotoPageState extends State<ChanagePhotoPage> {
  File _image;
  final picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
            backgroundColor: HexColor(BackColor),
        appBar: AppBar(
          title: Text(
            " Chanage Photo",
          ),
          backgroundColor: HexColor(BottomBarcolor),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  _showSelectionDialog();
                },
                child: BlocBuilder<PhotoBloc, PhotoState>(
                  cubit: BlocProvider.of<PhotoBloc>(
                      context), // provide the local bloc instance
                  builder: (context, state) {
                    return Container(
                      height: 150,
                      width: 150,
                      child: state is PhotoInitial
                          ? Image.asset(
                              'assets/images/user.png') // set a placeholder image when no photo is set
                          : Image.file((state as PhotoSet).photo),
                    );
                  },
                ),
              ),
              SizedBox(height: 50),
              Text(
                'الرجاء إختيار صورة شخصية',
                style: TextStyle(fontSize: 22),
              ),
              Container(
                    height: 50,
                    width: double.infinity,
                    child: RaisedButton(
                      color:     HexColor(BottomBarcolor),
                      onPressed: () {


AwesomeDialog(
  btnCancelOnPress: () {},
            context: context,
            btnCancelText:"إلغاء",
            btnOkText: "نعم",
            animType: AnimType.SCALE,
            dialogType: DialogType.NO_HEADER,
            body: Center(child: Text(
              "هل تريد تغيير صورتك الشخصية     ؟",
                    style: TextStyle(fontStyle: FontStyle.normal),
                  ),),
            title: 'هل أنت متأكد؟',
            btnOkOnPress: () {

              AwesomeDialog(
                    btnCancelText:"إلغاء",
            btnOkText: "نعم",
            context: context,
            animType: AnimType.SCALE,
            dialogType: DialogType.SUCCES,
            body: Center(child: Text(
"تمت العملية بنجاح",
                    style: TextStyle(),
                  ),),
            btnOkOnPress: () {
                Navigator.push(
                                      context,
                                      new MaterialPageRoute(
                                          builder: (context) =>
                                              SettingsPage()));
                         
            },
                 )..show();
            },
           

                 )..show();
                        //   onTap: () {
                                       },
                        // otherwise.
                         
                      
                      child: Text(
                        'حفظ',
                        style: TextStyle(color: Colors.white),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(18.0),
                          side: BorderSide(color: 
                          HexColor(BottomBarcolor))),
                    ),
                  )
            ],
          ),
        ),
      ),
    );
  }

  /// Method for sending a selected or taken photo to the EditPage
  Future selectOrTakePhoto(ImageSource imageSource) async {
    final pickedFile = await picker.getImage(source: imageSource);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
        Navigator.pushNamed(context, routeEdit, arguments: _image);
      } else
        print('No photo was selected or taken');
    });
  }

  /// Selection dialog that prompts the user to select an existing photo or take a new one
  Future _showSelectionDialog() async {
    await showDialog(
      builder: (context) => SimpleDialog(
        title: Text('Select photo'),
        children: <Widget>[
          SimpleDialogOption(
            child: Text('From gallery'),
            onPressed: () {
              selectOrTakePhoto(ImageSource.gallery);
              Navigator.pop(context);
            },
          ),
          SimpleDialogOption(
            child: Text('Take a photo'),
            onPressed: () {
              selectOrTakePhoto(ImageSource.camera);
              Navigator.pop(context);
            },
          ),
        ],
      ), context: context,
    );
  }
}
