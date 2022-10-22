import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:housecontractors/helper/size_configuration.dart';

class ProfileHeader extends StatelessWidget {
  ProfileHeader({
    Key? key,
    this.title = "",
    this.email = "",
    this.imageURL = "",
    this.phoneNumber = "",
    this.rating = const [],
  }) : super(key: key);
  final String title, email, phoneNumber, imageURL;
  final List<String> rating;
  double starRating = 3.6;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 255, 255, 255),
      child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
        SizedBox(
          height: getProportionateScreenHeight(60),
          width: getProportionateScreenWidth(60),
          child: CircleAvatar(
            child: ClipOval(
              child: Image.network(
                imageURL,
                fit: BoxFit.cover,
                height: getProportionateScreenHeight(60),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(getProportionateScreenHeight(8)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                    fontSize: getProportionateScreenHeight(20),
                    fontWeight: FontWeight.w500),
              ),
              Text(
                email,
                style: TextStyle(
                  fontSize: getProportionateScreenHeight(14),
                  fontWeight: FontWeight.w300,
                ),
              ),
              Text(
                phoneNumber,
                style: TextStyle(
                  fontSize: getProportionateScreenHeight(14),
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
        ),
        const Spacer(),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            RatingBar.builder(
              initialRating: starRating,
              minRating: 0,
              maxRating: 5,
              itemBuilder: ((context, _) => const Icon(
                    Icons.star,
                    color: Colors.lightBlueAccent,
                  )),
              ignoreGestures: true,
              onRatingUpdate: (newRatingValue) {},
              updateOnDrag: false,
              allowHalfRating: true,
              glow: false,
              itemCount: 5,
              itemSize: getProportionateScreenHeight(15),
              textDirection: TextDirection.ltr,
            ),
            Text(
              "$starRating",
              textAlign: TextAlign.right,
            ),
          ],
        ),
      ]),
    );
  }
}
