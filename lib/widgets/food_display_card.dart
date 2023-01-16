import 'package:flutter/material.dart';

import '../constants.dart';

class FoodDisplayCard extends StatelessWidget {
  final String title;
  final String ingredient;
  final String image;
  final String price;
  final String calories;
  final String description;
  final VoidCallback press;

  const FoodDisplayCard(
      {Key? key,
      required this.title,
      required this.ingredient,
      required this.image,
      required this.price,
      required this.calories,
      required this.description,
      required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Align(
        alignment: Alignment.topLeft,
        child: Container(
          margin: const EdgeInsets.only(left: 16),
          height: 400,
          width: 270,
          child: Stack(
            children: <Widget>[
              Positioned(
                right: 0,
                bottom: 0,
                child: Container(
                  height: 380,
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(34),
                    color: kPrimaryColor.withOpacity(.06),
                  ),
                ),
              ),
              Positioned(
                top: 15,
                left: 15,
                child: Container(
                  height: 181,
                  width: 181,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: kPrimaryColor.withOpacity(.15)),
                ),
              ),
              Positioned(
                top: 0,
                left: -105,
                child: Container(
                  height: 184,
                  width: 400,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.cover, image: AssetImage(image))),
                ),
              ),
              Positioned(
                top: 100,
                right: 15,
                child: Text(
                  "₹$price",
                  style: Theme.of(context)
                      .textTheme
                      .headline1
                      ?.copyWith(color: kPrimaryColor, fontSize: 20),
                ),
              ),
              Positioned(
                top: 210,
                left: 43,
                child: Container(
                  width: 210,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(title,
                          style: Theme.of(context)
                              .textTheme
                              .headline2
                              ?.copyWith(fontSize: 20, color: kTextColor)),
                      Text(
                        ingredient,
                        style: TextStyle(color: kTextColor.withOpacity(.4)),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(description,
                          maxLines: 3,
                          style: TextStyle(
                            color: kTextColor.withOpacity(.65),
                          )),
                      SizedBox(
                        height: 16,
                      ),
                      Text(calories)
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
