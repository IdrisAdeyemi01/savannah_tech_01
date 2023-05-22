import 'package:flutter/material.dart';

class Review {
  final String title;
  final String content;
  Review(this.title, this.content);
}

class ReviewsScreen extends StatelessWidget {
  final List<Review> reviews;

  const ReviewsScreen(this.reviews, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Reviews')),
      body: Column(
        children: <Widget>[
          const Text(
            'Product Reviews',
            style: TextStyle(fontSize: 24),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: reviews.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(reviews[index].title),
                  subtitle: Text(reviews[index].content),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
