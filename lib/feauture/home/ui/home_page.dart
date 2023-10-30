import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:hp_api_challenge/core/widgets/character_card.dart';
import 'package:hp_api_challenge/feauture/home/bloc/character_cubit.dart';
import 'package:hp_api_challenge/feauture/home/bloc/character_state.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hogwarts Characters"),
        backgroundColor: Color(0xffd6a304),
      ),
      backgroundColor: Color(0xffd6a304),
      body: BlocBuilder<CharactersCubit, CharactersState>(
        builder: (context, state) {
          if (state is LoadingState) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is ErrorState) {
            return const Center(
              child: Icon(Icons.close),
            );
          } else if (state is LoadedState) {
            final characters = state.characters;
            final charactersWidgets = characters
                .map(
                  (e) => CharacterCard(
                    imagepath: e.image,
                    title: e.name,
                    subtitle: getCharacterOccupation(
                        e.hogwartsStaff, e.hogwartsStudent),
                  ),
                )
                .toList();
            return Column(
              children: [
                Flexible(
                  child: CardSwiper(
                    cardsCount: charactersWidgets.length,
                    cardBuilder: (context, index, percentThresholdX,
                            percentThresholdY) =>
                        charactersWidgets[index],
                  ),
                ),
              ],
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }
}

String getCharacterOccupation(bool isStaff, bool isStudent) {
  if (isStaff == false && isStudent == false) {
    return "Other";
  }
  if (isStaff && !isStudent) return "Staff";
  if (isStudent && !isStaff) return "Student";
  return "Sdudent/Staff";
}
