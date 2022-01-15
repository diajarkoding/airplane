import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/pages/success_chekout_page.dart';
import 'package:airplane/ui/widgets/booking_details_item.dart';
import 'package:airplane/ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class ChekoutPage extends StatelessWidget {
  const ChekoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget route() {
      return Container(
        margin: const EdgeInsets.only(top: 50, bottom: 30),
        child: Column(
          children: [
            Container(
              width: 291,
              height: 65,
              margin: const EdgeInsets.only(bottom: 10),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/image_checkout.png'))),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'CGK',
                      style: blackTextStyle.copyWith(
                          fontSize: 24, fontWeight: semiBold),
                    ),
                    Text(
                      'Tangerang',
                      style: greyTextStyle.copyWith(fontWeight: light),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'TLC',
                      style: blackTextStyle.copyWith(
                          fontSize: 24, fontWeight: semiBold),
                    ),
                    Text(
                      'Ciliwung',
                      style: greyTextStyle.copyWith(fontWeight: light),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      );
    }

    Widget bookingDetail() {
      return Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // NOTE: Destination Tail
            Row(
              children: [
                Container(
                  width: 70,
                  height: 70,
                  margin: const EdgeInsets.only(right: 16),
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: NetworkImage(
                          'https://lh5.googleusercontent.com/p/AF1QipNctWBe2UAHFiwn2FTG8YqZypOBs4uB_p8ir6GW=s1005-k-no'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Karang Tawulan',
                        style: blackTextStyle.copyWith(
                            fontSize: 18, fontWeight: medium),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Kalapa Genep',
                        style: greyTextStyle.copyWith(fontWeight: light),
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
                      style: blackTextStyle.copyWith(fontWeight: medium),
                    )
                  ],
                )
              ],
            ),

            // NOTE: Booking Detail Text
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: Text(
                'Booking Details',
                style:
                    blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
              ),
            ),

            // NOTE: Booking Detail Item
            BookingDetailsItem(
                title: 'Traveler',
                valueText: '2 Person',
                valueColor: kBlackColor),
            BookingDetailsItem(
                title: 'Seat', valueText: 'A3, B3', valueColor: kBlackColor),
            BookingDetailsItem(
                title: 'Insurance', valueText: 'YES', valueColor: kGreenColor),
            BookingDetailsItem(
                title: 'Refundable', valueText: 'NO', valueColor: kRedColor),
            BookingDetailsItem(
                title: 'VAT', valueText: '45%', valueColor: kBlackColor),
            BookingDetailsItem(
                title: 'Price',
                valueText: 'IDR 8.500.690',
                valueColor: kBlackColor),
            BookingDetailsItem(
                title: 'Grand Total',
                valueText: 'IDR 12.000.000',
                valueColor: kPrimaryColor),
          ],
        ),
      );
    }

    Widget paymentDetail() {
      return Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        margin: const EdgeInsets.only(top: 30),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Payment Details',
              style:
                  blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
            ),
            Container(
              margin: const EdgeInsets.only(top: 16),
              child: Row(
                children: [
                  Container(
                    width: 100,
                    height: 70,
                    margin: const EdgeInsets.only(right: 16),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/image_card.png')),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 24,
                            height: 24,
                            margin: const EdgeInsets.only(right: 6),
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/icon_plane.png'),
                              ),
                            ),
                          ),
                          Text(
                            'Pay',
                            style: whiteTextStyle.copyWith(
                                fontSize: 16, fontWeight: medium),
                          )
                        ],
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'IDR 80.400.000',
                        style: blackTextStyle.copyWith(
                            fontSize: 18, fontWeight: medium),
                      ),
                      Text(
                        'Current Balance',
                        style: greyTextStyle.copyWith(fontWeight: light),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget payNowButton() {
      return CustomButton(
          margin: const EdgeInsets.only(top: 30),
          title: 'Pay Now',
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const SuccessChekoutPage()));
          });
    }

    Widget termAndCondition() {
      return Align(
        alignment: Alignment.center,
        child: GestureDetector(
          onTap: () {},
          child: Container(
            margin: const EdgeInsets.only(top: 30, bottom: 30),
            child: Text(
              'Terms and Conditions',
              style: greyTextStyle.copyWith(
                  fontSize: 16, decoration: TextDecoration.underline),
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        children: [
          route(),
          bookingDetail(),
          paymentDetail(),
          payNowButton(),
          termAndCondition()
        ],
      ),
    );
  }
}
