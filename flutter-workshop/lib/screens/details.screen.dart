import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/models/pokemon.model.dart';

class DetailsScreen extends StatelessWidget{
  final Pokemon pokemon;

  final double _SMALL_TXT_SIZE = 14;
  final double _BIG_TXT_SIZE = 20;

  DetailsScreen({this.pokemon});

  @override
  Widget build(BuildContext context){
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              child: Center(
                child: CachedNetworkImage(
                  placeholder: (context, url) => CircularProgressIndicator(),
                  imageUrl:
                    pokemon.image,
                ),
              )
            ),
            Text(pokemon.name, style: TextStyle(fontSize: _BIG_TXT_SIZE))
          ],
        ),
        Row(
          children: <Widget>[
            Text("Height", style: TextStyle(fontSize: _SMALL_TXT_SIZE)),
            Text("Weight", style: TextStyle(fontSize: _SMALL_TXT_SIZE)),
          ],
        ),
        Row(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Colors.black,
                shape: BoxShape.rectangle,
              ),
              child: Text("Height", style: TextStyle(fontSize: _SMALL_TXT_SIZE)),
            )
          ],
        )
      ], 
    ); 
  }
}