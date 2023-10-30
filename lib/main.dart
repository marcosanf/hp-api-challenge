import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hp_api_challenge/feauture/home/bloc/character_cubit.dart';
import 'package:hp_api_challenge/feauture/home/repository/character_repository.dart';
import 'package:hp_api_challenge/feauture/home/ui/page/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: BlocProvider<CharactersCubit>(
        create: (context) => CharactersCubit(
          repository: CharacterRepository(
            Dio(),
          ),
        ),
        child: const HomePage(),
      ),
    );
  }
}
