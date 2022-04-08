import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class SearchPage extends StatefulWidget {
    @override
    _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {


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