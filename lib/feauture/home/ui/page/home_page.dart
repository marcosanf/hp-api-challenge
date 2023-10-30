import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hp_api_challenge/core/app/colors.dart';
import 'package:hp_api_challenge/core/widgets/button_primary.dart';
import 'package:hp_api_challenge/feauture/home/ui/widget/character_card.dart';
import 'package:hp_api_challenge/core/widgets/swipeable_list.dart';
import 'package:hp_api_challenge/feauture/home/bloc/character_cubit.dart';
import 'package:hp_api_challenge/feauture/home/bloc/character_state.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hogwarts Characters"),
        backgroundColor: HColors.primaryColor,
      ),
      backgroundColor: HColors.primaryColor,
      body: BlocBuilder<CharactersCubit, CharactersState>(
        builder: (context, state) {
          if (state is LoadingState) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is ErrorState) {
            return Center(
              child: ButtonPrimary(
                text: "Tentar novamente",
                onPressed: () async {
                  context.read<CharactersCubit>().getHPCharacters();
                },
              ),
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
                SwipeableList(widgetsList: charactersWidgets),
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
  return "Student/Staff";
}
