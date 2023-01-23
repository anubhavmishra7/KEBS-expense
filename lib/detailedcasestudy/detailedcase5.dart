import 'package:expense/models/bookmarks.dart';
import 'package:flutter/material.dart';
import 'package:expense/data/casestudy_list.dart';

class DetailedCase5 extends StatefulWidget {
  final Caselist caselist;
  const DetailedCase5(this.caselist, {super.key});

  @override
  State<DetailedCase5> createState() => _DetailedCase5State();
}

class _DetailedCase5State extends State<DetailedCase5> {
  bool _bookmarked = true;
  void _bookmarksList() {
    if (_bookmarked) {
      _bookmarked = false;
    } else {
      _bookmarked = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          '',
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.share,
              color: Colors.black,
            ),
          ),
          IconButton(
              onPressed: () {
                setState(() {
                  if (!Caselist.checkBookmark(widget.caselist)) {
                    Caselist.addBookmark(widget.caselist);
                  }
                });
                _bookmarksList();
              },
              icon: (_bookmarked
                  ? const Icon(
                      Icons.bookmark_border,
                      color: Colors.black,
                    )
                  : const Icon(
                      Icons.bookmark,
                      color: Colors.black,
                    )))
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
            child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    ListTile(
                      leading: Image.asset(caselists[3].imgUrl),
                      title: Text(
                        caselists[3].title,
                        style: const TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ))),
      ),
      floatingActionButton: Align(
        alignment: Alignment.bottomRight,
        child: FloatingActionButton(
          child: const Icon(Icons.format_list_bulleted),
          backgroundColor: Colors.redAccent,
          onPressed: () {},
        ),
      ),
    );
  }
}
