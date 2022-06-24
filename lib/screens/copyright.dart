import 'package:core_website/config/frame_size.dart';
import 'package:flutter/material.dart';

class Copyright extends StatelessWidget {
  const Copyright({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      height: FrameSize.screenHeight / 10,
        color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text('© Copyrights 2018',
          style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Monserrat-Regular',
                  fontSize: 14))
        ],
      ),
    );
  }
}