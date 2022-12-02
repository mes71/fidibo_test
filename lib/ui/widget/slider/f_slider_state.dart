part of 'f_slider_bloc.dart';

abstract class FSliderState extends Equatable {
  const FSliderState();

  @override
  List<Object> get props => [];
}

class FSliderInitial extends FSliderState {}

class FSliderSuccess extends FSliderState {
  final List<Image> images;

  const FSliderSuccess(this.images);

  @override
  List<List<Image>> get props => [images];
}

class FSliderLoading extends FSliderState {}

class FSliderFailure extends FSliderState {}
