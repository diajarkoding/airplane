import '../../shared/theme.dart';
import '../../ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class StartedPage extends StatelessWidget {
  const StartedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/image_get_started.png'),
                  fit: BoxFit.cover),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Fly Like a Bird',
                  style: whiteTextStyle.copyWith(
                      fontSize: 32, fontWeight: semiBold),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Explore new world with us and let\nyourself get an amazing experiences',
                  style:
                      whiteTextStyle.copyWith(fontSize: 16, fontWeight: light),
                  textAlign: TextAlign.center,
                ),
                CustomButton(
                    title: 'Get Started',
                    width: 220,
                    margin: const EdgeInsets.only(top: 50, bottom: 50),
                    onPressed: () {
                      Navigator.pushNamed(context, '/sign-in');
                    })
              ],
            ),
          ),
        ],
      ),
    );
  }
}
