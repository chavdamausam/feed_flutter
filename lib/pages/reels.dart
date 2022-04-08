import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class ReelsPage extends StatefulWidget {
    @override
    _ReelsPageState createState() => _ReelsPageState();
}

class _ReelsPageState extends State<ReelsPage> {


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