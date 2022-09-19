import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:store/const/color.dart';
import 'package:store/persention/Card/StoreCardview.dart';
import 'package:store/persention/HomePage/HomePageComponet/Content.dart';
import 'package:store/widgets/ScreenShow.dart';

class Carsoul extends StatefulWidget {
  Carsoul({Key key}) : super(key: key);

  @override
  _CarsoulState createState() => _CarsoulState();
}

final List<String> imagesList = [
  'https://cdn.pixabay.com/photo/2020/11/01/23/22/breakfast-5705180_1280.jpg',
  'https://cdn.pixabay.com/photo/2020/11/01/23/22/breakfast-5705180_1280.jpg',
  'https://cdn.pixabay.com/photo/2019/01/14/17/25/gelato-3932596_1280.jpg',
  'https://cdn.pixabay.com/photo/2017/04/04/18/07/ice-cream-2202561_1280.jpg',
];
final List<String> titles = [
  ' تخفيض ١٠٠٪ ',
  ' عرض خاص ',
  ' عروض ضخمة ',
  '  عرض ضخم ',
];

class _CarsoulState extends State<Carsoul> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: HexColor(BackColor),
        child: Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                height: 100,
                autoPlay: true,
                // enlargeCenterPage: true,
                scrollDirection: Axis.horizontal,
                onPageChanged: (index, reason) {
                  setState(
                    () {
                      _currentIndex = index;
                    },
                  );
                },
              ),
              items: imagesList
                  .map(
                    (item) => Padding(
                      padding: const EdgeInsets.all(0),
                      child: Card(
                        margin: EdgeInsets.only(
                          top: 0.0,
                          bottom: 0.0,
                        ),
                        elevation: 6.0,
                        shadowColor: Colors.redAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20.0),
                          ),
                          child: Stack(
                            children: <Widget>[
                              Image.network(
                                item,
                                fit: BoxFit.cover,
                                width: double.infinity,
                              ),
                              Center(
                                child: Text(
                                  '${titles[_currentIndex]}',
                                  style: TextStyle(
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.black45,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imagesList.map((urlOfItem) {
                int index = imagesList.indexOf(urlOfItem);
                return Container(
                  width: 4.0,
                  height: 5.0,
                  margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentIndex == index
                        ? Color.fromRGBO(0, 0, 0, 0.8)
                        : Color.fromRGBO(0, 0, 0, 0.3),
                  ),
                );
              }).toList(),
            ),
            Container(
              child: HomePageStore(),
            ),
            Expanded(
              child: Container(height: 50, width: 400, child: ListCard()),
            )
          ],
        ),
      ),
    );
  }
}
