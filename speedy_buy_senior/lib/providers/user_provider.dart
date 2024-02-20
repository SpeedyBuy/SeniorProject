import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:speedy_buy_senior/models/address_model.dart';
import 'package:speedy_buy_senior/models/user_model.dart';
import 'package:speedy_buy_senior/services/user_service.dart';

class UserProvider with ChangeNotifier {
  UserService _userService = UserService();
  UserModel userModel = UserModel();
  List<AddressModel> addressList = [];
  bool success = false;
  bool msg = false;
  bool loading = false;
  String firstCharName = '';
  String lastCharName = '';
  Future<void> signInUser({
    required BuildContext context,
    required String email,
    required String password,
  }) async {
    loading = true;
    notifyListeners();
    msg = await _userService.signInUser(
        context: context, email: email, password: password);
    loading = false;
    notifyListeners();
  }

  Future<void> signOutUser({
    required BuildContext context,
  }) async {
    await _userService.signOutUser(context: context);
    notifyListeners();
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
    loading = true;
    notifyListeners();
    await _userService.signUpUser(
      context: context,
      password: password,
      email: email,
      firstName: firstName,
      lastName: lastName,
      confirmPassowrd: confirmPassowrd,
      phoneNumber: phoneNumber,
    );
    loading = false;
    notifyListeners();
  }

  Future<UserModel> getUserInfo() async {
    String currentUserId = FirebaseAuth.instance.currentUser!.uid;
    UserModel currentUser =
        await _userService.getUserInfo(userId: currentUserId);
    firstCharName =
        currentUser.firstName[0].isNotEmpty ? currentUser.firstName[0] : '';
    lastCharName =
        currentUser.lastName[0].isNotEmpty ? currentUser.lastName[0] : '';
    notifyListeners();
    return currentUser;
  }

  Future<void> editUserInfo({
    required String firstName,
    required String lastName,
    required String email,
    required String phoneNumber,
    required BuildContext context,
  }) async {
    loading = true;
    notifyListeners();
    String currentUserId = FirebaseAuth.instance.currentUser!.uid;
    await _userService.editUserInfo(
      firstName: firstName,
      lastName: lastName,
      email: email,
      phoneNumber: phoneNumber,
      userId: currentUserId,
      context: context,
    );
    loading = false;
    notifyListeners();
  }

  Future<void> addContactUsMesssage({
    required BuildContext context,
    required String description,
  }) async {
    loading = true;
    notifyListeners();
    await _userService.addContactUsMesssage(
      description: description,
      context: context,
    );
    loading = false;
    notifyListeners();
  }

  Future<void> addFeedbackUser({
    required BuildContext context,
    required String generalFeedbackComment,
    required String productQualityComment,
    required String deliveryServiceComment,
  }) async {
    loading = true;
    notifyListeners();
    await _userService.addFeedbackUser(
      generalFeedbackComment: generalFeedbackComment,
      deliveryServiceComment: deliveryServiceComment,
      productQualityComment: productQualityComment,
      context: context,
    );
    loading = false;
    notifyListeners();
  }

  Future<void> addAddressUser({
    required BuildContext context,
    required String firstName,
    required String lastName,
    required String phoneNumber,
    required String addressdetails,
    required String zone,
  }) async {
    loading = true;
    notifyListeners();
    await _userService.addAddressUser(
      firstName: firstName,
      lastName: lastName,
      phoneNumber: phoneNumber,
      addressdetails: addressdetails,
      zone: zone,
      context: context,
    );
    loading = false;
    notifyListeners();
  }

  Future<void> getAddressUser() async {
    addressList = await _userService.getAddressUser();
    inspect(addressList);
    notifyListeners();
  }
}
