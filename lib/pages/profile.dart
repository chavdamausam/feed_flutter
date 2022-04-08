import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class ProfilePage extends StatefulWidget {
    @override
    _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {


    @override
    Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: Colors.white,
            body: _buildBody(),
        );
    }

    Widget _buildBody() {
        return Container(
            child: Center(
                child: Text('Coming Soon',
                    style: TextStyle(
                        fontSize: 24,
                        fontFamily: 'semi-bold'
                    ),
                ),
            ),
        );
    }

}