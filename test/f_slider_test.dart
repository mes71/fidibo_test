import 'package:bloc_test/bloc_test.dart';
import 'package:fidibo_test/ui/widget/slider/f_slider_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

class MockFSliderBloc extends MockBloc<FSliderEvent, FSliderState>
    implements FSliderBloc {}

void main() {
  group('test slider bloc ', () {
    blocTest(
      'test bloc',
      build: () => MockFSliderBloc(),
      act: (bloc) => bloc.add(FSliderStarted()),
      expect: () => [FSliderLoading],
    );
  });
}
