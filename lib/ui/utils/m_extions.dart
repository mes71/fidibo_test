import 'package:flutter/cupertino.dart';

//extension function
extension MWidget on num {
  SizedBox get toHeight => SizedBox(
        height: toDouble(),
      );

  SizedBox get toWidth => SizedBox(
        width: toDouble(),
      );
}
