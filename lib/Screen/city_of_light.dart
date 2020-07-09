import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CityOfLight extends StatefulWidget {
  @override
  _CityOfLightState createState() => _CityOfLightState();
}

class _CityOfLightState extends State<CityOfLight> {
  int _selected;
  Color _iconColor = Colors.grey[500];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    print(size);

    return Scaffold(
        body: SafeArea(
      child: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      'https://images.squarespace-cdn.com/content/v1/5b282335ec4eb7d52c45dc48/1572370702893-0AJI7AAF5UOOL8Q1JCLN/ke17ZwdGBToddI8pDm48kPTrHXgsMrSIMwe6YW3w1AZ7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0k5fwC0WRNFJBIXiBeNI5fKTrY37saURwPBw8fO2esROAxn-RKSrlQamlL27g22X2A/dream+house.jpg?format=2500w'),
                  fit: BoxFit.cover),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: FractionalOffset.topCenter,
                    end: FractionalOffset.bottomCenter,
                    colors: [
                  Colors.white.withOpacity(0.0),
                  Colors.white,
                ],
                    stops: [
                  0.05,
                  0.55
                ])),
          ),
          Column(
            children: <Widget>[
              topbuttons(),
              sidefourblock(),
              _bubble(),
              _room(),
              roomlocation(),
              star(),
              overview()
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                height: size.height - 90,
              ),
              Container(
                width: size.width,
                height: 66,
                color: Color(0xffF4F6F9),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      width: 150,
                      padding: EdgeInsets.only(left: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          IconButton(
                            icon: Icon(Icons.home, color: Colors.grey[500], size: 32),
                            onPressed: () {
                              setState(() {
//                                _iconColor = Colors.blue;
                              });
                            },
                          ),
                          IconButton(
                            icon: Icon(Icons.public,
                                color: _iconColor, size: 32),
                            onPressed: () {
                              setState(() {
                                _iconColor = Colors.blue;
                              });
                            },
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 135,
                      padding: EdgeInsets.only(right: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Icon(Icons.supervisor_account,
                              color: Colors.grey[500], size: 32),
                          Icon(Icons.settings,
                              color: Colors.grey[500], size: 32),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: 570,
            left: 175,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(36),
                  border: Border.all(color: Colors.grey[500], width: 1.5)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.swap_calls,
                  size: 34,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }

  Padding overview() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 10),
          Text(
            "overview",
            style: TextStyle(color: Colors.grey[500], fontSize: 16),
          ),
          SizedBox(height: 10),
          Text(
              "Lativa's capital Riga is enriched and inspired every day by its multicultural community. Riga is perhaps the most",
              style: TextStyle(color: Colors.grey[500], fontSize: 16)),
          SizedBox(height: 10),
          Text(
            "Read More",
            style: TextStyle(
                color: Colors.deepPurple,
                fontSize: 18,
                fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }

  Padding star() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(Icons.star, color: Color(0xffFFA801)),
              Icon(Icons.star, color: Color(0xffFFA801)),
              Icon(Icons.star, color: Color(0xffFFA801)),
              Icon(Icons.star, color: Color(0xffFFA801)),
              Icon(Icons.star_half, color: Color(0xffFFA801)),
              Text(
                "4.75",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Text(
                "325m",
                style: TextStyle(fontSize: 16, color: Colors.grey[700]),
              )
            ],
          )
        ],
      ),
    );
  }

  Padding roomlocation() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          IconButton(
            icon: Icon(
              Icons.room,
              color: Colors.deepPurple,
            ),
            onPressed: () {},
          ),
          Text("Avotu iela 104-B",
              style: TextStyle(color: Colors.grey[600], fontSize: 15))
        ],
      ),
    );
  }

  Padding _room() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "City Of Light",
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.w900),
            ),
            IconButton(
              icon: Icon(
                Icons.favorite,
                size: 28,
                color: Colors.red,
              ),
              onPressed: () {},
            )
          ]),
    );
  }

  Padding _bubble() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: <Widget>[
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
            child: Container(
              width: 75,
              height: 35,
              decoration: BoxDecoration(
                  color: Color(0xff9ABCFA),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(12),
                      topLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12))),
              child: Center(
                  child: Text(
                "Town",
                style: TextStyle(
                    color: Color(0xff434AF7), fontWeight: FontWeight.bold),
              )),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
            child: Container(
              width: 105,
              height: 35,
              decoration: BoxDecoration(
                  color: Color(0xff9ABCFA),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(12),
                      topLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12))),
              child: Center(
                  child: Text(
                "Historical",
                style: TextStyle(
                    color: Color(0xff434AF7), fontWeight: FontWeight.bold),
              )),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
            child: Container(
              width: 85,
              height: 35,
              decoration: BoxDecoration(
                  color: Color(0xff9ABCFA),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(12),
                      topLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12))),
              child: Center(
                  child: Text(
                "For kids",
                style: TextStyle(
                    color: Color(0xff434AF7), fontWeight: FontWeight.bold),
              )),
            ),
          ),
        ],
      ),
    );
  }

  Padding topbuttons() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 26.0, horizontal: 24.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Icon(Icons.arrow_back),
          Icon(Icons.share),
        ],
      ),
    );
  }

  Padding sidefourblock() {
    return Padding(
      padding: const EdgeInsets.only(top: 140.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          _sideBlock("https://picsum.photos/id/649/100/100"),
          SizedBox(width: 15),
          _sideBlock("https://picsum.photos/id/650/100/100"),
          SizedBox(width: 15),
          _sideBlock("https://picsum.photos/id/651/100/100"),
          SizedBox(width: 15),
          Container(
            height: 55,
            width: 55,
            child: Center(
                child: Text(
              "+4",
              style: TextStyle(color: Colors.white, fontSize: 18),
            )),
            decoration: BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          SizedBox(width: 35),
        ],
      ),
    );
  }

  Container _sideBlock(String domain) {
    return Container(
      height: 55,
      width: 55,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image:
              DecorationImage(image: NetworkImage(domain), fit: BoxFit.cover)),
    );
  }
}
