import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fooddeliveryui/constants.dart';
import 'package:fooddeliveryui/main.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return MyApp();
                      }));
                    },
                    child: SvgPicture.asset(
                      "assets/icons/back.svg",
                      height: 30,
                    )),
                SvgPicture.asset(
                  "assets/icons/menu.svg",
                  height: 30,
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              padding: const EdgeInsets.all(15),
              height: 280,
              width: 280,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: kSecondaryColor,
              ),
              child: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage("assets/images/biriyani.jpg"),
                        fit: BoxFit.cover)),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                    text: "Hyderabadi Biriyani\n",
                    style: Theme.of(context)
                        .textTheme
                        .headline2
                        ?.copyWith(fontSize: 20, color: kTextColor),
                  ),
                  TextSpan(
                    text: "with Chicken/Mutton",
                    style: TextStyle(color: kTextColor.withOpacity(.4)),
                  )
                ])),
                Text(
                  "₹240",
                  style: Theme.of(context)
                      .textTheme
                      .headline1
                      ?.copyWith(color: kPrimaryColor, fontSize: 20),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Hyderabadi Biryani is one of the most popular Biryanis in India. Also known as Hyderabadi Dum Biryani, it is a style of Biryani from Hyderabad. A world-renowned Indian dish, biryani takes time and practice to make but is worth every bit of the effort.",
              textAlign: TextAlign.justify,
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 27),
                    decoration: BoxDecoration(
                        color: kPrimaryColor.withOpacity(.19),
                        borderRadius: BorderRadius.circular(27)),
                    child: Row(children: [
                      Text(
                        "Add to bag",
                        style: Theme.of(context)
                            .textTheme
                            .button
                            ?.copyWith(fontSize: 14, color: kTextColor),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      SvgPicture.asset(
                        "assets/icons/forward.svg",
                        height: 25,
                      ),
                    ]),
                  ),
                  Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: kPrimaryColor.withOpacity(.26),
                      ),
                      child: Stack(alignment: Alignment.center, children: [
                        Container(
                          padding: EdgeInsets.all(12),
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: kPrimaryColor),
                          child: SvgPicture.asset("assets/icons/cart.svg"),
                        ),
                      ]))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
