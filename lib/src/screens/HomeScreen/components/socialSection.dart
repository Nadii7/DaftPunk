import 'package:daftpunk/src/core/constants.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SocialSection extends StatelessWidget {
  const SocialSection({
    Key key,
  }) : super(key: key);

  void _launchURL({@required String url}) async =>
      await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.deepPurple[500],
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomIconButton(
            icon: 'assets/images/spotify.svg',
            onPress: () => _launchURL(
                url: "https://open.spotify.com/artist/4tZwfgrHOc3mvqYlEYSvVi"),
          ),
          CustomIconButton(
            icon: 'assets/images/soundcloud.svg',
            onPress: () =>
                _launchURL(url: "https://soundcloud.com/daftpunkofficialmusic"),
          ),
          CustomIconButton(
            icon: 'assets/images/itunes.svg',
            onPress: () => _launchURL(
                url: "https://music.apple.com/us/artist/daft-punk/5468295"),
          ),
          CustomIconButton(
            icon: 'assets/images/youtube.svg',
            onPress: () =>
                _launchURL(url: "https://www.youtube.com/user/daftpunkalive"),
          ),
        ],
      ),
    );
  }
}

class CustomIconButton extends StatelessWidget {
  final Function onPress;
  final String icon;
  const CustomIconButton({
    Key key,
    @required this.onPress,
    @required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60,
      child: FlatButton(
        height: 60,
        color: black,
        padding: EdgeInsets.all(10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        child: SvgPicture.asset(icon),
        onPressed: onPress,
      ),
    );
  }
}
