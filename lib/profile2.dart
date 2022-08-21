import 'package:flutter/material.dart';
import 'package:dna_final_pdf/homepage.dart';
import 'package:dna_final_pdf/explore.dart';
class pro extends StatefulWidget {
  const pro({Key? key}) : super(key: key);

  @override
  State<pro> createState() => _proState();
}

class _proState extends State<pro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Stack(
              children: [
                Container(
                  height: 2600,
                  color: Color(0xFFf3f2f7),
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Center(
                        child: Image.asset("images/tom_blur2.jpg"),
                      ),
                    ],
                  ),
                ),//blure
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 24,
                    ),
                    Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 320,
                    ),
                    Text(
                      '...',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),//icons
                Column(
                  children: [
                    Container(
                      height: 350,
                      margin: EdgeInsets.only(top: 120, bottom: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50),
                        ),
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 60,
                            ),
                            Text(
                              'Tom Hardy',
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF1d2055)),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'NEW YORK CITY',
                              style: TextStyle(fontSize: 14),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'i am a lazy person.I love pizza '
                                  'don\'t talk to me.',
                              style: TextStyle(
                                  fontSize: 18, color: Color(0xFF2d3c77)),
                            ),
                            Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  margin: EdgeInsets.all(25),
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    border: Border.all(
                                      color: Colors.grey,
                                      width: 0.3,
                                    ),
                                  ),
                                  child: Icon(
                                    Icons.comment,
                                    color: Color(0xFF9B2282),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    print("clicked");
                                  },
                                  child: Container(
                                    width: 150,
                                    height: 55,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF9B2282),
                                      borderRadius: BorderRadius.circular(50),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0xFF9B2282).withOpacity(0.3),
                                          offset: const Offset(
                                            5.0,
                                            5.0,
                                          ),
                                          blurRadius: 10.0,
                                          spreadRadius: 1.0,
                                        ),
                                      ],
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.center,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          " Follow",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 19),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),

                                Container(
                                  margin: EdgeInsets.all(25),
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    border: Border.all(
                                      color: Colors.grey,
                                      width: 0.3,
                                    ),
                                  ),
                                  child: Icon(
                                    Icons.share,
                                    color: Color(0xFF9B2282),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceEvenly,
                              children: [
                                informations('870','Following'),
                                Container(
                                  width: 1,
                                  height: 19,
                                  color: Colors.grey,
                                  margin: EdgeInsets.all(44),
                                ),
                                informations('120k','Followers'),
                                Container(
                                  width: 1,
                                  height: 19,
                                  color: Colors.grey,
                                  margin: EdgeInsets.all(44),
                                ),
                                informations('354k','Likes')
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 150,
                      padding: EdgeInsets.all(20),
                      color: Colors.white,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Followers',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF1d2055)),
                              ),
                              Text(
                                'View All',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF9B2282),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: 94,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                story('images/Ed_Sheeran.jpg', 'Sheeran'),
                                story('images/hiddleston.jpg', 'Hiddleston'),
                                story('images/fourth.jpg', 'Anjila'),
                                story('images/man.png', 'Elton'),
                                story('images/third.jpg', 'Ali'),
                                story('images/let me down slowly.jpg','Benjamin'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 600,
                      width: 400,
                      padding: EdgeInsets.all(20),
                      margin: EdgeInsets.only(top: 20),
                      color: Colors.white,
                      child: GridView.count(
                        mainAxisSpacing: 6,
                        crossAxisSpacing: 6,
                        crossAxisCount: 3,
                        children: [
                          post('images/sunset.jpg'),
                          post('images/flower.jpg'),
                          post('images/tree.jpg'),
                          post('images/flower.jpg'),
                          post('images/tree.jpg'),
                          post('images/sunset.jpg'),
                          post('images/flower.jpg'),
                          post('images/tree.jpg'),
                          post('images/sunset.jpg'),
                          post('images/tree.jpg'),
                          post('images/flower.jpg'),
                          post('images/tree.jpg'),
                          post('images/sunset.jpg'),
                          post('images/flower.jpg'),
                          post('images/tree.jpg'),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 60,
                    ),
                    Center(
                      child: Container(
                        width: 90,
                        height: 90,
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black54.withOpacity(0.4),
                              offset: const Offset(
                                5.0,
                                5.0,
                              ),
                              blurRadius: 10.0,
                              spreadRadius: 1.0,
                            ),
                          ],
                          image: DecorationImage(
                            image: AssetImage("images/tom hardy2.jpg"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )
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
  Container post(String img) {
    return Container(
      width: 115,
      height: 115,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/sunset.jpg"),
          fit: BoxFit.cover,
        ),
      ),
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
                      image: AssetImage('$img'),
                    )),
              ),
            ),
          ),
          Container(
            child: Text('name'),
          ),
        ],
      ),
    );
  }

  Column informations(String count,String people){
    return  Column(
      children: [
        Text(
          count,
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xFF29317f)),
        ),
        Text(
          people,
          style:
          TextStyle(color: Color(0xFF29317f)),
        ),
      ],

    );
  }
}
