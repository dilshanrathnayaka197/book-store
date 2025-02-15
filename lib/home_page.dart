import 'package:flutter/material.dart';
import 'package:pasindu_book_store/book_view_page.dart';
import 'package:pasindu_book_store/services/database.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> topRelatedBooks = DatabaseService.topRatedBooks;
    List<Map<String, dynamic>> newBooks = DatabaseService.newBooks;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.menu,
          color: Color.fromARGB(255, 126, 103, 94),
          size: 32,
        ),
        actions: const [
          Icon(
            Icons.notification_add,
            size: 32,
            color: Color.fromARGB(255, 126, 103, 94),
          ),
          SizedBox(
            width: 16,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Hello Geethanjana!",
                  style: TextStyle(
                      color: Color.fromARGB(255, 126, 103, 94),
                      fontSize: 24,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  "Which book do you want to buy?",
                  style: TextStyle(
                      color: Color.fromARGB(255, 126, 103, 94),
                      fontSize: 24,
                      fontWeight: FontWeight.w400),
                ),
                const SizedBox(height: 16),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Search book",
                    prefixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide:
                          const BorderSide(color: Colors.amber, width: 0.8),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Popular",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 16),
                      ),
                      Container(
                        height: 40,
                        width: 100,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 126, 103, 94),
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: const Center(
                            child: Text(
                          "See All",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, color: Colors.white),
                        )),
                      )
                    ]),
                const SizedBox(height: 16),
                SizedBox(
                  height: 350,
                  child: ListView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => BookViewPage(
                                        id: "${topRelatedBooks[index]['id']}")));
                          },
                          child: Container(
                            height: 350,
                            width: 200,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  decoration: const BoxDecoration(boxShadow: [
                                    BoxShadow(
                                      color: Color.fromRGBO(0, 0, 0, 0.35),
                                      blurRadius: 15,
                                      spreadRadius: 0,
                                      offset: Offset(
                                        0,
                                        5,
                                      ),
                                    ),
                                  ]),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image(
                                      image: NetworkImage(
                                          '${topRelatedBooks[index]['image']}'),
                                      height: 250,
                                      width: 200,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                Text(
                                  '${topRelatedBooks[index]['name']}',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromARGB(255, 126, 103, 94)),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "${topRelatedBooks[index]['author']}",
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromARGB(255, 126, 103, 94)),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Fiction",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 16),
                      ),
                      Container(
                        height: 40,
                        width: 100,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 126, 103, 94),
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: const Center(
                          child: Text(
                            "See All",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                SizedBox(
                  height: 350,
                  child: ListView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => BookViewPage(
                                        id: "${newBooks[index]['id']}")));
                          },
                          child: Container(
                            height: 350,
                            width: 200,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  decoration: const BoxDecoration(boxShadow: [
                                    BoxShadow(
                                      color: Color.fromRGBO(0, 0, 0, 0.35),
                                      blurRadius: 15,
                                      spreadRadius: 0,
                                      offset: Offset(
                                        0,
                                        5,
                                      ),
                                    ),
                                  ]),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image(
                                      image: NetworkImage(
                                          '${newBooks[index]['image']}'),
                                      height: 250,
                                      width: 200,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                Text(
                                  '${newBooks[index]['name']}',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromARGB(255, 126, 103, 94)),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "${newBooks[index]['author']}",
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromARGB(255, 126, 103, 94)),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
