import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/book_list_model.dart';
import 'package:provider/provider.dart';

class BookListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<BookListModel>(
      create: (_) => BookListModel()..fetchBooks(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('本一覧'),
        ),
        body: Consumer<BookListModel>(
          builder: (context, model, child) {
            final books = model.books;
            final listTiles = books
                .map(
                  (book) => ListTile(
                    title: Text(book.title),
                  ),
                )
                .toList();
            return ListView(
              children: listTiles,
            );
          },
        ),
      ),
    );
  }
}

// StreamBuilder<QuerySnapshot>(
// stream: FirebaseFirestore.instance.collection('books').snapshots(),
// builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
// return ListView(
// children: snapshot.data.docs.map((DocumentSnapshot document) {
// return ListTile(
// title: Text(document['title']),
// );
// }).toList(),
// );
// },
// ),
