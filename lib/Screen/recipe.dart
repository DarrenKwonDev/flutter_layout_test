import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:layoutchallenge/main.dart';

class Recipe extends StatefulWidget {
  @override
  _RecipeState createState() => _RecipeState();
}

class _RecipeState extends State<Recipe> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      drawer: Drawer(),
      body: Container(
        color: backColor,
        child: Column(
          children: <Widget>[
            popular(),
            gridView(),
            otherRecipes(),
          otherRecipesList()
          ]),
      ),
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }

  Expanded otherRecipesList() {
    return Expanded(
        child: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: 10,

            itemBuilder: (BuildContext context, int index) {
              return Card(
                elevation: 0,
                color: Colors.white,
                child: Center(child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: <Widget>[
                          Text('Refreshments', style: TextStyle(color: Colors.grey[600], fontSize: 22, fontWeight: FontWeight.bold),),
                          Text('120 Recipes', style: TextStyle(color: Colors.grey[400], fontSize: 18, fontWeight: FontWeight.bold)),
                        ],
                      ),
                      IconButton(icon: Icon(Icons.arrow_forward, color: Colors.red,), onPressed: () {  },)
                    ],
                  ),
                )),
              );
            }
        ),
      );
  }

  Row otherRecipes() {
    return Row(children: <Widget>[Padding(
          padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
          child: Text("Other Recipes", style: TextStyle(
              color: Colors.grey[600],
              fontWeight: FontWeight.w900,
              fontSize: 18)),
        )],);
  }

  Padding gridView() {
    return Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.count(
            shrinkWrap: true,
            crossAxisCount: 2,
            childAspectRatio: 1.75,
            mainAxisSpacing: 12,
            crossAxisSpacing: 16,
            children: <Widget>[
              Hero(
                tag: "move",
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Next()));
                  },
                    child: PopularContainer(text: "HomeCooking", imagePath: "https://picsum.photos/id/500/300/200",)),
              ),
              PopularContainer(text: "Pastry Recipes", imagePath: "https://picsum.photos/id/501/300/200",),
              PopularContainer(text: "For Babies", imagePath: "https://picsum.photos/id/502/300/200",),
              PopularContainer(text: "Fuit Juice", imagePath: "https://picsum.photos/id/503/300/200",),
            ],
          ),
        );
  }

  Padding popular() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            "Popular Recipes",
            style: TextStyle(
                color: Colors.grey[600],
                fontWeight: FontWeight.w900,
                fontSize: 18),
          ),
          Text(
            "View All",
            style: TextStyle(
                color: Colors.red, fontWeight: FontWeight.bold, fontSize: 18),
          )
        ],
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: Text(
        "Recipes",
        style: TextStyle(
            color: Colors.grey[600], fontWeight: FontWeight.w900, fontSize: 22),
      ),
      elevation: 0,
      centerTitle: true,
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {},
        )
      ],
    );
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      selectedItemColor: Colors.red,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      backgroundColor: Colors.white,
      type: BottomNavigationBarType.shifting,
      currentIndex: _currentIndex,
      onTap: (index) {
        setState(() {
          print(index);
          _currentIndex = index;
        });
      },
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            activeIcon: Icon(Icons.home, color: Colors.red),
            icon: Icon(Icons.home, color: Colors.grey),
            title: Text("")),
        BottomNavigationBarItem(
            activeIcon: Icon(Icons.lightbulb_outline, color: Colors.red),
            icon: Icon(Icons.lightbulb_outline, color: Colors.grey),
            title: Text("")),
        BottomNavigationBarItem(
            activeIcon: Icon(Icons.rate_review, color: Colors.red),
            icon: Icon(Icons.rate_review, color: Colors.grey),
            title: Text("")),
        BottomNavigationBarItem(
            activeIcon: Icon(Icons.plus_one, color: Colors.red),
            icon: Icon(Icons.plus_one, color: Colors.grey),
            title: Text("")),
      ],
    );
  }
}

class PopularContainer extends StatelessWidget {

  final String text;
  final String imagePath;

  const PopularContainer({
    Key key,
    this.text,
    this.imagePath
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(this.text);
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(this.imagePath),
          )),
      child: Center(child: Text("${this.text}", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22),)),
    );
  }
}


class Next extends StatefulWidget {
  @override
  _NextState createState() => _NextState();
}

class _NextState extends State<Next> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Hero(
        tag: "move",
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage("https://picsum.photos/id/500/300/200"),
              )),
          child: Center(child: Text("HomeCooking", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22))),
        ),
      )
    );
  }
}
