///Created by fuzhi on 2019-06-03

import 'package:flutter/material.dart';
import 'package:flutter_app/model/Post.dart';

class PostShow extends StatelessWidget {
  final Post post;

  PostShow(this.post);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(post.title),
        elevation: 0,
      ),
      body: Column(
        children: <Widget>[
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Image.network(
              post.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: EdgeInsets.all(32),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  post.title,
                  style: Theme.of(context).textTheme.title,
                ),
                SizedBox(
                  height: 1,
                ),
                Text(
                  post.author,
                  style: Theme.of(context).textTheme.subhead,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'description: ' + post.description,
                  style: Theme.of(context).textTheme.body1,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
