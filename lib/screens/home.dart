/*
import 'package:flutter/material.dart';
import '../repository/beer_repository.dart';
import '../models/beer.dart';
import '../widgets/beer_tile.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Beer> _beers = <Beer>[];

  @override
  void initState() {
    super.initState();
    listenForBeers();
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Top Beers'),
      ),
      body: ListView.builder(
          itemCount: _beers.length,
          itemBuilder: (context, index) => BeerTile(_beers[index])
      ),
    );

    void listenFOrBeers() async {
      final Stream<Beer> stream = await getBeers();
      stream.listen((Beer beer) =>
      setState(() => _beers.add(beer))
      );
    }
  }
}
*/




import 'package:flutter/material.dart';
import '../repository/beer_repository.dart';
import '../models/beer.dart';
import '../widgets/beer_tile.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Beer> _beers = <Beer>[];

  @override
  void initState() {
    super.initState();
    listenForBeers();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      centerTitle: true,
      title: Text('Top Beers'),
      backgroundColor: Colors.lightGreen,
    ),
    body: Container(
      child: ListView.builder(
      itemCount: _beers.length,
      itemBuilder: (context, index) => BeerTile(_beers[index]),
    ),
      decoration: BoxDecoration(color: Colors.transparent,
      ),

    ),
  );

  void listenForBeers() async {
    final Stream<Beer> stream = await getBeers();
    stream.listen((Beer beer) =>
        setState(() =>  _beers.add(beer))
    );
  }
}


