import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:flutter/material.dart';
import 'package:mysecurity/screens/card-component.dart';
import 'package:mysecurity/screens/cards-screen.dart';
import 'package:stacked_card_carousel/stacked_card_carousel.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF643278),
      body: SafeArea(
        child: Container(
          child: Column(children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 2),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return CardsScreen();
                  }));
                },
                child: SizedBox(
                    height: 800,
                    child: StackedCardCarousel(
                        type: StackedCardCarouselType.fadeOutStack, //top
                        spaceBetweenItems: 20,
                        items: [
                          CardComponent(),
                          CardComponent(),
                          CardComponent()
                        ])),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
