import 'package:facebook/config/palette.dart';
import 'package:facebook/data/data.dart';
import 'package:facebook/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.white,
            title: Text(
              'facebook',
              style: TextStyle(
                  color: Palette.facebookBlue,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: -1.2),
            ),
            centerTitle: false,
            floating: true,
            actions: <Widget>[
              CircleButton(
                  icon: Icons.search,
                  iconSize: 30.0,
                  onPressed: () => print("Search")),
              CircleButton(
                  icon: MdiIcons.facebookMessenger,
                  iconSize: 30.0,
                  onPressed: () => print("Search")),
            ],
          ),
          SliverToBoxAdapter(
              child: CreatePostContainer(currentUser: currentUser)),
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 5.0),
            sliver: SliverToBoxAdapter(
              child: Rooms(onlineUsers: onlineUsers),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
            sliver: SliverToBoxAdapter(
              child: Stories(currentUser: currentUser, stories: stories),
            ),
          ),
        ],
      ),
    );
  }
}
