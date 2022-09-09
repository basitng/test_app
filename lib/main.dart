import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app/quoteCard.dart';
import 'quote.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    ));

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Quote> quotes = [
    Quote(
        text:
            "Keep smiling, because life is a beautiful thing and there's so much to smile about.",
        author: "James Bone"),
    Quote(text: "Life is a long lesson in humility", author: "Paulina Rosvelt"),
    Quote(
        text: "Life is either a daring adventure or nothing at all.",
        author: "Basit NG"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Awesome Quotes"),
        centerTitle: true,
        elevation: 2.0,
        backgroundColor: Color.fromARGB(255, 3, 6, 29),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Column(
            children: quotes
                .map((quote) => QuoteWidget(
                      quote: quote,
                      delete: () {
                        setState(() {
                          quotes.remove(quote);
                        });
                      },
                    ))
                .toList()),
      ),
    );
  }
}
