import 'package:cloud_firestore/cloud_firestore.dart';

class FeedbackModel {
  String userId = '';
  String email = '';
  String generalFeedbackComment = '';
  String deliveryServiceComment = '';
  String productQualityComment = '';

  FeedbackModel({
    this.userId = '',
    this.generalFeedbackComment = '',
    this.productQualityComment = '',
    this.email = '',
    this.deliveryServiceComment = '',
  });

  Map<String, dynamic> toJson() => {
        'user_id': userId,
        'general_feedback_comment': generalFeedbackComment,
        'delivery_service_comment': deliveryServiceComment,
        'email': email,
        'product_quality_comment': productQualityComment,
      };

  static FeedbackModel fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;
    return FeedbackModel(
      userId: snapshot['user_id'] ?? '',
      generalFeedbackComment: snapshot["general_feedback_comment"] ?? '',
      productQualityComment: snapshot["product_quality_comment"] ?? '',
      deliveryServiceComment: snapshot["delivery_service_comment"] ?? '',
      email: snapshot["email"] ?? '',
    );
  }
}
