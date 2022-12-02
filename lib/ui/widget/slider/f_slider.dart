import 'package:fidibo_test/ui/utils/m_extions.dart';
import 'package:fidibo_test/ui/widget/slider/f_slider_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';

class FSlider extends StatefulWidget {
  const FSlider({Key? key}) : super(key: key);

  @override
  State<FSlider> createState() => _FSliderState();
}

class _FSliderState extends State<FSlider> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FSliderBloc, FSliderState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (state is FSliderSuccess) ...{
                //load image from net is app is success
                Expanded(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: SizedBox(
                        height: 270,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          separatorBuilder: (context, index) => 12.toWidth,
                          itemCount: state.images.length,
                          physics: const BouncingScrollPhysics(),
                          itemBuilder: (context, index) => Container(
                            width: 320,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              image: DecorationImage(
                                  image: state.images[index].image,
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              } else if (state is FSliderLoading) ...{
                //show shimmer for loading
                Expanded(
                    child: Center(
                  child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Shimmer.fromColors(
                          baseColor: Colors.grey[400]!,
                          highlightColor: Colors.grey[100]!,
                          child: SizedBox(
                            height: 270,
                            child: ListView.separated(
                              itemCount: 10,
                              physics: const BouncingScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              separatorBuilder: (context, index) => 12.toWidth,
                              itemBuilder: (context, index) => Container(
                                height: 250,
                                width: 250,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ))),
                ))
              } else ...{
                // show error box
                Container(
                  height: 250,
                  color: Colors.grey,
                  child: Center(
                    child: TextButton(
                        child: const Text('We have Error',
                            style:
                                TextStyle(color: Colors.green, fontSize: 35)),
                        onPressed: () {
                          context.read<FSliderBloc>().add(FSliderStarted());
                        }),
                  ),
                )
              }
            ],
          )),
        );
      },
    );
  }
}
