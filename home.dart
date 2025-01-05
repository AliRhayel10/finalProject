import 'package:flutter/material.dart';
import 'BookDetailsPage.dart';
import 'books.dart';
import 'search.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _isLoading = true;
  List<Book> _books = [];
  String _greetingMessage = '';

  @override
  void initState() {
    super.initState();
    fetchBooks(); // Fetch books from server when widget is created
    _setGreetingMessage(); // Set greeting message based on time
  }

  Future<void> fetchBooks() async {
    try {
      final books = await getBooks(); // Call to getBooks function in books.dart
      setState(() {
        _books = books;
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _isLoading = false;
      });
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error fetching books: $e')),
      );
    }
  }

  // Method to set greeting message based on time of day
  void _setGreetingMessage() {
    final hour = DateTime.now().hour;

    if (hour < 12) {
      setState(() {
        _greetingMessage = 'Good Morning!';
      });
    } else if (hour < 17) {
      setState(() {
        _greetingMessage = 'Good Afternoon!';
      });
    } else {
      setState(() {
        _greetingMessage = 'Good Evening!';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PalaceBooks List'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const Search()),
              );
            },
          ),
        ],
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Display dynamic greeting message
            Text(
              _greetingMessage,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
            ),
            const SizedBox(height: 16),
            // Check if no books found
            _books.isEmpty
                ? const Center(child: Text('No books found'))
                : ListView.builder(
              shrinkWrap: true, // To prevent overflow in Column
              itemCount: _books.length,
              itemBuilder: (context, index) {
                final book = _books[index];
                return GestureDetector(
                  onTap: () {
                    // Navigate to the BookDetailsPage and pass the selected book
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BookDetailsPage(book: book),
                      ),
                    );
                  },
                  child: BookCard(book: book),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}