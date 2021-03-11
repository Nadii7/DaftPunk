import 'package:daftpunk/src/core/constants.dart';
import 'package:daftpunk/src/screens/HomeScreen/components/albumSection.dart';
import 'package:flutter/material.dart';

import 'socialSection.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                // logo
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Image.asset(
                    'assets/images/logo.png',
                    height: 60,
                    width: 100,
                  ),
                ),
                SizedBox(height: 10),
                // daft punk profile
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    height: 200,
                    padding: EdgeInsets.only(top: 10),
                    color: yellow,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Image.asset(
                          'assets/images/dp.png',
                          height: 190,
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          top: 0,
                          left: 0,
                          right: 0,
                          child: Image.asset(
                            'assets/images/dptext.png',
                            height: 60,
                            width: 110,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                // daft punk journy
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    color: red,
                    height: 200,
                    padding: EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        Image.asset('assets/images/daftPunk.png'),
                        SizedBox(width: 30),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Daft Punk',
                              style: TextStyle(
                                fontSize: 30,
                                letterSpacing: 2,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              '1993-2021',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                // daft punk Alpums
                AlbumsSection(),
                Spacer(),
                // Social
                SocialSection(),
                SizedBox(height: 20),
              ],
            ),
          ),
        )
      ],
    );
  }
}
