import 'package:flutter/material.dart';
import 'ui/widgets.dart';

void main() {
  runApp(MaterialApp(home: HomePage()));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  var imagens = [
    "assets/image_01.png",
    "assets/image_02.png",
    "assets/image_03.png",
    "assets/image_04.png",
    
  ];
  var title = ['Pokemon 1','Pokemon 2', 'Pokemon 3', 'Pokemon 4'];
  var price = [ '40R', '15R', '12R', '20R'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf2f3f8),
      body: LayoutBuilder(
        builder: (BuildContext context, constraints) {
          var width = constraints.maxWidth;
          var height = constraints.maxHeight;

          return Stack(
            fit: StackFit.expand,
            children: <Widget>[
              buidlGradienteContainer(width, height),
              buildAppBar(),
              buildTitle(height),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    height: height * .6,
                    child: ListView.builder(
                      itemCount: imagens.length,
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(left: 35.0, bottom: 60.0),
                          child: SizedBox(
                            width: 200.0,
                            child: Stack(
                              fit: StackFit.expand,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(top: 45),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: (index % 2 == 0)
                                            ? Colors.white
                                            : Color(0xFF2a2d3f),
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.black12,
                                              offset: Offset(0.0, 10.0),
                                              blurRadius: 10.0)
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(12.0)),
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Image.asset(
                                      imagens[index],
                                      width: 172.5,
                                      height: 199.0,
                                    ),
                                    SizedBox(
                                      height: 12.0,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(12.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            title[index],
                                            style: TextStyle(
                                                fontSize: 16.0,
                                                fontFamily: 'Montserrat-Bold',
                                                color: (index % 2 == 0)
                                                    ? Color(0xFF2a2d3f)
                                                    : Colors.white),
                                          ),
                                          SizedBox(
                                            height: 8.0,
                                          ),
                                          Text(
                                            'Mais Vendidos',
                                            style: TextStyle(
                                                fontSize: 12.0,
                                                fontFamily: 'Montserrat-Medium',
                                                color: (index % 2 == 0)
                                                    ? Color(0xFF2a2d3f)
                                                    : Colors.white),
                                          ),
                                          SizedBox(
                                            height: 50.0,
                                          ),
                                          Text("Por "+
                                            price[index] + "\$",
                                            style: TextStyle(
                                                fontSize: 30.0,
                                                fontFamily: 'Montserrat-Bold',
                                                color: (index % 2 == 0)
                                                    ? Color(0xFF2a2d3f)
                                                    : Colors.white),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ))
            ],
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.panorama_horizontal),
              title: Container(
                height: 0.0,
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_border),
              title: Container(
                height: 0.0,
              ))
        ],
      ),
      floatingActionButton: buildFloatingButtonAction(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
