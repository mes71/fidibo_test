import 'package:fidibo_test/data/repository/pic_repository.dart';
import 'package:fidibo_test/ui/screen/home_screen.dart';
import 'package:fidibo_test/ui/widget/slider/f_slider_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        var bloc = FSliderBloc(repository);
        bloc.add(FSliderStarted());
        return bloc;
      },
      child: MaterialApp(
        title: 'Fidibo Test',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: HomeScreen.tag,
        routes: {HomeScreen.tag: (context) => const HomeScreen()},
      ),
    );
  }
}
