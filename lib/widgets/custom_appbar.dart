import 'package:flutter/material.dart';
import 'package:flutter_netflix_responsive_ui/assets.dart';
import 'package:flutter_netflix_responsive_ui/widgets/widgets.dart';

class CustomAppBar extends StatelessWidget {
  final double scrollOffset;
  const CustomAppBar({Key key, this.scrollOffset = 0.0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10.0),
      color:
          Colors.black.withOpacity((scrollOffset / 350).clamp(0, 1).toDouble()),
      child: SafeArea(
          child: Responsive(
           mobile: _CustomAppBarMobile(),
           desktop: _CustomAppBarDesktop(),
          ) 
      ),
    );
  }
}

class _CustomAppBarMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(Assets.netflixLogo0),
        SizedBox(width: 12.0),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _AppBarButton(
                title: "TV Shows",
                onTap: () => print("TV Shows"),
              ),
              _AppBarButton(
                title: "Movies",
                onTap: () => print("Movies"),
              ),
              _AppBarButton(
                title: "My List",
                onTap: () => print("My List"),
              ),
            ],
          ),
        )
      ],
    );
  }
}
class _CustomAppBarDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(Assets.netflixLogo1),
        SizedBox(width: 12.0),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _AppBarButton(
                title: "Home",
                onTap: () => print("Home"),
              ),
              _AppBarButton(
                title: "TV Shows",
                onTap: () => print("TV Shows"),
              ),
              _AppBarButton(
                title: "Movies",
                onTap: () => print("Movies"),
              ),
              _AppBarButton(
                title: "My List",
                onTap: () => print("My List"),
              ),
              _AppBarButton(
                title: "Latest",
                onTap: () => print("Latest"),
              ),
            ], 
          ),
        ),
        const Spacer(),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                padding: EdgeInsets.zero,
                icon: Icon(Icons.search),
                iconSize: 20.0,
                color: Colors.white,
                onPressed: () => print("search"),
              ),
              _AppBarButton(
                title: "KIDS",
                onTap: () => print("KIDS"),
              ),
              _AppBarButton(
                title: "DVD",
                onTap: () => print("DVD"),
              ),
              IconButton(
                padding: EdgeInsets.zero,
                icon: Icon(Icons.card_giftcard),
                iconSize: 20.0,
                color: Colors.white,
                onPressed: () => print("Gift card"),
              ),
              IconButton(
                padding: EdgeInsets.zero,
                icon: Icon(Icons.notifications),
                iconSize: 20.0,
                color: Colors.white,
                onPressed: () => print("Notifications"),
              ),
            ], 
          ),
        )
      ],
    );
  }
}

class _AppBarButton extends StatelessWidget {
  final String title;
  final Function onTap;
  _AppBarButton({
    this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize: 16.0,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
