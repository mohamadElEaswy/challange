import 'package:flutter/material.dart';

class SliderItem extends StatelessWidget {
  const SliderItem({Key? key, required this.i}) : super(key: key);
  final String i;

  @override
  Widget build(BuildContext context) {
    return Container(padding: const EdgeInsets.all(20),
      width: MediaQuery.of(context).size.width,
      // margin: const EdgeInsets.symmetric(horizontal: 5.0),
      decoration: BoxDecoration(
          color: Colors.blue.shade100,
          borderRadius: const BorderRadius.all(Radius.circular(25))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            '${i.toString()} Title ',
            style: Theme.of(context).textTheme.displaySmall!.copyWith(
              fontWeight: FontWeight.w500,
              fontSize: 20,
            ),
          ),
          Text(
            '${i.toString()} Title ',
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
              // fontWeight: FontWeight.w500,
              // fontSize: 20,
            ),
          )
        ],
      )
    );
  }
}
