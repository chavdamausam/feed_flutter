import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class HomePage extends StatefulWidget {
    @override
    _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

    late VideoPlayerController _controller;

    @override
    void initState() {
        super.initState();
        _controller = VideoPlayerController.asset('assets/images/feeds/new_video.mp4');

        _controller.addListener(() {
            setState(() {});
        });
        _controller.setLooping(true);
        _controller.initialize().then((_) => setState(() {}));
        _controller.setVolume(0.0);
        _controller.play();
    }

    @override
    void dispose() {
       _controller.dispose();
        super.dispose();
    }


    List<Item> feeds = <Item> [
        Item('assets/images/users/user1.jpg', 'assets/images/feeds/1.jpg', 'assets/images/users/user1.jpg'),
        Item('assets/images/users/user2.jpg', 'assets/images/feeds/2.jpg', 'assets/images/users/user1.jpg'),
        Item('assets/images/users/user3.jpg', 'assets/images/feeds/3.jpg', 'assets/images/users/user1.jpg'),
        Item('assets/images/users/user4.jpg', 'assets/images/feeds/4.jpg', 'assets/images/users/user1.jpg'),
        Item('assets/images/users/user5.jpg', 'assets/images/feeds/5.jpg', 'assets/images/users/user1.jpg'),
        Item('assets/images/users/user6.jpg', 'assets/images/feeds/6.jpg', 'assets/images/users/user1.jpg'),
        Item('assets/images/users/user7.jpg', 'assets/images/feeds/7.jpg', 'assets/images/users/user1.jpg'),
        Item('assets/images/users/user8.jpg', 'assets/images/feeds/8.jpg', 'assets/images/users/user1.jpg'),
        Item('assets/images/users/user9.jpg', 'assets/images/feeds/9.jpg', 'assets/images/users/user1.jpg'),
        Item('assets/images/users/user10.jpg', 'assets/images/feeds/10.jpg', 'assets/images/users/user1.jpg'),
        Item('assets/images/users/user11.jpg', 'assets/images/feeds/11.jpg', 'assets/images/users/user1.jpg'),
        Item('assets/images/users/user1.jpg', 'assets/images/feeds/12.jpg', 'assets/images/users/user1.jpg'),
        Item('assets/images/users/user2.jpg', 'assets/images/feeds/13.jpg', 'assets/images/users/user1.jpg'),
        Item('assets/images/users/user3.jpg', 'assets/images/feeds/14.jpg', 'assets/images/users/user1.jpg'),
        Item('assets/images/users/user4.jpg', 'assets/images/feeds/15.jpg', 'assets/images/users/user1.jpg'),
        Item('assets/images/users/user5.jpg', 'assets/images/feeds/16.jpg', 'assets/images/users/user1.jpg'),
        Item('assets/images/users/user6.jpg', 'assets/images/feeds/17.jpg', 'assets/images/users/user1.jpg'),
        Item('assets/images/users/user7.jpg', 'assets/images/feeds/18.jpg', 'assets/images/users/user1.jpg'),
        Item('assets/images/users/user8.jpg', 'assets/images/feeds/19.jpg', 'assets/images/users/user1.jpg'),
        Item('assets/images/users/user9.jpg', 'assets/images/feeds/20.jpg', 'assets/images/users/user1.jpg'),
        Item('assets/images/users/user10.jpg', 'assets/images/feeds/21.jpg', 'assets/images/users/user1.jpg'),
        Item('assets/images/users/user11.jpg', 'assets/images/feeds/22.jpg', 'assets/images/users/user1.jpg'),
        Item('assets/images/users/user1.jpg', 'assets/images/feeds/23.jpg', 'assets/images/users/user1.jpg'),
        Item('assets/images/users/user2.jpg', 'assets/images/feeds/24.jpg', 'assets/images/users/user1.jpg'),
        Item('assets/images/users/user3.jpg', 'assets/images/feeds/25.jpg', 'assets/images/users/user1.jpg'),
        Item('assets/images/users/user4.jpg', 'assets/images/feeds/26.jpg', 'assets/images/users/user1.jpg'),
    ];

    List<String> stories = [
        'assets/images/story/1.jpg',
        'assets/images/story/2.jpg',
        'assets/images/story/3.jpeg',
        'assets/images/story/4.jpeg',
        'assets/images/story/5.jpg'
    ];

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
                backgroundColor: Colors.white,
                elevation: 0,
                title: Image.asset('assets/images/icon.png', width: 120,),
                actions: [
                    IconButton(onPressed: () {}, icon: Image.asset('assets/images/add.png', width: 24)),
                    IconButton(onPressed: () {}, icon: Image.asset('assets/images/messenger.png', width: 24))
                ],
            ),
            body: _buildBody(),
        );
    }

    Widget _buildBody() {
        return SingleChildScrollView(
            child: Container(
                child: Column(
                    children: <Widget>[

                        Container(
                            height: 135,
                            padding: EdgeInsets.all(16),
                            child: ListView(
                                shrinkWrap: true,
                                physics: ScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                children: List.generate(stories.length, (index) {
                                    return _buildStory(stories[index], index);
                                }),
                            ),
                        ),

                        ListView(
                            shrinkWrap: true,
                            physics: ScrollPhysics(),
                            children: List.generate(feeds.length, (index) {
                                return _buildPost(feeds[index], index);
                            }),
                        ),

                    ],
                ),
            ),
        );
    }

    Widget _buildStory(story, index) {
        return Container(
            margin: EdgeInsets.only(right: 16),
            child: Column(
                children: [
                    index == 0 ? Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        Container(
                          height: 76,
                          width: 76,
                          child: Container(
                            height: 76,
                            width: 76,
                            margin: EdgeInsets.all(2),
                            decoration: userImage('assets/images/users/user1.jpg'),
                          ),
                        ),
                        Container(
                          height: 24,
                          width: 24,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(100)
                              ),
                              border: Border.all(
                                  width: 2,
                                  color: Colors.white
                              ),
                              color: Colors.blueAccent
                          ),
                          child: Center(
                            child: Icon(Icons.add, color: Colors.white, size: 14),
                          ),
                        ),
                      ],
                    ) :
                    Container(
                        height: 76,
                        width: 76,
                        decoration: gradientBorder(),
                        child: Container(
                            height: 76,
                            width: 76,
                            margin: EdgeInsets.all(2),
                            decoration: userImage(story),
                        ),
                    ),
                    SizedBox(height: 3),
                    index == 0 ? Text('Your Story') : Text('Jonh Doe')
                ],
            ),
        );
    }

    Widget _buildPost(feed, index) {
        return Container(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    Container(
                        padding: EdgeInsets.only(left: 16, top: 8, bottom: 8),
                        decoration: bottomBorder(),
                        child: Row(
                            children: [
                                Container(
                                    height: 40,
                                    width: 40,
                                    margin: EdgeInsets.only(right: 10),
                                    decoration: gradientBorder(),
                                    child: Container(
                                        margin: EdgeInsets.all(2),
                                        decoration: userImage(feed.accImage),
                                    ),
                                ),
                                Expanded(
                                    child: Text('music.quotes',
                                        style: TextStyle(
                                            fontFamily: 'semi-bold'
                                        ),
                                    )
                                ),
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.more_vert)
                                )
                            ],
                        ),
                    ),

                    index == 2 ? AspectRatio(
                        aspectRatio: _controller.value.aspectRatio,
                        child: VideoPlayer(_controller),
                    ) : Container(
                        child: Image.asset(feed.mainContent,
                            width: double.infinity,
                            fit: BoxFit.cover,
                        ),
                    ),

                    Container(
                        padding: EdgeInsets.only(left: 16, top: 16, right: 16, bottom: 16),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                                Row(
                                    children: [
                                        Expanded(
                                            child: Row(
                                                children: [
                                                    InkWell(
                                                        onTap: () {},
                                                        child: Image.asset('assets/images/like.png', width: 24)
                                                    ),
                                                    SizedBox(width: 10),
                                                    InkWell(
                                                        onTap: () {},
                                                        child: Image.asset('assets/images/comment.png', width: 28)
                                                    ),
                                                    SizedBox(width: 10),
                                                    InkWell(
                                                        onTap: () {},
                                                        child: Image.asset('assets/images/send.png', width: 24)
                                                    ),
                                                ],
                                            )
                                        ),
                                        InkWell(
                                            onTap: () {},
                                            child: Image.asset('assets/images/bookmark.png', width: 24)
                                        ),
                                    ],
                                ),
                                Text('135,900 likes',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontFamily: 'semi-bold'
                                    ),
                                ),
                                RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(
                                        text: 'music.quotes',
                                        style: TextStyle(color: Colors.black, fontFamily: 'semi-bold', fontSize: 16),
                                        children: <TextSpan>[
                                            TextSpan(text: ' Hello',
                                                style: TextStyle(fontFamily: 'regular')
                                            ),
                                        ],
                                    ),
                                ),

                                Text('view all 500 comments',
                                    style: TextStyle(color: Colors.grey),
                                ),
                                SizedBox(height: 4),
                                Row(
                                  children: [
                                      Expanded(
                                          child: Row(
                                              children: [
                                                  CircleAvatar(
                                                      backgroundImage: AssetImage('assets/images/feeds/1.jpg'),
                                                      radius: 16,
                                                  ),
                                                  Padding(
                                                      padding: EdgeInsets.only(left: 10),
                                                      child: Text('Add a comment...',
                                                          style: TextStyle(color: Colors.grey)
                                                      ),
                                                  )
                                              ],
                                          )
                                      ),
                                      Row(
                                          children: [
                                              InkWell(
                                                  onTap: () {},
                                                  child: Image.asset('assets/images/red_heart.png', width: 16),
                                              ),
                                              SizedBox(width: 8),
                                              InkWell(
                                                  onTap: () {},
                                                  child: Image.asset('assets/images/hand.png', width: 16),
                                              ),
                                              SizedBox(width: 8),
                                              InkWell(
                                                  onTap: () {},
                                                  child: Icon(Icons.add_circle_outline, size: 16, color: Colors.grey),
                                              )
                                          ],
                                      )
                                  ],
                              ),
                                SizedBox(height: 4),
                                Row(
                                    children: [
                                        Text('34 minutes ago',
                                            style: TextStyle(color: Colors.grey, fontSize: 10)
                                        ),
                                        SizedBox(width: 8),
                                        Icon(Icons.fiber_manual_record, size: 5, color: Colors.grey,),
                                        SizedBox(width: 8),
                                        Text('See translation',
                                            style: TextStyle(fontSize: 10),
                                        )
                                    ],
                                )
                            ],
                        ),
                    ),
                ],
            ),
        );
    }

    bottomBorder() {
        return BoxDecoration(
            border: Border(
                bottom: BorderSide(
                    width: 1,
                    color: (Colors.grey[300])!
                )
            )
        );
    }
    
    gradientBorder() {
        return BoxDecoration(
            borderRadius: BorderRadius.all(
                Radius.circular(100)
            ),
            gradient: LinearGradient(
              colors: [Color.fromARGB(255, 231, 73, 93),Color.fromARGB(255, 166, 47, 180)],
              begin: const FractionalOffset(0.0, 0.0),
              end: const FractionalOffset(1.0, 0.0),
            )
        );
    }
    
    userImage(val) {
        return BoxDecoration(
            border: Border.all(
                width: 2,
                color: Colors.white
            ),
            borderRadius: BorderRadius.all(
                Radius.circular(100)
            ),
            image: DecorationImage(
                image: AssetImage(val),
                fit: BoxFit.cover
            )
        );
    }

}

class Item {
    Item(this.accImage, this.mainContent, this.userImage);

    final String accImage;
    final String mainContent;
    final String userImage;

}