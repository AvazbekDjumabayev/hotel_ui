import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            // #Header
            Container(
              width: double.infinity,
              height: 220,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/ic_header.jpg'),
                  fit: BoxFit.cover
                )
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                      Colors.black.withOpacity(0.8),
                      Colors.black.withOpacity(0.4),
                      Colors.black.withOpacity(0.3)
                    ]
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text("Best Hotels Ever",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                    SizedBox(height: 25,),
                    Container(
                      height: 40,
                      margin: EdgeInsets.symmetric(horizontal: 40),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Search for hotels",
                          hintStyle: TextStyle(color: Colors.grey),
                          prefixIcon: Icon(Icons.search),
                          border: InputBorder.none
                        ),
                      ),
                    ),
                    SizedBox(height: 25,)
                  ],
                ),
              ),
            ),
            // #Body
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 15,),
                  Text("Business Hotels",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold)),
                  SizedBox(height: 15,),
                  Container(
                    height: 190,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        makepage(image: 'assets/images/ic_hotel1.jpg', text: "Hotel 1"),
                        makepage(image: 'assets/images/ic_hotel2.jpg', text: "Hotel 2"),
                        makepage(image: 'assets/images/ic_hotel3.jpg', text: "Hotel 3"),
                      ],
                    ),
                  ),
                  SizedBox(height: 15,),
                  Text("Airport Hotels",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold)),
                  SizedBox(height: 15,),
                  Container(
                    height: 190,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        makepage(image: 'assets/images/ic_hotel3.jpg', text: "Hotel 1"),
                        makepage(image: 'assets/images/ic_hotel4.jpg', text: "Hotel 2"),
                        makepage(image: 'assets/images/ic_hotel5.jpg', text: "Hotel 3"),
                      ],
                    ),
                  ),
                  SizedBox(height: 15,),
                  Text("Resort Hotels",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold)),
                  SizedBox(height: 15,),
                  Container(
                    height: 190,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        makepage(image: 'assets/images/ic_hotel5.jpg', text: "Hotel 1"),
                        makepage(image: 'assets/images/ic_hotel4.jpg', text: "Hotel 2"),
                        makepage(image: 'assets/images/ic_hotel1.jpg', text: "Hotel 3"),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget makepage({image, text}){
    return AspectRatio(
      aspectRatio: 1.6/1.5,
      child: Container(
        margin: EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover
          )
        ),
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(0.6),
                Colors.black.withOpacity(0.2)
              ]
            )
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(text,style: TextStyle(color: Colors.white,fontSize: 20),),
              Icon(Icons.favorite,size: 20,color: Colors.red,)
            ],
          ),
        ),
      ),
    );
  }

}
