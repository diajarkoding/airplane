import 'package:airplane/models/destination_model.dart';
import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/pages/detail_page.dart';
import 'package:flutter/material.dart';

class PopularDestinationCard extends StatelessWidget {
  final DestinationModel destination;
  const PopularDestinationCard(
    this.destination, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => DetailPage(destination)));
      },
      child: Container(
        width: 200,
        height: 340,
        padding: const EdgeInsets.all(10),
        margin: EdgeInsets.only(left: defaultMargin),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 180,
              height: 220,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                      destination.imageUrl,
                    ),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(18),
              ),
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 55,
                  height: 30,
                  decoration: BoxDecoration(
                    color: kWhiteColor,
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(18)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 20,
                        height: 20,
                        margin: const EdgeInsets.only(right: 2),
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/icon_star.png'))),
                      ),
                      Text(
                        '4.9',
                        style: blackTextStyle.copyWith(fontWeight: medium),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 10, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    destination.name,
                    style: blackTextStyle.copyWith(
                        fontSize: 18, fontWeight: medium),
                    // overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    destination.city,
                    style: greyTextStyle.copyWith(fontWeight: light),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
