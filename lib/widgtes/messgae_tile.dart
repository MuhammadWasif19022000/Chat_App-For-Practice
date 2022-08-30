// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class MessageTile extends StatefulWidget {
  final String message;
  final String sender;
  final bool sendByMe;

  MessageTile(
      {Key? key,
      required this.message,
      required this.sender,
      required this.sendByMe})
      : super(key: key);

  @override
  State<MessageTile> createState() => _MessageTileState();
}

class _MessageTileState extends State<MessageTile> {
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      padding: EdgeInsets.only(
          top: 4,
          bottom: 4,
          left: widget.sendByMe ? 0 : 24,
          right: widget.sendByMe ? 24 : 0),
      alignment: widget.sendByMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: widget.sendByMe
            ? EdgeInsets.only(left: 30)
            : EdgeInsets.only(right: 30),
        padding: EdgeInsets.only(top: 17, bottom: 17, left: 20, right: 20),
        decoration: BoxDecoration(
          borderRadius: widget.sendByMe
              ? BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                )
              : BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
          color: widget.sendByMe
              ? Theme.of(context).primaryColor
              : Colors.grey[700],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.sender.toUpperCase(),
              textAlign: TextAlign.center,
              // ignore: prefer_const_constructors
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 13,
                letterSpacing: -0.5,
                color: Colors.white,
              ),
            ),
            // ignore: prefer_const_constructors
            SizedBox(height: 8),
            Text(
              widget.message,
              textAlign: TextAlign.center,
              // ignore: prefer_const_constructors
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
