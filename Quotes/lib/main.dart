import 'package:flutter/material.dart';
import 'quote.dart';
void main() => runApp(MaterialApp(
  home: QuotesList(),
));
class QuotesList extends StatefulWidget {

  @override
  State<QuotesList> createState() => _QuotesListState();
}

class _QuotesListState extends State<QuotesList> {

  List<Quote> quotes=[
    Quote(author: 'Oscar Wilde',text: 'Be yourself; everyone else is already taken.'),
    Quote(author: 'XYZ', text:'A room without books is like a body without a soul.' ),
    Quote(author:'Qwerty adfs' , text: 'You only live once, but if you do it right, once is enough.'),
    Quote(author:'Gandhi' , text: 'Be the change that you wish to see in the world.'),
    Quote(author: 'adfawer dfas', text:'We accept the love we think we deserve.' ),
    Quote(author: 'Adfsd adfa', text:'I solemnly swear that I am up to no good.' ),
    Quote(author: 'asdf sdfa ', text:'Love all, trust a few, do wrong to none.' )

  ];
Widget quoteTempelate(quote){
  return Card(
    margin: EdgeInsets.fromLTRB(16.0, 16.0,16.0,0.0),
    child: Column(
      children: <Widget>[
        Text(
          quote.text,
          style: TextStyle(
            fontSize: 18.0,
            color: Colors.grey[600],
          ),
        ),
        SizedBox(height: 6.0),
        Text(
        quote.author,
          style: TextStyle(
            fontSize: 14.0,
            color: Colors.grey[800],
          ),
        )
      ],
    ),
  );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote)=> quoteTempelate(quote)).toList(),
      ),
    );
  }
}


