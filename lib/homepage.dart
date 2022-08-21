import 'package:flutter/material.dart';
import 'package:dna_final_pdf/profile2.dart';
import 'package:dna_final_pdf/explore.dart';


class instgram extends StatefulWidget {
  const instgram({Key? key}) : super(key: key);

  @override
  State<instgram> createState() => _instgramState();
}

class _instgramState extends State<instgram> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_drop_down_outlined,
          color: Colors.black,
        ),
        title: Text(
          'instgram',
          style: TextStyle(
              fontFamily: 'Billabong', color: Colors.black, fontSize: 36),
        ),
        actions: [
          Icon(
            Icons.add_box_outlined,
            color: Colors.black,
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.chat_bubble_outline,
            color: Colors.black,
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body:
      Container(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 94,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        story('images/tom hardy2.jpg', 'Your story'),
                        story('images/Ed_Sheeran.jpg', 'Sheeran'),
                        story('images/fourth.jpg', 'Anjila'),
                        story('images/let me down slowly.jpg', 'Benjamin'),
                        story('images/man.png', 'Alton'),
                        story('images/third.jpg', 'Ali'),
                        story('images/tom hardy2.jpg', 'Hardy'),
                        story('images/Ed_Sheeran.jpg', 'Eddie'),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 800,
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      children: [
                        post(
                            'Anjila',
                            'Baghdad',
                            'images/fourth.jpg',
                            'images/sunset.jpg',
                            'Rest in piece my beatiful country.'),
                        post(
                            'Hardy',
                            'England',
                            'images/tom hardy2.jpg',
                            'images/EnglandSunset.png',
                            'Nothing is better than relaxing and watching enfland on fire.'),
                        post(
                            'Anjila',
                            'Baghdad',
                            'images/fourth.jpg',
                            'images/sunset.jpg',
                            'String caption should be here.'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          fixedColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          items: [
            BottomNavigationBarItem(
              label: '',
              icon: GestureDetector(
                child: Icon(Icons.home_filled),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => instgram()));
                },
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: GestureDetector(
                child: Icon(Icons.search),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => explore()));
                },
              ),
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'images/reel.png',
                width: 28,
                height: 28,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              label: '',
              icon: GestureDetector(
                child: Icon(Icons.favorite_border),
                onTap: (){
                },
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: GestureDetector(
                child: CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage(
                    "images/tom hardy2.jpg",
                  ),
                ),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => pro()));
                },
              ),
            ),
          ]),
    );
  }
  Container story(String img, String name) {
    return Container(
      margin: EdgeInsets.all(5),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(3),
            width: 60,
            height: 60,
            padding: EdgeInsets.all(1),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xFF9B2282), Color(0xFFEEA863)]),
            ),
            child: Container(
              padding: EdgeInsets.all(1),
              child: Container(
                width: 57,
                height: 57,
                decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(img),
                      fit: BoxFit.cover,
                    )),
              ),
            ),
          ),
          Container(
            child: Text(name),
          ),
        ],
      ),
    );
  }

  Container post(String userName, String userLocation, String userPic,
      String postPic, String caption) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                width: 10,
              ),
              CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage(userPic),
              ),
              SizedBox(
                width: 6,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    userName,
                    style: TextStyle(fontSize: 17),
                  ),
                  Text(
                    userLocation,
                    style: TextStyle(fontSize: 9),
                  ),
                ],
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 10),
            width: MediaQuery.of(context).size.width,
            height: 300,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(postPic), fit: BoxFit.cover),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 80,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.favorite_border,
                            color: Colors.black.withOpacity(0.7)),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.chat, color: Colors.black.withOpacity(0.7)),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.send_rounded,
                            color: Colors.black.withOpacity(0.7)),
                      ],
                    ),
                    Icon(Icons.bookmark_border,
                        color: Colors.black.withOpacity(0.7)),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Text(caption),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Ali and 5 others liked this',style: TextStyle(fontSize: 10),),
                        Text('6 days ago',style: TextStyle(fontSize: 8),),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

}
