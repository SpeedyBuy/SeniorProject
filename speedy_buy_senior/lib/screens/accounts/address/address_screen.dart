import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'package:speedy_buy_senior/components/address_component.dart';
import 'package:speedy_buy_senior/constant.dart';
import 'package:speedy_buy_senior/providers/user_provider.dart';
import 'package:speedy_buy_senior/screens/accounts/address/add_address_screen.dart';

class AddressScreen extends StatefulWidget {
  const AddressScreen({super.key});

  @override
  State<AddressScreen> createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  bool loading = true;
  Future<void> getAddressUser() async {
    final userProvider = Provider.of<UserProvider>(context, listen: false);
    await userProvider.getAddressUser();
    setState(() {
      loading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    getAddressUser();
  }

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context, listen: true);
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: mainColor,
        title: const Text(
          'My Address',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            letterSpacing: 1,
          ),
        ),
      ),
      body: loading
          ? const Center(
              child: SpinKitPulse(
                color: mainColor,
              ),
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: userProvider.addressList.length,
                    itemBuilder: (context, index) {
                      return AddressComponent(
                        addressList: userProvider.addressList,
                        index: index,
                      );
                    },
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AddAddressScreen(),
                        ));
                  },
                  child: Container(
                    height: 50,
                    margin:
                        const EdgeInsets.only(left: 20, right: 20, bottom: 30),
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      color: blueColor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Center(
                      child: Text(
                        "ADD NEW ADDRESS",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
