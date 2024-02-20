import 'package:cloud_firestore/cloud_firestore.dart';

class AddressModel {
  String userId = '';
  String firstName = '';
  String lastName = '';
  String phoneNumber = '';
  String zone = '';
  String addressDetails = '';

  AddressModel({
    this.userId = '',
    this.firstName = '',
    this.lastName = '',
    this.phoneNumber = '',
    this.zone = '',
    this.addressDetails = '',
  });

  Map<String, dynamic> toJson() => {
        'user_id': userId,
        'first_name': firstName,
        'last_name': lastName,
        'phone_number': phoneNumber,
        'address_details': addressDetails,
        'zone': zone,
      };

  static AddressModel fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;
    return AddressModel(
      userId: snapshot['user_id'] ?? '',
      firstName: snapshot["first_name"] ?? '',
      lastName: snapshot["last_name"] ?? '',
      phoneNumber: snapshot["phone_number"] ?? '',
      zone: snapshot["zone"] ?? '',
      addressDetails: snapshot["address_details"] ?? '',
    );
  }
}
