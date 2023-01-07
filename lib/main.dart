import 'package:flutter/material.dart';
import 'package:toonflix/widgets/button.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF181818),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const SizedBox(height: 50),
                      const Text(
                        'Hey, Selena',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Text(
                        'Welcome back',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 120,
              ),
              Text(
                'Total Balance',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white.withOpacity(0.8),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                '\$5,194,482',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 42,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Button(
                      text: 'Transfer',
                      bgColor: Color(0xffF2B33A),
                      textColor: Colors.black),
                  Button(
                      text: 'Request',
                      bgColor: Color(0xff1F2123),
                      textColor: Colors.white),
                ],
              ),
              Row(
                children: const [
                  SizedBox(
                    height: 100,
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Wallets',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'View All',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                //overflow 되면 어떤 동작 할건지 정해 줌.
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                    color: const Color(0xff1F2123),
                    borderRadius: BorderRadius.circular(25)),
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Euro',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 32,
                                fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              const Text(
                                '6,428',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Text(
                                'EUR',
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.8),
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      Transform.scale(
                        scale: 2.2,
                        child: Transform.translate(
                          offset: const Offset(-5, 12),
                          child: const Icon(
                            Icons.euro_rounded,
                            color: Colors.white,
                            size: 88,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
