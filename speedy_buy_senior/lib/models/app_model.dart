import 'package:cloud_firestore/cloud_firestore.dart';

class AppModel {
  String dollarPrice = '';
  String lebanonPrice = '';
  String date = '';

  AppModel({
    this.dollarPrice = '',
    this.lebanonPrice = '',
    this.date = '',
  });

  Map<String, dynamic> toJson() => {
        'dollar_price': dollarPrice,
        'lebanon_price': lebanonPrice,
        'date': date,
      };

  static AppModel fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;
    return AppModel(
      dollarPrice: snapshot["dollar_price"],
      lebanonPrice: snapshot["lebanon_price"],
      date: snapshot["date"],
    );
  }
}
