import 'package:coupon_uikit/coupon_uikit.dart';
import 'package:flutter/material.dart';
import 'package:speedy_buy_senior/constant.dart';

class CouponScreen extends StatefulWidget {
  const CouponScreen({super.key});

  @override
  State<CouponScreen> createState() => _CouponScreenState();
}

class _CouponScreenState extends State<CouponScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: mainColor,
        title: const Text('Coupon',style: TextStyle(
          color: Colors.white,
        ),),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: SizedBox(
              width: double.maxFinite,
              child: Image.asset(
                'assets/images/speedy_buy_coupon.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            flex: 9,
            child: ListView.separated(
              separatorBuilder: (context, index) {
                return const SizedBox(
                  height: 5,
                );
              },
              itemCount: 5,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: CouponCard(
                      height: 150,
                      curveAxis: Axis.vertical,
                      firstChild: Container(
                        color: mainColor,
                      ),
                      secondChild: Container(
                        color: greyColor,
                      )),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
