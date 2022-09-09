import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app/quote.dart';

class QuoteWidget extends StatelessWidget {
  final Quote quote;
  final VoidCallback delete;

  QuoteWidget({required this.quote, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Text(
            '${quote.text}',
            style: TextStyle(
                color: Colors.grey[800],
                fontSize: 16,
                height: 1.4,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            '${quote.author}',
            style: TextStyle(
                color: Colors.grey[500],
                fontSize: 16,
                height: 1.4,
                fontWeight: FontWeight.bold),
          ),
          IconButton(onPressed: delete, icon: Icon(Icons.delete_outline))
        ]),
      ),
    );
  }
}
