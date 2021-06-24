import 'package:cloud_firestore/cloud_firestore.dart';

class Status {

  String status;
  String image;

  Status({ this.status, this.image});

  factory Status.fromSnapshot(DocumentSnapshot snapshot) {
    return Status(

      status: snapshot["status"],
      image: snapshot["image"],
    );
  }
}