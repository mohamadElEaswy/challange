import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'sections_header.dart';

class Recommendation extends StatelessWidget {
  const Recommendation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      primary: false,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 20,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Container(
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                    color: Colors.blue.shade100,
                    borderRadius: const BorderRadius.all(Radius.circular(15))),
                // child: const Placeholder(),
              ),
              const SizedBox(width: 20),
              SizedBox(
                height: 80,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'category',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontWeight: FontWeight.w700,
                          fontSize: 12,
                          color: Colors.grey.shade700),
                    ),
                    Text(
                      'New Title will be here',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          color: Colors.grey.shade800),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          height: 25,
                          width: 25,
                          child: CircleAvatar(
                            child: Center(
                                child: Icon(
                              CupertinoIcons.person,
                              size: 20,
                            )),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          'category',
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12,
                                  color: Colors.grey.shade700),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
