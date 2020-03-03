import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/models/pokemon.model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:pokedex/screens/details.screen.dart';

class PokemonGridItem extends StatelessWidget{
  final Pokemon pokemon;

  // ensures that the parameter is written when creating objects
  PokemonGridItem({this.pokemon});

  @override
  Widget build(BuildContext context){
    return GestureDetector(
          onTap: (){
            Navigator.push(
              context, 
              MaterialPageRoute(builder: (context) => DetailsScreen(pokemon: pokemon)),
            );
          },
          child: Column(
            children: <Widget>[ 
              Container(
                  decoration: BoxDecoration(
                    color: Colors.blueGrey[700],
                    shape: BoxShape.circle
                  ),
                  child: Center(
                    child: CachedNetworkImage(
                      placeholder: (context, url) => CircularProgressIndicator(),
                      imageUrl:
                        pokemon.image,
                    ),
                  )
                ),
                Center(
                  child: Text(pokemon.name),
                ),
                Center(
                  child: Text("#"+pokemon.number),
                ),
            ], 
          ),
    );
  }
}