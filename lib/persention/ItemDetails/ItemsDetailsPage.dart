import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:store/application/model/data.dart';
import 'package:store/const/color.dart';
import 'package:store/persention/Checkout/shopping_cart_page.dart';
import 'package:store/themes/light_color.dart';
import 'package:store/themes/theme.dart';
import 'package:store/value/Images.dart';
import 'package:store/widgets/ReviewsItemsUserCard.dart';
import 'package:store/widgets/extentions.dart';
import 'package:store/widgets/title_text.dart';

class ItemsDetailPage extends StatefulWidget {
  ItemsDetailPage({Key key}) : super(key: key);

  @override
  _ItemsDetailPageState createState() => _ItemsDetailPageState();
}

class _ItemsDetailPageState extends State<ItemsDetailPage>
    with TickerProviderStateMixin {
  AnimationController controller;
  Animation<double> animation;
  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    animation = Tween<double>(begin: 0, end: 1).animate(
        CurvedAnimation(parent: controller, curve: Curves.easeInToLinear));
    controller.forward();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  bool isLiked = false;
  Widget _appBar() {
    return Container(
      color: HexColor(BottomBarcolor),
      padding: AppTheme.padding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          _icon(
            Icons.arrow_back_ios,
            color: Colors.black54,
            size: 15,
            padding: 12,
            isOutLine: true,
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          _icon(isLiked ? Icons.favorite : Icons.favorite_border,
              color: isLiked ? LightColor.red : LightColor.black,
              size: 15,
              padding: 12,
              isOutLine: false, onPressed: () {
            setState(() {
              isLiked = !isLiked;
            });
          }),
        ],
      ),
    );
  }

  Widget _icon(
    IconData icon, {
    Color color = LightColor.iconColor,
    double size = 20,
    double padding = 10,
    bool isOutLine = false,
    Function onPressed,
  }) {
    return Container(
      height: 40,
      width: 40,
      padding: EdgeInsets.all(padding),
      // margin: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        border: Border.all(
            color: Colors.white,
            style: isOutLine ? BorderStyle.solid : BorderStyle.none),
        borderRadius: BorderRadius.all(Radius.circular(13)),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: HexColor(BottomBarcolor),
              blurRadius: 9,
              spreadRadius: 10,
              offset: Offset(5, 14)),
        ],
      ),
      child: Icon(icon, color: color, size: size),
    ).ripple(() {
      if (onPressed != null) {
        onPressed();
      }
    }, borderRadius: BorderRadius.all(Radius.circular(13)));
  }

  Widget _productImage() {
    return AnimatedBuilder(
      builder: (context, child) {
        return AnimatedOpacity(
          duration: Duration(milliseconds: 500),
          opacity: animation.value,
          child: child,
        );
      },
      animation: animation,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          TitleText(
            text: "AIP",
            fontSize: 160,
          ),
          Image.asset(Images.item)
        ],
      ),
    );
  }

  Widget _categoryWidget() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 0),
      width: AppTheme.fullWidth(context),
      height: 100,
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children:
              AppData.showThumbnailList.map((x) => _thumbnail(x)).toList()),
    );
  }

  Widget _thumbnail(String image) {
    return AnimatedBuilder(
      animation: animation,
      //  builder: null,
      builder: (context, child) => AnimatedOpacity(
        opacity: animation.value,
        duration: Duration(milliseconds: 500),
        child: child,
      ),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: Container(
          height: 40,
          width: 50,
          decoration: BoxDecoration(
            border: Border.all(
              color: LightColor.grey,
            ),
            borderRadius: BorderRadius.all(Radius.circular(13)),
            // color: Theme.of(context).backgroundColor,
          ),
          child: Image.asset(image),
        ).ripple(() {}, borderRadius: BorderRadius.all(Radius.circular(13))),
      ),
    );
  }

  Widget _detailWidget() {
    return DraggableScrollableSheet(
      
      maxChildSize: .9,
      initialChildSize: .53,
      minChildSize: .53,
      builder: (context, scrollController) {
        return Container(
          padding: AppTheme.padding.copyWith(bottom: 0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
            color: HexColor(BackColor),
          ),
          child: Container(
            height: 1000000000000000000,
                        color: HexColor(BackColor),

            child: SingleChildScrollView(
              controller: scrollController,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  SizedBox(height: 5),
                  Container(
                    alignment: Alignment.center,
                    child: Container(
                      width: 50,
                      height: 5,
                      decoration: BoxDecoration(
                          color: LightColor.iconColor,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
                    
                    color: HexColor(BackColor),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        TitleText(
                            text: "T-shirt  MAX 200",
                            fontSize: 22,
                            color: Colors.white),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[],
                            ),
                            Row(
                              children: <Widget>[
                                Icon(Icons.star,
                                    color: LightColor.yellowColor, size: 17),
                                Icon(Icons.star,
                                    color: LightColor.yellowColor, size: 17),
                                Icon(Icons.star,
                                    color: LightColor.yellowColor, size: 17),
                                Icon(Icons.star,
                                    color: LightColor.yellowColor, size: 17),
                                Icon(Icons.star_border, size: 17),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  _availableSize(),
                  Divider(
                    height: 2,
                    color: HexColor(BottomBarcolor),
                  ),
                  _availableColor(),
                  Divider(
                    height: 2,
                    color: HexColor(BackColor),
                  ),
                  _description(),

                  Divider(height: 5, color: Colors.white,
                  indent: 1,

                  endIndent: 20,
                  )
                  ,
                 
                  Container(
                    height: 10000000000000000000,
                    width: 700,
                    color: HexColor(BackColor),
                    
                    
                    child: Column(

                      children: [
                        
                        Text(
                          "                                                              : التعليقات",
                          style: TextStyle(color:Colors.white,fontSize: 16,fontWeight: FontWeight.bold ),
                        ),
                        ReviewItems(),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _availableSize() {
    return Container(
      color: HexColor(BackColor),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new RichText(
            textDirection: TextDirection.rtl,
            maxLines: 3,
            text: new TextSpan(
              children: <TextSpan>[
                new TextSpan(
                  text: '\500.99 ريال ',
                  style: new TextStyle(
                    color: Colors.white,
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
                new TextSpan(
                  text: ' \400.99 ريال ',
                  style: new TextStyle(
                    wordSpacing: 3,
                    color: Colors.white,
                    //   decoration: TextDecoration.lineThrough,
                  ),
                ),
              ],
            ),
          ),
          TitleText(
            color: Colors.white,
            text: "Available Size",
            fontSize: 14,
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _sizeWidget(
                "US 6",
                isSelected: true,
              ),
              _sizeWidget(
                "US 7",
              ),
              _sizeWidget("US 8"),
              _sizeWidget("US 9"),
            ],
          )
        ],
      ),
    );
  }

  Widget _sizeWidget(String text, {bool isSelected = false}) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(
            color: HexColor(BottomBarcolor),
            style: !isSelected ? BorderStyle.solid : BorderStyle.none),
        borderRadius: BorderRadius.all(Radius.circular(13)),
        color: isSelected ? HexColor(BackColor) : HexColor(BackColor),
      ),
      child: TitleText(
        text: text,
        fontSize: 16,
        color: isSelected ? LightColor.background : LightColor.titleTextColor,
      ),
    ).ripple(() {}, borderRadius: BorderRadius.all(Radius.circular(13)));
  }

  Widget _availableColor() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        TitleText(
          text: "Available Colors:",
          fontSize: 14,
          color: Colors.white,
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            _colorWidget(LightColor.yellowColor, isSelected: true),
            SizedBox(
              width: 30,
            ),
            _colorWidget(LightColor.lightBlue),
            SizedBox(
              width: 30,
            ),
            _colorWidget(LightColor.black),
            SizedBox(
              width: 30,
            ),
            _colorWidget(LightColor.red),
            SizedBox(
              width: 30,
            ),
            _colorWidget(LightColor.skyBlue),
          ],
        )
      ],
    );
  }

  Widget _colorWidget(Color color, {bool isSelected = false}) {
    return CircleAvatar(
      radius: 12,
      backgroundColor: color.withAlpha(150),
      child: isSelected
          ? Icon(
              Icons.check_circle,
              color: color,
              size: 18,
            )
          : CircleAvatar(radius: 7, backgroundColor: color),
    );
  }

  Widget _description() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        TitleText(
          text: "Description:",
          fontSize: 14,
          color: Colors.white,
        ),
        Text(AppData.description,
            style: TextStyle(
              color: Colors.white,
            )),
      ],
    );
  }

  FloatingActionButton _flotingButton() {
    return FloatingActionButton(
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => CartPage()));
      },
      backgroundColor: HexColor(BottomBarcolor),
      child: Icon(Icons.shopping_cart,
          color: Theme.of(context).floatingActionButtonTheme.backgroundColor),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor(BottomBarcolor),
      floatingActionButton: _flotingButton(),
      body: SafeArea(
        child: Container(
          color: HexColor(BackColor),
          child: Stack(
            children: <Widget>[
              Column(
                children: <Widget>[
                  _appBar(),
                  _productImage(),
                ],
              ),
              _detailWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
