import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'app_bar.dart';
import 'header.dart';
import 'recommendation.dart';
import 'sections_header.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appBarTest(),
        drawer: Container(),
        body: Center(
          child: SingleChildScrollView(
            // padding: EdgeInsets.all(value),
            physics: const BouncingScrollPhysics(),
            child: Column(
              children:  [
                const HeaderSlider(),
                const SizedBox(height: 20),
                SectionsHeader(header: 'Recommendation', onPressed: () {}),
                const Recommendation(),


                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget appBarTest() {
    return PreferredSize(
      preferredSize: const Size.fromHeight(50),
      child: Container(
        color: Colors.white,
        padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
        child: Row(
          children: [
            AppBarIcon(
              icon: Icons.menu,
              onPressed: () {},
            ),
            const Spacer(),
            AppBarIcon(
              icon: CupertinoIcons.search,
              onPressed: () {},
              tooltip: MaterialLocalizations.of(context).searchFieldLabel,
            ),
            const SizedBox(width: 5),
            AppBarIcon(
              icon: Icons.notifications,
              onPressed: () {},
            ),
            const SizedBox(width: 5),
          ],
        ),
      ),
    );
  }
}
