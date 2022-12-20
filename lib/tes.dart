import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lottie/lottie.dart';

class TesPage extends StatelessWidget {
  const TesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.network(
          "https://assets9.lottiefiles.com/packages/lf20_p8bfn5to.json",
        ),
      ),
    );
  }
}
