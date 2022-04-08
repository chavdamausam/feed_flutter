import 'package:flutter/material.dart';
import 'package:flutterinstaapp/pages/activity.dart';
import 'package:flutterinstaapp/pages/home.dart';
import 'package:flutterinstaapp/pages/profile.dart';
import 'package:flutterinstaapp/pages/reels.dart';
import 'package:flutterinstaapp/pages/search.dart';

class TabsPage extends StatefulWidget {
  TabsPage({Key? key, Title? title}) : super(key: key);
  final String title = '';
  static const String page_id = 'Tabs';

  @override
  _TabsPageState createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {

    int _currentIndex = 0;
    @override
    Widget build(BuildContext context) {
        return DefaultTabController(
            length: 5,
            child: Scaffold(
                bottomNavigationBar: (
                    TabBar(
                        labelColor: Colors.black,
                        indicatorPadding: EdgeInsets.symmetric(horizontal: 0),
                        unselectedLabelColor: Colors.black,
                        indicatorColor: Colors.transparent,
                        labelPadding: EdgeInsets.all(0),
                        labelStyle: TextStyle(
                          fontFamily: 'regular',
                          fontSize: 10,
                        ),
                      onTap: (int index) => setState(() => _currentIndex = index),
                      tabs: [
                          Tab(
                              icon: _currentIndex == 0 ? Icon(Icons.home) : Icon(Icons.home_outlined)
                          ),
                          Tab(
                              icon: _currentIndex == 1 ? Icon(Icons.search) : Icon(Icons.search_outlined)
                          ),
                          Tab(
                              icon: _currentIndex == 2 ? Icon(Icons.movie) : Icon(Icons.movie_outlined)
                          ),
                          Tab(
                              icon: _currentIndex == 3 ? Icon(Icons.favorite) : Icon(Icons.favorite_border)
                          ),
                          Tab(
                              icon: Container(
                                  height: 24,
                                  width: 24,
                                  decoration: _currentIndex == 4 ? selectedTab() : unselectedTab(),
                              )
                          ),
                      ],
                    )
                ),

                body: TabBarView(
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                        HomePage(),
                        SearchPage(),
                        ReelsPage(),
                        ActivityPage(),
                        ProfilePage(),
                    ],
                ),
            ),
        );
    }

    unselectedTab() {
        return BoxDecoration(
            borderRadius: BorderRadius.all(
                Radius.circular(100)
            ),
            image: DecorationImage(
                image: AssetImage('assets/images/users/user1.jpg'),
                fit: BoxFit.cover
            )
        );
    }

    selectedTab() {
        return BoxDecoration(
            borderRadius: BorderRadius.all(
                Radius.circular(100)
            ),
            image: DecorationImage(
                image: AssetImage('assets/images/users/user1.jpg'),
                fit: BoxFit.cover
            ),
            border: Border.all(
                width: 1,
                color: Colors.black
            )
        );
    }
}