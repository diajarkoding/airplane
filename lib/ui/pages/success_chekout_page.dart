import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class SuccessChekoutPage extends StatelessWidget {
  const SuccessChekoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget wellBooked() {
      return Container(
        margin: const EdgeInsets.only(bottom: 50),
        child: Column(
          children: [
            Text(
              'Well Booked 😍',
              style:
                  blackTextStyle.copyWith(fontSize: 32, fontWeight: semiBold),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Are you ready to explore the new\nworld of experiences?',
              style: blackTextStyle.copyWith(fontSize: 16, fontWeight: light),
              textAlign: TextAlign.center,
            )
          ],
        ),
      );
    }

    Widget scheduling() {
      return Center(
        child: Container(
          width: 300,
          height: 150,
          margin: const EdgeInsets.only(bottom: 80),
          padding: EdgeInsets.all(defaultMargin),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/image_success.png'),
            ),
          ),
        ),
      );
    }

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            scheduling(),
            wellBooked(),
            CustomButton(
                title: 'My Bookings',
                width: 220,
                onPressed: () {
                  Navigator.pushNamed(context, '/main');
                }),
          ],
        ),
      ),
    );
  }
}
