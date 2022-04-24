import 'dart:ui';

import 'package:flutter/material.dart';

class CardGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(
          children: [
            _SingleCard(
              color: Colors.blue,
              icon: Icons.widgets_rounded,
              text: 'General',
            ),
            _SingleCard(
              color: Colors.deepPurple,
              icon: Icons.directions_bus_rounded,
              text: 'Transport',
            ),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
              color: Colors.pink,
              icon: Icons.shopping_bag_rounded,
              text: 'Shopping',
            ),
            _SingleCard(
              color: Colors.deepOrange,
              icon: Icons.receipt,
              text: 'Bills',
            ),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
              color: Colors.blue,
              icon: Icons.movie_rounded,
              text: 'Entertainment',
            ),
            _SingleCard(
              color: Colors.lightGreen,
              icon: Icons.fastfood,
              text: 'Grocery',
            ),
          ],
        ),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  const _SingleCard(
      {Key? key, required this.icon, required this.color, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final boxDecoration = BoxDecoration(
      color: const Color.fromRGBO(62, 66, 107, 0.7),
      borderRadius: BorderRadius.circular(20),
    );

    return Container(
      margin: const EdgeInsets.all(20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 250,
            decoration: boxDecoration,
            child: _CardBody(color: color, icon: icon, text: text),
          ),
        ),
      ),
    );
  }
}

class _CardBody extends StatelessWidget {
  const _CardBody({
    Key? key,
    required this.color,
    required this.icon,
    required this.text,
  }) : super(key: key);

  final Color color;
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: color,
          radius: 40,
          child: Icon(
            icon,
            size: 40,
            color: Colors.white,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Text(
          text,
          style: TextStyle(color: color, fontSize: 22),
        )
      ],
    );
  }
}
