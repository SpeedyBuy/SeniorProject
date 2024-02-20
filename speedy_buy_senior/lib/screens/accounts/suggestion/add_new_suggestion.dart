import 'package:flutter/material.dart';
import 'package:speedy_buy_senior/constant.dart';

class AddNewSuggestion extends StatefulWidget {
  const AddNewSuggestion({super.key});

  @override
  State<AddNewSuggestion> createState() => _AddNewSuggestionState();
}

class _AddNewSuggestionState extends State<AddNewSuggestion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: mainColor,
        title: const Text(
          'Add Suggestion',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            letterSpacing: 1,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Product Name',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                letterSpacing: 0.6,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 45,
              padding: const EdgeInsets.only(left: 10, right: 10),
              width: double.maxFinite,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: greyColor,
                  width: 0.5,
                ),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Please enter product name",
                  hintStyle: TextStyle(
                    color: Colors.black87,
                    fontSize: 14,
                    letterSpacing: 1,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Product Description',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                letterSpacing: 0.6,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 130,
              padding: const EdgeInsets.only(left: 10, right: 10),
              width: double.maxFinite,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: greyColor,
                  width: 0.5,
                ),
              ),
              child: const TextField(
                maxLines: 6,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText:
                      "We take your feedback seriously. While we may not be able to respond personally, rest assured that we carefully consider each submission. If you have a suggestion for us, please provide relevant details such as order numbers and product links to help us better understand and address your feedback.",
                  hintStyle: TextStyle(
                    color: Colors.black87,
                    fontSize: 12,
                    letterSpacing: 0.5,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 120,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 211, 211, 211),
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.cloud_upload_rounded,
                    color: Colors.black87,
                    size: 50,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Click here to upload',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        letterSpacing: 0.6,
                        color: Colors.black87),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "You can upload a maximum of 2 files; individual image sizes should not exceed 1 MB, and supported file formats are PNG and JPG.",
              style: TextStyle(
                color: Colors.grey[700],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              height: 50,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: blueColor,
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Center(
                child: Text(
                  "Submit",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
