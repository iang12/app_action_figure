import 'package:flutter/material.dart';
import 'package:flutter_phb/icones_customizados/icons.dart';

Widget buildTitle(double height) {
  return Positioned(
    top: height * .2,
    left: 30.0,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Pokémon',
          style: TextStyle(fontSize: 28.0, fontFamily: "Montserrat-Bold"),
        ),
        Text(
          'Action Figures',
          style: TextStyle(fontSize: 16.0, fontFamily: "Montserrat-Bold"),
        )
      ],
    ),
  );
}

Widget buildAppBar() {
  return Positioned(
    top: 40.0,
    left: 20.0,
    right: 20.0,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        IconButton(
          icon: Icon(
            CustomIcons.menu,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(
            CustomIcons.search,
            color: Colors.black,
          ),
          onPressed: () {},
        )
      ],
    ),
  );
}

Widget buidlGradienteContainer(double width, double height) {
  return Align(
    alignment: Alignment.topRight,
    child: Container(
      width: width * .8,
      height: height / 2,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xFFfbfcfd), Color(0xFFf2f3f8)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.5, 1.0])),
    ),
  );
}

Widget buildFloatingButtonAction() {
  return Container(
    width: 65.0,
    height: 65.0,
    decoration:
        BoxDecoration(color: Colors.red, shape: BoxShape.circle, boxShadow: [
      BoxShadow(
          color: Color(0xFF2a2d3f).withOpacity(.6),
          offset: Offset(0.0, 10.0),
          blurRadius: 10.0)
    ]),
    child: FloatingActionButton(child: Icon(Icons.home)),
  );
}
