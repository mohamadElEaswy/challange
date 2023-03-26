import 'package:flutter/material.dart';

class SectionsHeader extends StatelessWidget {
  const SectionsHeader({Key? key, this.onPressed, required this.header})
      : super(key: key);

  final void Function()? onPressed;
  final String header;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text(
            header,
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  fontWeight: FontWeight.w700,
                ),
          ),
          const Spacer(),
          TextButton(onPressed: onPressed, child: const Text('View All'),)
        ],
      ),
    );
  }
}
