import 'package:flutter/material.dart';
import 'books.dart';

class BookDetailsPage extends StatelessWidget {
  final Book book;

  const BookDetailsPage({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Book Details'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              book.description,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text('Category: ${book.category}'),
            Text('Price: \$${book.price.toStringAsFixed(2)}'),
            Text('Quantity: ${book.quantity} available'),
            const SizedBox(height: 16),
            Image.network(
              book.image,
              fit: BoxFit.cover,
              width: double.infinity,
              height: 200,
              errorBuilder: (context, error, stackTrace) =>
              const Icon(Icons.image_not_supported),
            ),
          ],
        ),
      ),
    );
  }
}
