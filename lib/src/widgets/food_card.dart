import 'package:flutter/material.dart';

class foodCard extends StatelessWidget {
  final String categoryName;
  final String imagePath;
  final int numberOfItens;

  foodCard({this.categoryName, this.imagePath, this.numberOfItens});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Row(
            children: <Widget>[
              Image(
                image: AssetImage(imagePath),
                height: 65.0,
                width: 65.0,
              ),
              SizedBox(
                width: 20.0,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    categoryName,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
                  ),
                  Text("$numberOfItens Kinds")
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
