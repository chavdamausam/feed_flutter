import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class ActivityPage extends StatefulWidget {
    @override
    _ActivityPageState createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage> {


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