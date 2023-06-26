import 'package:flutter/material.dart';

import '../../../../config/size_config.dart';

class ConnectSpeaker extends StatelessWidget {
  const ConnectSpeaker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: getProportionateScreenHeight(40),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: const Icon(Icons.arrow_back_outlined),
            ),
          ),
          Text(
            'Kakao Mini C',
            style: Theme.of(context).textTheme.displayLarge,
          ),
          Text(
            'Smart Speaker',
            style: Theme.of(context).textTheme.displaySmall,
          ),
          SizedBox(
            height: getProportionateScreenHeight(40),
          ),
          Material(
            color: Colors.transparent,
            child: Image.asset(
              'assets/images/kakao_mini.png',
              height: getProportionateScreenHeight(300),
              width: getProportionateScreenWidth(150),
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(40),
          ),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(80),
                vertical: getProportionateScreenHeight(10),
              ),
              shape: const StadiumBorder(),
            ),
            child: Text(
              'Connect',
              style: Theme.of(context).textTheme.displaySmall,
            ),
          )
        ],
      ),
    );
  }
}
