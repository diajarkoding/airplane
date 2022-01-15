import 'package:airplane/models/destination_model.dart';
import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/pages/choose_seat_page.dart';
import 'package:airplane/ui/widgets/custom_button.dart';
import 'package:airplane/ui/widgets/facility_item.dart';
import 'package:airplane/ui/widgets/photos_item.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final DestinationModel destination;
  const DetailPage(this.destination, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget backgroundImage() {
      return Container(
        width: double.infinity,
        height: 450,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(destination.imageUrl), fit: BoxFit.cover),
        ),
      );
    }

    Widget customShadow() {
      return Container(
        width: double.infinity,
        height: 214,
        margin: const EdgeInsets.only(top: 236),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              kWhiteColor.withOpacity(0),
              Colors.black.withOpacity(1.0)
            ])),
      );
    }

    Widget content() {
      return SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Container(
              width: 108,
              height: 24,
              margin: const EdgeInsets.only(top: 30),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/icon_emblem.png'),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: 256, left: defaultMargin, right: defaultMargin),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          destination.name,
                          style: whiteTextStyle.copyWith(
                              fontSize: 24, fontWeight: semiBold),
                        ),
                        Text(
                          destination.city,
                          style: whiteTextStyle.copyWith(
                              fontSize: 16, fontWeight: light),
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        width: 20,
                        height: 20,
                        margin: const EdgeInsets.only(right: 2),
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/icon_star.png'),
                          ),
                        ),
                      ),
                      Text(
                        '4.8',
                        style: whiteTextStyle.copyWith(fontWeight: medium),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              margin: const EdgeInsets.only(top: 30, left: 10, right: 10),
              decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.circular(18),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Tentang',
                    style: blackTextStyle.copyWith(
                        fontSize: 16, fontWeight: semiBold),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Jarak dari kota Tasikmalaya 100 km, terletak di kecamatan Cikalong. Sebuah pantai berkarang dan helandai, memiliki panorama laut yang mempesona. Agak ke timur, terdapat pulau kecil Nusa Manuk. Pada waktu-waktu tertentu, Nusa Manuk dihuni oleh berbagai macam jenis burung',
                    style: blackTextStyle.copyWith(height: 2),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Photos',
                    style: blackTextStyle.copyWith(
                        fontSize: 16, fontWeight: semiBold),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Row(
                    children: const [
                      PhotosItem(
                          imageUrl:
                              'https://lh5.googleusercontent.com/p/AF1QipNctWBe2UAHFiwn2FTG8YqZypOBs4uB_p8ir6GW=s1005-k-no'),
                      PhotosItem(
                          imageUrl:
                              'https://lh5.googleusercontent.com/p/AF1QipPKpnQ97YMg_xGBg4Zgsz-qc6WxAhH8vIhebXZW=s870-k-no'),
                      PhotosItem(
                          imageUrl:
                              'https://lh5.googleusercontent.com/p/AF1QipMy95ZL_3pJozt0akMmURm_jDKdNutDPK9I-nI3=w529-h298-k-no'),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Fasilitas',
                    style: blackTextStyle.copyWith(
                        fontSize: 16, fontWeight: semiBold),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Row(
                    children: const [
                      FacilityItem(text: 'Kids Park'),
                      FacilityItem(text: 'Honor Bridge'),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: const [
                      FacilityItem(text: 'City Museum'),
                      FacilityItem(text: 'Central Mall'),
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin:
                  EdgeInsets.symmetric(horizontal: defaultMargin, vertical: 31),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'IDR 10.000',
                          style: blackTextStyle.copyWith(
                              fontSize: 18, fontWeight: medium),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          'per orang',
                          style: greyTextStyle.copyWith(fontWeight: light),
                        )
                      ],
                    ),
                  ),
                  CustomButton(
                      width: 170,
                      title: 'Kunjungi',
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ChooseSeatPage()));
                      })
                ],
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
        backgroundColor: kBackgroundColor,
        body: SingleChildScrollView(
          child: Stack(
            children: [
              backgroundImage(),
              customShadow(),
              content(),
            ],
          ),
        ));
  }
}
