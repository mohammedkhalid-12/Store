import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:settings_ui/settings_ui.dart';
import 'package:store/const/color.dart';
import 'package:store/persention/Settings/CardPayment/CardPaymentPage.dart';
import 'package:store/persention/Settings/ChanagePhoto/chanagePhoto.dart';
import 'package:store/persention/Settings/ChangeEmail/ChangeEmail.dart';
import 'package:store/persention/Settings/Country/CountryPage.dart';
import 'package:store/persention/Settings/Location/LocationCard.dart';
import 'package:store/persention/Settings/Location/LocationPage.dart';
import 'package:store/persention/Settings/Name/chanageName.dart';
import 'package:store/persention/Settings/changePhoneNumber/ChanagePhoneNumber.dart';
import 'package:store/persention/Settings/lanaguage/lanaguage.dart';

class SettingsPage extends StatefulWidget {
  static const String routeName = '/settings';

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: HexColor(BackColor),
        appBar: AppBar(
          title: Text(
            " Settings",
          ),
          backgroundColor: HexColor(BottomBarcolor),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: new MaterialApp(
            debugShowCheckedModeBanner: false,
            builder: (BuildContext context, Widget child) {
              return new Directionality(
                textDirection: TextDirection.rtl,
                child: new Builder(
                  builder: (BuildContext context) {
                    return new MediaQuery(
                      data: MediaQuery.of(context).copyWith(
                        textScaleFactor: 1.0,
                      ),
                      child: SettingsList(
                        sections: [
                          SettingsSection(
                            title: 'الرئيسية',
                            tiles: <SettingsTile>[
                              SettingsTile(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      new MaterialPageRoute(
                                          builder: (context) =>
                                              LangaugeChanagePage()));
                                },
                                leading: Icon(Icons.language),
                                title: ' اللغة',
                                subtitle: 'العربية',
                              ),
                              SettingsTile(
                                onTap:() {
AwesomeDialog(
  btnCancelOnPress: () {},
      btnCancelText:"إلغاء",
            btnOkText: "نعم",
            context: context,
            animType: AnimType.SCALE,
            dialogType: DialogType.NO_HEADER,
            body: Center(child: Text(
              "هل تريد حذف بيانات الارتباط المخذنة لديك ؟",
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
            btnOkOnPress: () {},
                 )..show();
            },
           

                 )..show();
                                },
                                leading: Icon(Icons.delete),
                                title: 'حذف بيانات المؤقتة',
                                subtitle: 'لا',
                              ),
                              SettingsTile(
                                leading: Icon(Icons.person_pin),
                                title: '   البلد ',
                                subtitle: 'المملكة العربية السعودية',
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      new MaterialPageRoute(
                                          builder: (context) =>
                                              CountryPage()));
                                },
                              ),
                            ],
                          ),
                          SettingsSection(
                            title: 'البروفايل',
                            tiles: <SettingsTile>[
                              SettingsTile(
                                leading: Icon(Icons.person_pin),
                                title: '  الإســم ',
                                subtitle: 'تغيير',
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      new MaterialPageRoute(
                                          builder: (context) =>
                                              ChanageNamePage()));
                                },
                              ),
                              SettingsTile(
                                leading: Icon(Icons.phone_android_outlined),
                                title: 'رقم الجوال',
                                subtitle: '0923999093',
                                  onTap: () {
                                  Navigator.push(
                                      context,
                                      new MaterialPageRoute(
                                          builder: (context) =>
                                              ChanagePhoneNumberPage()));
                                },
                              ),
                              SettingsTile(
                                leading: Icon(Icons.email),
                                title: ' البريد الإلكترونى',
                                subtitle: 'تغيير',
                                     onTap: () {
                                  Navigator.push(
                                      context,
                                      new MaterialPageRoute(
                                          builder: (context) =>
                                              ChangeEmailPage()));
                                },
                              ),
                              SettingsTile(
                                leading: Icon(Icons.person),
                                title: '  الصورة الشخصية',
                                subtitle: 'تغيير',
                                  onTap: () {
                                  Navigator.push(
                                      context,
                                      new MaterialPageRoute(
                                          builder: (context) =>
                                              ChanagePhotoPage()));
                                },
                              ),  SettingsTile(
                                leading: Icon(Icons.pin_drop_outlined),
                                title: 'إدارة العناوين',
                                subtitle: 'تغيير',
                                     onTap: () {
                                  Navigator.push(
                                      context,
                                      new MaterialPageRoute(
                                          builder: (context) =>
                                              LocationCard()));
                                }
                              ), SettingsTile(
                                leading: Icon(Icons.payment),
                                title: 'إدارة خيارات الدفع ',
                                subtitle: 'تغيير',
                                 onTap: () {
                                  Navigator.push(
                                      context,
                                      new MaterialPageRoute(
                                          builder: (context) =>
                                              CardPaymentPage()));
                                }
                              ),
                              SettingsTile(
                                               onTap:() {
AwesomeDialog(
  btnCancelOnPress: () {},
      btnCancelText:"إلغاء",
            btnOkText: "نعم",
            context: context,
            animType: AnimType.SCALE,
            dialogType: DialogType.NO_HEADER,
            body: Center(child: Text(
              "هل تريد تسجيل الخروج   ؟",
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
            btnOkOnPress: () {},
                 )..show();
            },
           

                 )..show();
                                },
                                leading: Icon(Icons.broken_image),
                                title: 'تسجيل خروج ',
                              
                                ),
                            ],
                          ),
                        
                            
                            
                          
                        ],
                      ),
                    );
                  },
                ),
              );
            },
          ),
        ));
  }
}
