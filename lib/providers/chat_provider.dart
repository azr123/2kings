import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../models/chat_model.dart';

class ChatProvider with ChangeNotifier {
  List<ChatModel> _list = [];

  List<ChatModel> get getList => _list;

  final loggedInUser = FirebaseAuth.instance.currentUser;
  Future<void> fetch() async {
    await FirebaseFirestore.instance
        .collection("chats")
        .where("userID", isEqualTo: loggedInUser!.uid)
        .get()
        .then(
          (QuerySnapshot<Map<String, dynamic>> snapshot) => {
            _list = [],
            for (var doc in snapshot.docs)
              {
                _list.insert(
                  0,
                  ChatModel.fromMap(map: doc.data(), chatID: doc.id),
                ),
              },
          },
        );
    notifyListeners();
  }

  List<ChatModel> getChatByID(String otherID) {
    return _list
        .where((element) => element.otherID!.trim() == otherID.trim())
        .toList();
  }
}
