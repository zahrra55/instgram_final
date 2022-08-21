import 'package:flutter/material.dart';
import 'package:dna_final_pdf/profile2.dart';
import 'package:dna_final_pdf/homepage.dart';
class explore extends StatefulWidget {
  const explore({Key? key}) : super(key: key);

  @override
  State<explore> createState() => _exploreState();
}

class _exploreState extends State<explore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 1200,
          child:
          Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 60,
                padding: EdgeInsets.all(10),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.grey.withOpacity(0.4),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(width: 10,),
                      Icon(Icons.search,color: Colors.black.withOpacity(0.5),),
                      SizedBox(width: 10,),
                      Text('Search',style: TextStyle(color: Colors.black.withOpacity(0.5),fontSize: 12),),
                    ],
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 700,
                child: GridView.count(crossAxisCount: 3,mainAxisSpacing: 2,crossAxisSpacing: 2,
                  children: [
                    post('images/art.jpg'),
                    post('images/meme2.jpg'),
                    post('images/meme.jpg'),
                    post('images/gats.jpg'),
                    post('images/tree.jpg'),
                    post('images/art.jpg'),
                    post('images/meme2.jpg'),
                    post('images/meme.jpg'),
                    post('images/gats.jpg'),
                    post('images/tree.jpg'),
                    post('images/tree.jpg'),
                    post('images/art.jpg'),
                    post('images/meme2.jpg'),
                    post('images/meme.jpg'),
                    post('images/gats.jpg'),
                    post('images/tree.jpg'),
                    post('images/art.jpg'),
                    post('images/meme2.jpg'),
                    post('images/meme.jpg'),
                    post('images/gats.jpg'),
                    post('images/tree.jpg'),
                    post('images/art.jpg'),
                  ],
                ) ,
              ),

            ],
          ),
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

  Container post(String poster){
    return Container(
      width: 115,
      height: 115,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(poster),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
