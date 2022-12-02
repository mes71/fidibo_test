part of 'f_slider_bloc.dart';

abstract class FSliderEvent extends Equatable {
  const FSliderEvent();

  @override
  List<Object?> get props => [];
}

class FSliderStarted extends FSliderEvent {}

class FSliderNextClicked extends FSliderEvent {}

class FSliderBackClicked extends FSliderEvent {}
