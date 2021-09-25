import 'package:cozzy/model/city_model.dart';
import 'package:cozzy/model/space_model.dart';
import 'package:cozzy/model/tips_model.dart';
import 'package:cozzy/theme.dart';
import 'package:cozzy/widget/bottom_navbar_item.dart';
import 'package:cozzy/widget/city_card.dart';
import 'package:cozzy/widget/space_card.dart';
import 'package:cozzy/widget/tips_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var imgUrl2 = "assets/ic_home.png";
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: 24,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 24,
                  ),
                  child: Text(
                    "Explore Now",
                    style: primaryStyle.copyWith(
                      fontSize: 24,
                    ),
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 24,
                  ),
                  child: Text(
                    "Mencari kosan yang cozzy",
                    style: secondaryStyle,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 24,
                  ),
                  child: Text(
                    "Popular Cities",
                    style: regularStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 24,
                  ),
                  child: Container(
                    height: 150,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          CityCard(
                            CityModel(
                              id: 1,
                              name: "Jakarta",
                              imgUrl: "assets/city1.png",
                            ),
                          ),
                          CityCard(
                            CityModel(
                              id: 2,
                              name: "Bandung",
                              imgUrl: "assets/city2.png",
                              isFavorite: true,
                            ),
                          ),
                          CityCard(
                            CityModel(
                              id: 3,
                              name: "Surabaya",
                              imgUrl: "assets/city3.png",
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 24,
                  ),
                  child: Text(
                    "Recommended Space",
                    style: regularStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 24,
                  ),
                  child: Column(
                    children: [
                      SpaceCard(
                        SpaceModel(
                          id: 1,
                          name: "Kuretakeso Hott",
                          location: "Bandung , Germany",
                          price: 52,
                          rating: 4,
                          imgURL: "assets/space1.png",
                        ),
                      ),
                      SpaceCard(
                        SpaceModel(
                          id: 3,
                          name: "Roemah Nenek",
                          location: "Seattle , Bogor",
                          price: 11,
                          rating: 5,
                          imgURL: "assets/space2.png",
                        ),
                      ),
                      SpaceCard(
                        SpaceModel(
                          id: 3,
                          name: "Darrling How",
                          location: "Jakarta , Indonesia",
                          price: 20,
                          rating: 3,
                          imgURL: "assets/space3.png",
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 24,
                  ),
                  child: Text(
                    "Tips & Guidance",
                    style: regularStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    children: [
                      TipsCard(
                        TipsModel(
                          id: 1,
                          tips: "City Guidelines",
                          update: "20 Apr",
                          imgURL: "assets/tips1.png",
                        ),
                      ),
                      TipsCard(
                        TipsModel(
                          id: 2,
                          tips: "Jakarta Fairship",
                          update: "11 Dec",
                          imgURL: "assets/tips2.png",
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: Container(
        height: 65,
        width: MediaQuery.of(context).size.width - (2 - 24),
        margin: EdgeInsets.symmetric(
          horizontal: 24,
        ),
        decoration: BoxDecoration(
          color: Color(0xFFF6F7F8),
          borderRadius: BorderRadius.circular(23),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomNavbarItem(
              imgUrl: "assets/ic_home.png",
              isActive: true,
            ),
            BottomNavbarItem(
              imgUrl: "assets/ic_mail.png",
              isActive: false,
            ),
            BottomNavbarItem(
              imgUrl: "assets/ic_card.png",
              isActive: false,
            ),
            BottomNavbarItem(
              imgUrl: "assets/ic_love.png",
              isActive: false,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
