import 'package:flutter/material.dart';

import '../widgets/custom_container.dart';

class DesktopView extends StatelessWidget {
  const DesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
          flex: 3,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              //first column
              Flexible(
                child: Column(
                  children: [
                    Flexible(
                      flex: 3,
                      child: CustomContainer(
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(7),
                              child: Text(
                                // softWrap: true,
                                "Bring Your Ideas To Life Through UI Design",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize:
                                      0.04 * MediaQuery.of(context).size.width,
                                  fontWeight: FontWeight.w700,
                                  overflow: TextOverflow.fade,
                                ),
                              ),
                            ),
                            Positioned(
                                right: 4,
                                bottom: 4,
                                child: GestureDetector(
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 8),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(18),
                                      color: Colors.purple,
                                    ),
                                    child: Row(
                                      children: const [
                                        //read from json file
                                        Text(
                                          'Hire Me',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(width: 8),
                                        Icon(
                                          Icons.waving_hand,
                                          color: Colors.yellow,
                                        )
                                      ],
                                    ),
                                  ),
                                ))
                          ],
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      child: Row(
                        children: [
                          Flexible(
                            child: CustomContainer(
                              color: const Color(0xff00C399),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "2+",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 0.025 *
                                          MediaQuery.of(context).size.width,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                  const Text(
                                    'Years Experience',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Flexible(
                            child: CustomContainer(
                              color: const Color(0xffFFC13C),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "54+",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 0.025 *
                                            MediaQuery.of(context).size.width,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                    const Text(
                                      'Handled Projects',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            child: CustomContainer(
                              color: const Color(0xffFF6D7A),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "40+",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 0.025 *
                                            MediaQuery.of(context).size.width,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                    const Text(
                                      'Clients',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),

              //second column
              Flexible(
                child: Column(
                  children: [
                    Flexible(
                      flex: 1,
                      child: CustomContainer(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                children: const [
                                  Text(
                                    'Bim',
                                    style: TextStyle(
                                      color: Colors.white54,
                                      fontSize: 14,
                                    ),
                                  ),
                                  Text(
                                    'Graph',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            IconButton(
                              padding: const EdgeInsets.all(0),
                              onPressed: () {},
                              icon: const Icon(
                                Icons.menu_rounded,
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 6,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Flexible(
                            flex: 3,
                            child: CustomContainer(
                              padding: EdgeInsets.zero,
                              child: Image.asset('assets/img/cm2.jpeg',
                                  fit: BoxFit.cover),
                            ),
                          ),
                          Flexible(
                            flex: 3,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Flexible(
                                  flex: 1,
                                  child: CustomContainer(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Text(
                                            'Name :',
                                            style: TextStyle(
                                              color: Colors.white54,
                                              fontSize: 14,
                                            ),
                                          ),
                                          Text(
                                            'Young John',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                const Flexible(
                                  flex: 3,
                                  child: CustomContainer(
                                    child: Center(child: Text("***")),
                                  ),
                                ),
                                const Flexible(
                                  flex: 1,
                                  child: CustomContainer(
                                    child: Center(child: Text("***")),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Flexible(
          flex: 2,
          child: Row(
            children: const [
              Flexible(
                flex: 3,
                child: CustomContainer(
                  child: Center(child: Text("***")),
                ),
              ),
              Flexible(
                flex: 2,
                child: CustomContainer(
                  child: Center(child: Text("***")),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
