import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fooddeliveryui/constants.dart';
import 'package:fooddeliveryui/widgets/details_screen.dart';

import 'widgets/category_title.dart';
import 'widgets/food_display_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food App',
      theme: ThemeData(
        fontFamily: "Poppins",
        scaffoldBackgroundColor: kWhiteColor,
        primaryColor: kPrimaryColor,
        textTheme: TextTheme(
          headline1: TextStyle(fontWeight: FontWeight.bold),
          headline2: TextStyle(fontWeight: FontWeight.bold),
          button: TextStyle(fontWeight: FontWeight.w700),
        ),
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: kPrimaryColor.withOpacity(.26),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: kPrimaryColor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: SvgPicture.asset("assets/icons/pluss.svg"),
              ),
            ),
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20, top: 50),
              child: Align(
                alignment: Alignment.topRight,
                child: SvgPicture.asset(
                  "assets/icons/menu.svg",
                  height: 30,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Tasty Food At Your\nDoor Step",
                  style: Theme.of(context)
                      .textTheme
                      .headline1
                      ?.copyWith(fontSize: 25, color: kTextColor),
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CategoryTitle(
                    title: "All",
                    active: true,
                  ),
                  CategoryTitle(
                    title: "North Indian",
                    active: false,
                  ),
                  CategoryTitle(
                    title: "South Indian",
                    active: false,
                  ),
                  CategoryTitle(
                    title: "Chinese",
                    active: false,
                  ),
                  CategoryTitle(
                    title: "Italian",
                    active: false,
                  )
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: kBorderColor),
              ),
              child: SvgPicture.asset("assets/icons/search.svg"),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  FoodDisplayCard(
                    press: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return DetailsScreen();
                      }));
                    },
                    title: "Hyderabadi Biriyani",
                    ingredient: "with Chicken/Mutton",
                    price: "240",
                    calories: "450Kcal",
                    description:
                        "Hyderabadi Biryani is one of the most popular Biryanis in India. Also known as Hyderabadi Dum Biryani, it is a style of Biryani from Hyderabad.",
                    image: "assets/images/biriyani.jpg",
                  ),
                  FoodDisplayCard(
                    press: () {},
                    title: "Special Dosa",
                    ingredient: "with Coconut Chutni",
                    price: "190",
                    calories: "350Kcal",
                    description:
                        "Dosa is the ever-popular South Indian breakfast of crispy crepes made with ground rice and lentil batter that is fermented.",
                    image: "assets/images/dosa.jpg",
                  ),
                  FoodDisplayCard(
                    press: () {},
                    title: "North-Indian Thali",
                    ingredient: "with Roti + Rice",
                    price: "140",
                    calories: "380Kcal",
                    description:
                        "Roti is an unleavened flatbread made with just a handful of ingredients – finely milled whole wheat flour, water and optionally ghee or oil and salt.",
                    image: "assets/images/fullthali.jpg",
                  ),
                  FoodDisplayCard(
                    press: () {},
                    title: "Veg Sandwich",
                    ingredient: "Hot and Spicy",
                    price: "175",
                    calories: "220Kcal",
                    description:
                        "Sweet, salty, spicy, and savory. This classic Bombay Veg Sandwich Recipe is filled with flavor that will leave you wanting more! It includes beets, potato, butter, cilantro chutney and is a popular street food in Mumbai. Serve as breakfast or a snack.",
                    image: "assets/images/sandwich.jpg",
                  ),
                  FoodDisplayCard(
                    press: () {},
                    title: "Non-Veg Burger",
                    ingredient: "Egg/Chicken/Mutton",
                    price: "225",
                    calories: "350Kcal",
                    description:
                        "A mix of chicken Fillet, minced chicken patty deep fried, dressed with tomato slice, cheese and bun.",
                    image: "assets/images/burger.jpg",
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
