import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: App(),
    debugShowCheckedModeBanner: false,
  ));
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 1.0,
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  'username-here',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset('assets/ic-verification.png', height: 20.0, width: 20.0,),
                ),
              ],
            ),
            Row(
              children: [
                IconButton(
                  icon: Image.asset('assets/add.png'),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Image.asset('assets/menu.png'),
                  onPressed: () {},
                ),
              ],
            )
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey[50],
                  radius: 50,
                  child: Image.network(
                      'profile-pic-here'),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Column(
                  children: [
                    Text(
                      '49',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                    SizedBox(
                      height: 4.0,
                    ),
                    Text(
                      'Posts',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 14.0,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 10.0,
                ),
                Column(
                  children: [
                    Text(
                      '365',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                    SizedBox(
                      height: 4.0,
                    ),
                    Text(
                      'Followers',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 14.0,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 4.0,
                ),
                Column(
                  children: [
                    Text(
                      '155',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                    SizedBox(
                      height: 4.0,
                    ),
                    Text(
                      'Following',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 14.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            child: Padding(
              padding: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'name-here',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
                  ),
                  SizedBox(
                    height: 1.0,
                  ),
                  Text(
                    'lable-here',
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.normal,
                        fontSize: 15.0),
                  ),
                  SizedBox(
                    height: 1.0,
                  ),
                  Text(
                    'description-here',
                    style: TextStyle(
                        fontWeight: FontWeight.normal, fontSize: 15.0),
                  ),
                  SizedBox(
                    height: 1.0,
                  ),
                  Row(
                    children: [
                      Text(
                        'description-here',
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 15.0),
                      ),
                      Text(
                        ' description-here',
                        style: TextStyle(
                            color: Colors.indigo,
                            fontWeight: FontWeight.normal,
                            fontSize: 15.0),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 1.0,
                  ),
                  Text(
                    'domain-here',
                    style: TextStyle(
                        color: Colors.indigo,
                        fontWeight: FontWeight.normal,
                        fontSize: 15.0),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () {},
                          child: Text(
                            'Edit Profile',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 14.0),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 8.0,
                      ),
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () {},
                          child: Text(
                            'Promotions',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 14.0),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 8.0,
                      ),
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () {},
                          child: Text(
                            'Insights',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 14.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Story Highlights',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset('assets/down-arrow.png'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          DefaultTabController(
            initialIndex: 0,
            length: 4,
            child: TabBar(
              controller: _tabController,
              tabs: [
                Tab(
                  icon: Image.asset('assets/ic-tab1.png'),
                ),
                Tab(
                  icon: Image.asset('assets/ic-tab2.png'),
                ),
                Tab(
                  icon: Image.asset('assets/ic-tab3.png'),
                ),
                Tab(
                  icon: Image.asset('assets/ic-tab4.png'),
                ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const <Widget>[
                SingleChildScrollView(
                  child: Tab1(),
                ),
                SingleChildScrollView(
                  child: Tab2(),
                ),
                SingleChildScrollView(
                  child: Tab3(),
                ),
                SingleChildScrollView(
                  child: Tab4(),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/ic-home.png')),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/ic-search.png')),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/ic-tab2.png')),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/ic-heart.png')),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/ic-user.png')),
            label: '',
          ),
        ],
        currentIndex: 4,
        selectedItemColor: Colors.black,
        onTap: (int) {},
        elevation: 0,
      ),
    );
  }
}

class Tab1 extends StatelessWidget {
  const Tab1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Images(
                      'link-here'),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Images(
                      'link-here'),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Images(
                      'link-here'),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Images(
                      'link-here'),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Images(
                      'link-here'),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Images(
                      'link-here'),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Images(
                      'link-here'),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Images(
                      'link-here'),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Images(
                      'link-here'),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Images(
                      'link-here'),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Images(
                      'link-here'),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Images(
                      'link-here'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Tab2 extends StatelessWidget {
  const Tab2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.all(1.0),
            child: Images(
                'link-here'),
          ),
        ),
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.all(1.0),
            child: Images(
                'link-here'),
          ),
        ),
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.all(1.0),
            child: Images(
                'link-here'),
          ),
        ),
      ],
    );
  }
}

class Tab3 extends StatelessWidget {
  const Tab3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Tab4 extends StatelessWidget {
  const Tab4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Images(
                      'link-here'),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Images(
                      'link-here'),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Images(
                      'link-here'),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Images(
                      'link-here'),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Images(
                      'link-here'),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Images(
                      'link-here'),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Images(
                      'link-here'),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Images(
                      'link-here'),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Images(
                      'link-here'),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Images(
                      'link-here'),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Images(
                      'link-here'),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Images(
                      'link-here'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Images extends StatelessWidget {
  String img;

  Images(this.img);

  @override
  Widget build(BuildContext context) {
    return Image(
      image: NetworkImage(img),
    );
  }
}
