import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pasindu_book_store/services/database.dart';

class BookViewPage extends StatefulWidget {
  final String id;
  const BookViewPage({required this.id, super.key});

  @override
  State<BookViewPage> createState() => _BookViewPageState();
}

class _BookViewPageState extends State<BookViewPage> {
  @override
  Widget build(BuildContext context) {
    final id = int.parse(widget.id);
    late Map<String, dynamic> book;
    if (id < 11) {
      List<Map<String, dynamic>> topRelatedBooks =
          DatabaseService.topRatedBooks;
      List<Map<String, dynamic>> bookList01 = topRelatedBooks;
      book = topRelatedBooks[id - 1];
    } else {
      List<Map<String, dynamic>> newBooks = DatabaseService.newBooks;
      book = newBooks[id - 11];
    }
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        title: const Text(
          "Book Details",
          style: TextStyle(
              color: Color.fromARGB(255, 126, 103, 94),
              fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.download,
              color: Color.fromARGB(255, 126, 103, 94),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.star,
              color: Color.fromARGB(255, 126, 103, 94),
            ),
          ),
        ],
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: BorderSide.strokeAlignCenter),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 250,
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.25),
                      blurRadius: 28,
                      spreadRadius: 0,
                      offset: Offset(
                        0,
                        14,
                      ),
                    ),
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.22),
                      blurRadius: 10,
                      spreadRadius: 0,
                      offset: Offset(
                        0,
                        10,
                      ),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(16),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.network(
                      height: 250,
                      width: 200,
                      fit: BoxFit.cover,
                      "${book['image']}"),
                ),
              ),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Stack(
                children: [
                  Container(
                    height: 480,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: const Color.fromARGB(255, 255, 255, 255),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.3),
                            blurRadius: 38,
                            spreadRadius: 0,
                            offset: Offset(
                              0,
                              19,
                            ),
                          ),
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.22),
                            blurRadius: 12,
                            spreadRadius: 0,
                            offset: Offset(
                              0,
                              15,
                            ),
                          ),
                        ]),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 8,
                        ),
                        Text("${book['name']}",
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500)),
                        Text(
                          "${book['author']}",
                          style: const TextStyle(fontSize: 16),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 64,
                              width: 64,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                    color:
                                        const Color.fromARGB(255, 134, 119, 74),
                                    width: 1.5),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Text(
                                        "Rating",
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 126, 103, 94),
                                            fontSize: 16),
                                      ),
                                      Text(
                                        "${book['rating']}",
                                        style: const TextStyle(
                                          color:
                                              Color.fromARGB(255, 126, 103, 94),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 64,
                              width: 64,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                    color:
                                        const Color.fromARGB(255, 134, 119, 74),
                                    width: 1.5),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Text(
                                        "Pages",
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 126, 103, 94),
                                            fontSize: 16),
                                      ),
                                      Text(
                                        "${book['pages']}",
                                        style: const TextStyle(
                                            color: Color.fromARGB(
                                                255, 126, 103, 94),
                                            fontSize: 16),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 64,
                              width: 64,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                    color:
                                        const Color.fromARGB(255, 134, 119, 74),
                                    width: 1.5),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Text(
                                        "Peice",
                                        style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 126, 103, 94),
                                          fontSize: 16,
                                        ),
                                      ),
                                      Text(
                                        "${book['price']}",
                                        style: const TextStyle(
                                          color:
                                              Color.fromARGB(255, 126, 103, 94),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: SingleChildScrollView(
                            child: Text(
                              "${book['description']}",
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(255, 126, 103, 94),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    left: 10,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 48,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: const Color.fromARGB(255, 126, 103, 94),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon:
                                    const Icon(Icons.add, color: Colors.white),
                              ),
                              const Text(
                                "01",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.remove,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 48,
                          width: 220,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: const Color.fromARGB(255, 126, 103, 94),
                          ),
                          child: const Center(
                            child: Text(
                              "ADD TO CART",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
