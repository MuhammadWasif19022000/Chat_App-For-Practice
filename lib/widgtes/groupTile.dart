// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:chat_app/pages/chat_page.dart';
import 'package:flutter/material.dart';

class GroupTile extends StatefulWidget {
  final String username;
  final String groupID;
  final String groupName;
  GroupTile(
      {Key? key,
      required this.username,
      required this.groupID,
      required this.groupName})
      : super(key: key);

  @override
  State<GroupTile> createState() => _GroupTileState();
}

class _GroupTileState extends State<GroupTile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ChatPage(
                    groupId: widget.groupID,
                    groupName: widget.groupName,
                    username: widget.username,
                  )),
        );
      },
      child: Container(
        // ignore: prefer_const_constructors
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
        child: ListTile(
          leading: CircleAvatar(
            radius: 30,
            backgroundColor: Theme.of(context).primaryColor,
            child: Text(
              widget.groupName.substring(0, 1).toUpperCase(),
              textAlign: TextAlign.center,
              // ignore: prefer_const_constructors
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          title: Text(
            widget.groupName,
            // ignore: prefer_const_constructors
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            'Join the conversation as ${widget.username}',
            style: TextStyle(
              fontSize: 13,
            ),
          ),
        ),
      ),
    );
  }
}
