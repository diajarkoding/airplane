import 'package:airplane/cubit/auth_cubit.dart';
import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BonusPage extends StatelessWidget {
  const BonusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget bigBonus() {
      return Container(
        margin: const EdgeInsets.only(bottom: 50),
        child: Column(
          children: [
            Text(
              'Big Bonus 🎉',
              style:
                  blackTextStyle.copyWith(fontSize: 32, fontWeight: semiBold),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'We give you early credit so that\nyou can buy a flight ticket',
              style: blackTextStyle.copyWith(fontSize: 16, fontWeight: light),
              textAlign: TextAlign.center,
            )
          ],
        ),
      );
    }

    Widget bonusCard() {
      return BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {
          if (state is AuthSuccess) {
            return Center(
              child: Container(
                width: 300,
                height: 211,
                margin: const EdgeInsets.only(bottom: 80),
                padding: EdgeInsets.all(defaultMargin),
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage('assets/image_card.png'),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: kPrimaryColor.withOpacity(0.5),
                      blurRadius: 50,
                      offset: const Offset(0, 10),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Name',
                                style:
                                    whiteTextStyle.copyWith(fontWeight: light),
                              ),
                              Text(
                                state.user.name,
                                style: whiteTextStyle.copyWith(
                                    fontSize: 20, fontWeight: medium),
                                overflow: TextOverflow.ellipsis,
                              )
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Image.asset(
                              'assets/icon_plane.png',
                              width: 24,
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            Text(
                              'Pay',
                              style: whiteTextStyle.copyWith(
                                fontSize: 16,
                                fontWeight: medium,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    const Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Balance',
                          style: whiteTextStyle.copyWith(fontWeight: light),
                        ),
                        Text(
                          'IDR 280.000.000',
                          style: whiteTextStyle.copyWith(
                              fontSize: 26, fontWeight: medium),
                        )
                      ],
                    )
                  ],
                ),
              ),
            );
          } else {
            return const SizedBox();
          }
        },
      );
    }

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              bonusCard(),
              bigBonus(),
              CustomButton(
                  title: 'Start Fly Now',
                  width: 220,
                  onPressed: () {
                    Navigator.pushNamed(context, '/main');
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
