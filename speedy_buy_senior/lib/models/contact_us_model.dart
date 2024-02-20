import 'package:cloud_firestore/cloud_firestore.dart';

class ContactUs{
   String userId = '';
  String email = '';
  String description = '';
  String contactUsId = '';

  ContactUs({
    this.userId = '',
    this.contactUsId = '',
    this.description = '',
    this.email = '',
  });

  Map<String, dynamic> toJson() => {
        'user_id': userId,
        'contact_us_id': contactUsId,
        'description': description,
        'email': email,
      };

  static ContactUs fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;
    return ContactUs(
      userId: snapshot['user_id'] ?? '',
      contactUsId: snapshot["contact_us_id"] ?? '',
      description: snapshot["description"] ?? '',
      email: snapshot["email"] ?? '',

    );
  }
}