import 'package:flutter/material.dart';

enum MessageType { sent, received }

List<Map<String, dynamic>> friendsList = [
  {
    'username': 'Anand Eeshwar',
    'lastMsg': 'Hey, Thank you',
    'lastMsgTime': '18:44 PM',
  },
  {
    'username': 'Anand Rathore',
    'lastMsg': 'Hey, Thank you',
    'lastMsgTime': '18:44 PM',
  },
  {
    'username': 'Rose Mary',
    'lastMsg': 'Hey, Thank you',
    'lastMsgTime': '18:44 PM',
  },
  {
    'username': 'Jo Jacob',
    'lastMsg': 'Hey, Thank you',
    'lastMsgTime': '18:44 PM',
  },
  {
    'username': 'Anand Eeshwar',
    'lastMsg': 'Hey, Thank you',
    'lastMsgTime': '18:44 PM',
  },
  {
    'username': 'Anand Rathore',
    'lastMsg': 'Hey, Thank you',
    'lastMsgTime': '18:44 PM',
  },
  {
    'username': 'Rose Mary',
    'lastMsg': 'Hey, Thank you',
    'lastMsgTime': '18:44 PM',
  },
  {
    'username': 'Jo Jacob',
    'lastMsg': 'Hey, Thank you',
    'lastMsgTime': '18:44 PM',
  },
];

List<Map<String, dynamic>> messages = [
  {
    'status': MessageType.received,
    'message': 'Hi ',
  },
  {
    'status': MessageType.sent,
    'message': 'Did you join medicine through devoyage',
    'time': '08:45 AM'
  },
  {
    'status': MessageType.sent,
    'message': 'I had some doubts, do you mind answering if you are free',
    'time': '08:45 AM'
  },
  {
    'status': MessageType.received,
    'message': 'Sure, go ahead.',
  },
  {'status': MessageType.sent, 'message': 'Thankyou️.', 'time': '08:45 AM'},
];
