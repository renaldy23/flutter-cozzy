import 'package:cozzy/model/city_model.dart';
import 'package:cozzy/theme.dart';
import 'package:flutter/material.dart';

class CityCard extends StatelessWidget {
  final CityModel city;
  CityCard(this.city);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: 20,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(18),
        child: Container(
          height: 150,
          width: 120,
          color: Color(0xffF6F7F8),
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset(
                    city.imgUrl,
                    height: 102,
                    width: 120,
                    fit: BoxFit.cover,
                  ),
                  city.isFavorite == true
                      ? Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            height: 30,
                            width: 50,
                            decoration: BoxDecoration(
                              color: primaryPurple,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(36),
                              ),
                            ),
                            child: Center(
                              child: Image.asset(
                                "assets/ic_star.png",
                                width: 22,
                                height: 22,
                              ),
                            ),
                          ),
                        )
                      : SizedBox(),
                ],
              ),
              SizedBox(
                height: 11,
              ),
              Text(
                city.name,
                style: primaryStyle.copyWith(
                  fontSize: 16,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
