import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:speedy_buy_senior/models/app_model.dart';

class AppService {
  Future<AppModel> getAppInfo() async {
    try {
      QuerySnapshot querySnapshot =
          await FirebaseFirestore.instance.collection("AppInfo").get();
      if (querySnapshot.docs.isNotEmpty) {
        DocumentSnapshot document = querySnapshot.docs.first;
        AppModel appModel = AppModel.fromSnap(document);
        print(appModel);
        print("success");
        return appModel;
      } else {
        print("No documents found");
        return AppModel();
      }
    } catch (e) {
      print("fail");
      print(e);
      return AppModel();
    }
  }
}
