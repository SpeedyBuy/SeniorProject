import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:speedy_buy_senior/models/address_model.dart';
import 'package:speedy_buy_senior/models/feedback_model.dart';
import 'package:speedy_buy_senior/models/user_model.dart';
import 'package:speedy_buy_senior/screens/layout/home_layout.dart';

class UserService {
  Future<bool> signInUser({
    required BuildContext context,
    required String email,
    required String password,
  }) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      return true;
    } on FirebaseAuthException catch (e) {
      final snackBar = SnackBar(
        backgroundColor: Colors.red,
        content: const Text(
          'An Error please check Email or Password',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
        action: SnackBarAction(
          label: '',
          onPressed: () {},
        ),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);

      print(e);
      return false;
    }
  }

  Future<void> signUpUser({
    required BuildContext context,
    required password,
    required confirmPassowrd,
    required email,
    required firstName,
    required lastName,
    required phoneNumber,
  }) async {
    try {
      if (password == confirmPassowrd) {
        UserCredential cred = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: email, password: password);
        await addUserDetails(
          firstName: firstName,
          lastName: lastName,
          email: email,
          password: password,
          userId: cred.user!.uid,
          phoneNumber: phoneNumber,
        );
        // ignore: use_build_context_synchronously
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
              builder: (context) => HomeLayout(
                    index: 0,
                  )),
        );
      } else {
        final snackBar = SnackBar(
          backgroundColor: Colors.red,
          content: const Text(
            'Passwords do not match',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
          action: SnackBarAction(
            label: '',
            onPressed: () {},
          ),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }

      // ignore: use_build_context_synchronously
      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      final snackBar = SnackBar(
        backgroundColor: Colors.red,
        content: const Text(
          'An Error occurred during sign-up',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
        action: SnackBarAction(
          label: '',
          onPressed: () {},
        ),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);

      print(e);
    }
  }

//add new details for new user
  Future<void> addUserDetails({
    required String firstName,
    required String lastName,
    required String email,
    required String password,
    required String userId,
    required String phoneNumber,
  }) async {
    User currentUser = FirebaseAuth.instance.currentUser!;
    UserModel newUser = UserModel(
      userId: userId,
      firstName: firstName,
      lastName: lastName,
      email: email,
      password: password,
      phoneNumber: phoneNumber,
    );
    await FirebaseFirestore.instance
        .collection('user')
        .doc(currentUser.uid)
        .set(newUser.toJson());
  }

  Future<bool> signOutUser({
    required BuildContext context,
  }) async {
    showDialog(
        context: context,
        builder: (context) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        });
    try {
      await FirebaseAuth.instance.signOut();
      Navigator.pop(context);
      return true;
    } on FirebaseAuthException catch (e) {
      print(e);
      return false;
    }
  }

  Future<UserModel> getUserInfo({required String userId}) async {
    try {
      QuerySnapshot querySnapshot = await FirebaseFirestore.instance
          .collection("user")
          .where("user_id", isEqualTo: userId)
          .get();
      if (querySnapshot.docs.isNotEmpty) {
        DocumentSnapshot document = querySnapshot.docs.first;
        UserModel userModel = UserModel.fromSnap(document);
        print("success");
        return userModel;
      } else {
        print("No documents found");
        return UserModel();
      }
    } catch (e) {
      print("fail");
      print(e);
      return UserModel();
    }
  }

  Future<void> editUserInfo({
    required String userId,
    required String firstName,
    required String lastName,
    required String email,
    required String phoneNumber,
    required BuildContext context,
  }) async {
    try {
      await FirebaseFirestore.instance.collection("user").doc(userId).update({
        "first_name": firstName,
        "last_name": lastName,
        "email": email,
        "phone_number": phoneNumber,
      });
      final snackBar = SnackBar(
        backgroundColor: Colors.green,
        content: const Row(
          children: [
            Icon(
              Icons.verified,
              color: Colors.white,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Update Success',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        action: SnackBarAction(
          label: '',
          onPressed: () {},
        ),
      );
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } catch (e) {
      print("fail");
      print(e);
    }
  }

  Future<void> addContactUsMesssage({
    required BuildContext context,
    required String description,
  }) async {
    try {
      User currentUser = FirebaseAuth.instance.currentUser!;
      await FirebaseFirestore.instance.collection('contactUs').add({
        'user_id': currentUser.uid,
        'email': currentUser.email,
        'description': description,
      });
      final snackBar = SnackBar(
        backgroundColor: Colors.green,
        content: const Row(
          children: [
            Icon(
              Icons.verified,
              color: Colors.white,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Update Success',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        action: SnackBarAction(
          label: '',
          onPressed: () {},
        ),
      );
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } catch (e) {
      print("fail");
      print(e);
    }
  }

  Future<void> addFeedbackUser({
    required BuildContext context,
    required String generalFeedbackComment,
    required String productQualityComment,
    required String deliveryServiceComment,
  }) async {
    try {
      User currentUser = FirebaseAuth.instance.currentUser!;
      await FirebaseFirestore.instance.collection('Feedback').add({
        'user_id': currentUser.uid,
        'email': currentUser.email,
        'general_feedback_comment': generalFeedbackComment,
        'delivery_service_comment': deliveryServiceComment,
        'product_quality_comment': productQualityComment,
      });
      final snackBar = SnackBar(
        backgroundColor: Colors.green,
        content: const Row(
          children: [
            Icon(
              Icons.verified,
              color: Colors.white,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Youre Feedback uploaded',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        action: SnackBarAction(
          label: '',
          onPressed: () {},
        ),
      );
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } catch (e) {
      print("fail");
      print(e);
    }
  }

  Future<void> addAddressUser({
    required BuildContext context,
    required String firstName,
    required String lastName,
    required String phoneNumber,
    required String addressdetails,
    required String zone,
  }) async {
    try {
      User currentUser = FirebaseAuth.instance.currentUser!;
      await FirebaseFirestore.instance.collection('Address').add({
        'user_id': currentUser.uid,
        'first_name': firstName,
        'last_name': lastName,
        'phone_number': phoneNumber,
        'zone': zone,
        'address_details': addressdetails,
      });
      final snackBar = SnackBar(
        backgroundColor: Colors.green,
        content: const Row(
          children: [
            Icon(
              Icons.verified,
              color: Colors.white,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Youre Address uploaded',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        action: SnackBarAction(
          label: '',
          onPressed: () {},
        ),
      );
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } catch (e) {
      print("fail");
      print(e);
    }
  }

  Future<List<AddressModel>> getAddressUser() async {
    List<AddressModel> addressList = [];
    try {
      User currentUser = FirebaseAuth.instance.currentUser!;
      QuerySnapshot querySnapshot = await FirebaseFirestore.instance
          .collection("Address")
          .where('user_id', isEqualTo: currentUser.uid)
          .get();
      if (querySnapshot.docs.isNotEmpty) {
        addressList =
            querySnapshot.docs.map((e) => AddressModel.fromSnap(e)).toList();
        print("success");
        return addressList;
      } else {
        print("No documents found");
        return addressList;
      }
    } catch (e) {
      print("fail");
      print(e);
      return addressList;
    }
  }
}
