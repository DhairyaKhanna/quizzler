import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'question.dart';

class Quizbrain {
  int _questionNo = 0;
  List<Question> _questions = [
    Question('Is the captial of Bulgaria, Sophia?', true),
    Question('Approximately 1/4th of human bones are in feet', true),
    Question(
        'Is it true that Portugese where the first and last to leave India?',
        true),
    Question('Can you take a cow upstairs but not downstairs?', false),
    Question('A slug\'s blood blue.', false),
    Question('It is illegal to pee in the Ocean in Portugal.', true),
    Question(
        'No piece of square dry paper can be folded in half more than 7 times.',
        false),
    Question(
        'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        true),
    Question(
        'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        false),
    Question(
        'The total surface area of two human lungs is approximately 70 square metres.',
        true),
    Question('Google was originally called \"Backrub\".', true),
    Question(
        'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        true),
    Question(
        'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        true),
  ];

  void checkforquestions() {
    if (_questionNo < _questions.length - 1) {
      _questionNo++;
    }
  }

  String getQuestionText() {
    return _questions[_questionNo].questions;
  }

  bool getQuestionAnswer() {
    return _questions[_questionNo].answers;
  }

  bool isFinished() {
    if (_questionNo >= _questions.length - 1) {
      print('true');
      return true;
    } else
      return false;
  }

  void reset() {
    _questionNo = 0;
  }
}
