import 'package:flutter/material.dart';

class Favourites extends StatelessWidget {
  final List favourties;
  Favourites({this.favourties});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Favourite Post',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: favourties.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 2.5),
                  color: Colors.black.withOpacity(0.15),
                  spreadRadius: 2,
                  blurRadius: 4,
                ),
              ],
            ),
            child: Row(
              children: [
                Image.network(
                  favourties[index]['url'],
                  width: 100,
                  height: 100,
                ),
                SizedBox(
                  width: 4,
                ),
                Container(
                  width: 170,
                  child: Text(
                    favourties[index]['title'],
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
