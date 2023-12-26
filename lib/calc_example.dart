

import 'package:flutter/material.dart';

void main() {
  runApp(CalcApp());
}

class CalcButton extends StatelessWidget {

  final Widget text;
  final void Function()? onTap;
  const CalcButton({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.purple,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: text,
      ),
    );
  }
}

class CalcApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Calc Example'),
        ),
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: CalcButton(
                            onTap: () {

                            },
                            text: const Text('C'),
                          ),
                        ),
                        Expanded(
                          child: CalcButton(
                            onTap: () {

                            },
                            text: const Text(' '),
                          ),
                        ),
                        Expanded(
                          child: CalcButton(
                            onTap: () {

                            },
                            text: const Text(' '),
                          ),
                        ),
                        Expanded(
                          child: CalcButton(
                            onTap: () {

                            },
                            text: const Text('='),
                          ),
                        ),
                      ],
                    ),
                  ),Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: CalcButton(
                            onTap: () {

                            },
                            text: const Text('1'),
                          ),
                        ),
                        Expanded(
                          child: CalcButton(
                            onTap: () {

                            },
                            text: const Text('2'),
                          ),
                        ),
                        Expanded(
                          child: CalcButton(
                            onTap: () {

                            },
                            text: const Text('3'),
                          ),
                        ),
                        Expanded(
                          child: CalcButton(
                            onTap: () {

                            },
                            text: const Text('+'),
                          ),
                        ),
                      ],
                    ),
                  ),Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: CalcButton(
                            onTap: () {

                            },
                            text: const Text('4'),
                          ),
                        ),
                        Expanded(
                          child: CalcButton(
                            onTap: () {

                            },
                            text: const Text('5'),
                          ),
                        ),
                        Expanded(
                          child: CalcButton(
                            onTap: () {

                            },
                            text: const Text('6'),
                          ),
                        ),
                        Expanded(
                          child: CalcButton(
                            onTap: () {

                            },
                            text: const Text('ㅡ'),
                          ),
                        ),
                      ],
                    ),
                  ),Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: CalcButton(
                            onTap: () {

                            },
                            text: const Text('7'),
                          ),
                        ),
                        Expanded(
                          child: CalcButton(
                            onTap: () {

                            },
                            text: const Text('8'),
                          ),
                        ),
                        Expanded(
                          child: CalcButton(
                            onTap: () {

                            },
                            text: const Text('9'),
                          ),
                        ),
                        Expanded(
                          child: CalcButton(
                            onTap: () {

                            },
                            text: const Text('X'),
                          ),
                        ),
                      ],
                    ),
                  ),Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: CalcButton(
                            onTap: () {

                            },
                            text: const Text(' '),
                          ),
                        ),
                        Expanded(
                          child: CalcButton(
                            onTap: () {

                            },
                            text: const Text('0'),
                          ),
                        ),
                        Expanded(
                          child: CalcButton(
                            onTap: () {

                            },
                            text: const Text(' '),
                          ),
                        ),
                        Expanded(
                          child: CalcButton(
                            onTap: () {

                            },
                            text: const Text('/'),
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
      ),
    );
  }

}