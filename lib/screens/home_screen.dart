import 'package:flutter/material.dart';
import 'package:neomorphism/constants.dart';
import 'package:neomorphism/widgets/circular_soft_button.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    CircularSoftButton(
                      icon: Icon(Icons.arrow_back_ios),
                    ),
                    Text('Any title'),
                    CircularSoftButton(
                      icon: Icon(Icons.more_horiz),
                    ),
                  ],
                ),
                Stack(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width - 140,
                      height: MediaQuery.of(context).size.height - 400,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          MediaQuery.of(context).size.width,
                        ),
                        gradient: LinearGradient(
                          colors: [shadowColor, lightShadowColor],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: shadowColor,
                              offset: Offset(8, 9),
                              blurRadius: 12),
                          BoxShadow(
                              color: lightShadowColor,
                              offset: Offset(-8, -6),
                              blurRadius: 12),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 10,
                      left: 10,
                      right: 10,
                      bottom: 10,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/tarek.jpg'),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Text(
                  'Life is good',
                  style: TextStyle(
                    fontSize: 28,
                    color: textColor,
                  ),
                ),
                Text(
                  'Future',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: textColor,
                  ),
                ),
                SizedBox(height: 30),
                Stack(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 32),
                      width: double.infinity,
                      height: 24,
                      decoration: BoxDecoration(
                        color: backgroundColor,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            color: lightShadowColor,
                            offset: Offset(1, 4),
                          ),
                          BoxShadow(
                            color: shadowColor,
                            offset: Offset(-1, -4),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 2,
                      bottom: 2,
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 36),
                        width: 200,
                        height: 20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          gradient: LinearGradient(
                              colors: [seekBarLightColor, seekBarDarkColor],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        '1:30',
                        style: TextStyle(
                          fontSize: 20,
                          color: textColor,
                        ),
                      ),
                      Text(
                        '2:20',
                        style: TextStyle(
                          fontSize: 20,
                          color: textColor,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    CircularSoftButton(
                      icon: Icon(Icons.skip_previous),
                    ),
                    CircularSoftButton(
                      icon: Icon(
                        Icons.play_arrow,
                        size: 40,
                        color: seekBarDarkColor,
                      ),
                      radius: 40,
                    ),
                    CircularSoftButton(
                      icon: Icon(Icons.skip_next),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
