import 'package:flutter/material.dart';

import 'package:card_swiper/card_swiper.dart';
import 'package:travelheba/constants/color_contants.dart';
import 'package:travelheba/constants/style_constants.dart';
import 'package:travelheba/models/carousel_model.dart';
import 'package:travelheba/models/popular_destination_model.dart';
import 'package:travelheba/models/travelog_model.dart';
import 'package:travelheba/widget/bottom_navigation_travelheba.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _current = 0;

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //setting up appbar
      appBar: AppBar(
        backgroundColor: mBackgroundColor,
        title: Row(
          children: [
            Text(
              'travelheba',
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
            Icon(
              Icons.flight_takeoff,
              color: Colors.orangeAccent,
            )
          ],
        ),
        elevation: 0,
      ),
      //setting up background color
      backgroundColor: mBackgroundColor,

      //setting up custom bottom navigation bar
      bottomNavigationBar: BottomNavigationTravelHeba(),

      body: Container(
        child: ListView(
          physics: ClampingScrollPhysics(),
          children: [
            //promos section
            Padding(
              padding: EdgeInsets.only(left: 16, right: 16, bottom: 24),
              child: Text(
                'Hi, Annaya This Promos for You! ',
                style: mTitleStyle,
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(
                left: 16,
                right: 16,
              ),
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 190,
                    child: Swiper(
                        onIndexChanged: (index) {
                          setState(() {
                            _current = index;
                          });
                        },
                        autoplay: true,
                        layout: SwiperLayout.DEFAULT,
                        itemCount: carousels.length,
                        itemBuilder: (BuildContext context, index) {
                          return Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                    image: AssetImage(carousels[index].image),
                                    fit: BoxFit.cover)),
                          );
                        }),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: map<Widget>(carousels, (index, image) {
                          return Container(
                              alignment: Alignment.centerLeft,
                              height: 6,
                              width: 6,
                              margin: EdgeInsets.only(right: 8),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: _current == index
                                      ? mBlueColor
                                      : mGreyColor));
                        }),
                      ),
                      Text(
                        "More ..",
                        style: mMoreDiscountTitleStyle,
                      )
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16, top: 12, bottom: 12),
              child: Text(
                "Let's Booking!",
                style: mTitleStyle,
              ),
            ),
            Container(
              height: 144,
              margin: EdgeInsets.only(left: 16, right: 16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(right: 8),
                          padding: EdgeInsets.only(left: 16),
                          height: 64,
                          decoration: BoxDecoration(
                              color: mFillColor,
                              borderRadius: BorderRadius.circular(12),
                              border:
                                  Border.all(color: mBorderColor, width: 1)),
                          child: Row(
                            children: [
                              Icon(
                                Icons.flight_takeoff_outlined,
                                color: Colors.blue,
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 16,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Flight',
                                      style: mServiceTitleStyle,
                                    ),
                                    Text(
                                      'Feel Freedom',
                                      style: mServiceSubtitleStyle,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(right: 8),
                          padding: EdgeInsets.only(left: 16),
                          height: 64,
                          decoration: BoxDecoration(
                              color: mFillColor,
                              borderRadius: BorderRadius.circular(12),
                              border:
                                  Border.all(color: mBorderColor, width: 1)),
                          child: Row(
                            children: [
                              Icon(
                                Icons.directions_train,
                                color: Colors.blue,
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 16,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Trains',
                                      style: mServiceTitleStyle,
                                    ),
                                    Text(
                                      'Intercity',
                                      style: mServiceSubtitleStyle,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(right: 8),
                          padding: EdgeInsets.only(left: 16),
                          height: 64,
                          decoration: BoxDecoration(
                              color: mFillColor,
                              borderRadius: BorderRadius.circular(12),
                              border:
                                  Border.all(color: mBorderColor, width: 1)),
                          child: Row(
                            children: [
                              Icon(
                                Icons.local_hotel,
                                color: Colors.blue,
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 16,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Hotels',
                                      style: mServiceTitleStyle,
                                    ),
                                    Text(
                                      "Let's take a break",
                                      style: mServiceSubtitleStyle,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(right: 8),
                          padding: EdgeInsets.only(left: 16),
                          height: 64,
                          decoration: BoxDecoration(
                              color: mFillColor,
                              borderRadius: BorderRadius.circular(12),
                              border:
                                  Border.all(color: mBorderColor, width: 1)),
                          child: Row(
                            children: [
                              Icon(
                                Icons.car_rental,
                                color: Colors.blue,
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 16,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Car Rental',
                                      style: mServiceTitleStyle,
                                    ),
                                    Text(
                                      'Around the city',
                                      style: mServiceSubtitleStyle,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16, top: 12, bottom: 12),
              child: Text(
                "Popular Destinations!",
                style: mTitleStyle,
              ),
            ),
            Container(
              height: 140,
              child: ListView.builder(
                itemCount: populars.length,
                padding: EdgeInsets.only(left: 16, right: 16),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    child: Container(
                      height: 140,
                      width: 120,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: mBorderColor, width: 1)),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 15,
                          ),
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage(
                              populars[index].image,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            populars[index].name,
                            style: mPopularDestinationTitleStyle,
                          ),
                          Text(
                            populars[index].country,
                            style: mPopularDestinationSubtitleStyle,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16, top: 12, bottom: 12),
              child: Text(
                "Travlog!",
                style: mTitleStyle,
              ),
            ),
            Container(
              height: 181,
              child: ListView.builder(
                padding: EdgeInsets.only(left: 16),
                itemCount: travlogs.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(right: 14),
                    width: 220,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            Container(
                              height: 104,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(travlogs[index].image),
                                ),
                              ),
                            ),
                            Positioned(
                                right: 0,
                                child: Container(
                                  height: 35,
                                  width: 70,
                                  decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(50.0),
                                      )),
                                )),
                            Positioned(
                              right: 0,
                              child: Row(
                                children: [
                                  SizedBox(
                                    height: 35,
                                  ),
                                  Text(
                                    'travelheba',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  )
                                ],
                              ),
                            ),
                            Positioned(
                              bottom: 5,
                              left: 5,
                              child: Text(
                                'Travlog ' + travlogs[index].name,
                                style: mTravelLogTitleStyle,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          travlogs[index].content,
                          style: mTravelLogContentStyle,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          travlogs[index].place,
                          style: mTravelLogPlaceStyle,
                        )
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
