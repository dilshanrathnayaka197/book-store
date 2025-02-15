import 'package:flutter/material.dart';
import 'package:pasindu_book_store/home_page.dart';

class OnBorderingPage extends StatefulWidget {
  const OnBorderingPage({super.key});

  @override
  State<OnBorderingPage> createState() => _OnBorderingPageState();
}

class _OnBorderingPageState extends State<OnBorderingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 228, 239, 245),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(
                image: AssetImage('assets/background.png'),
              ),
              const Text(
                "Welcome to Our Community",
                style: TextStyle(
                    color: Color.fromARGB(255, 34, 56, 157), fontSize: 24),
              ),
              const SizedBox(
                height: 56,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(300, 60),
                    backgroundColor: const Color.fromARGB(255, 148, 102, 201)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomePage()));
                },
                child: const Text(
                  "Get Start",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
