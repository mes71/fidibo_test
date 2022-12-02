import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fidibo_test/data/repository/pic_repository.dart';
import 'package:flutter/material.dart';

part 'f_slider_event.dart';
part 'f_slider_state.dart';

class FSliderBloc extends Bloc<FSliderEvent, FSliderState> {
  final IPicRepository repository;

  FSliderBloc(this.repository) : super(FSliderInitial()) {
    on<FSliderEvent>((event, emit) {});

    on<FSliderStarted>((event, emit) async {
      try {
        emit(FSliderLoading());
        //for show shimmer i add delay in app
        await Future.delayed(const Duration(milliseconds: 2500));

        List<Image> images = await repository.getAllImage();

        emit(FSliderSuccess(images));
      } catch (e) {
        emit(FSliderFailure());
      }
    });
  }
}
