import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';

class SwipeableList extends StatelessWidget {
  const SwipeableList({
    super.key,
    required this.widgetsList,
  });

  final List<Widget> widgetsList;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: CardSwiper(
        cardsCount: widgetsList.length,
        cardBuilder: (context, index, percentThresholdX, percentThresholdY) =>
            widgetsList[index],
      ),
    );
  }
}
