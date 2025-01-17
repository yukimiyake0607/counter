import 'package:counter/providers/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CustomGrid extends ConsumerWidget {
  const CustomGrid({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = ref.watch(counterProvider);
    return GridView.builder(
      itemCount: 1,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 1.0,
      ),
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                '国語',
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Text.rich(
                  textAlign: TextAlign.center,
                  TextSpan(children: [
                    TextSpan(
                      text: '$counter',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: '分',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ])),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        ref.read(counterProvider.notifier).state++;
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: const CircleBorder(
                            side: BorderSide(
                          color: Colors.black,
                        )),
                        minimumSize: Size(40, 40),
                        padding: EdgeInsets.zero,
                      ),
                      child: Icon(Icons.add),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        ref.read(counterProvider.notifier).state--;
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: const CircleBorder(
                            side: BorderSide(
                          color: Colors.black,
                        )),
                        minimumSize: Size(40, 40),
                        padding: EdgeInsets.zero,
                      ),
                      child: Icon(Icons.remove),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
