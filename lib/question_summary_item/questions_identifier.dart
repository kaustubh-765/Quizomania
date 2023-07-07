import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget {
  const QuestionIdentifier({
    super.key,
    required this.isCorrectAns,
    required this.questionIndex,
  });

  final bool isCorrectAns;
  final int questionIndex;

  @override
  Widget build(BuildContext context) {
    final questionNumber = questionIndex + 1;

    return Container(
      width: 30,
      height: 25,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isCorrectAns
            ? const Color.fromARGB(255, 150, 198, 241)
            : const Color.fromARGB(255, 240, 133, 241),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(
        questionNumber.toString(),
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 22, 2, 56),
        ),
      ),
    );
  }
}
