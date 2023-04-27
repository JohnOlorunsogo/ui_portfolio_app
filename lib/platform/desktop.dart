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
                    const Flexible(
                      flex: 1,
                      child: CustomContainer(
                        child: Center(
                          child: Text(
                            "Bring Your Ideas To Life Through UI Design",
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Row(
                        children: const [
                          Flexible(
                            child: CustomContainer(
                              child: Center(child: Text("***")),
                            ),
                          ),
                          Flexible(
                            child: CustomContainer(
                              child: Center(child: Text("***")),
                            ),
                          ),
                          Flexible(
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

              //second column
              Flexible(
                child: Column(
                  children: [
                    const Flexible(
                      flex: 1,
                      child: CustomContainer(
                        child: Center(child: Text("***")),
                      ),
                    ),
                    Flexible(
                      flex: 6,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Flexible(
                            flex: 3,
                            child: CustomContainer(
                              child: Center(child: Text("***")),
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: const [
                                Flexible(
                                  flex: 1,
                                  child: CustomContainer(
                                    child: Center(child: Text("***")),
                                  ),
                                ),
                                Flexible(
                                  flex: 3,
                                  child: CustomContainer(
                                    child: Center(child: Text("***")),
                                  ),
                                ),
                                Flexible(
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
