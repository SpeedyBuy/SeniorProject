import 'package:flutter/material.dart';

import '../../constant.dart';

class AboutUsScreen extends StatefulWidget {
  const AboutUsScreen({super.key});

  @override
  State<AboutUsScreen> createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: mainColor,
        title: const Text('AboutUs',style: TextStyle(
          color: Colors.white,
        ),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 110,
              width: 110,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[300],
                border: Border.all(
                  color: const Color.fromARGB(255, 189, 189, 189),
                  width: 0.5,
                ),
              ),
              child: Center(
                child: Image.asset(
                  'assets/images/logo_speedy_buy.png',
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Text(
                    'Clothing',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Text(
                    'Electronics',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Text(
                    'Home & Kitchen',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Text(
                    'Sports & Outdoors',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Divider(
              thickness: 8,
              color: Colors.grey[300],
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              children: [
                Icon(
                  Icons.store,
                  size: 30,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'About Us!',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.6,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Your best choice!',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.6,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Your can Shop, Save & Smile.',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                letterSpacing: 0.6,
                color: greyColor,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Divider(
              thickness: 8,
              color: Colors.grey[300],
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              children: [
                Icon(
                  Icons.price_change,
                  size: 30,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Pricing',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.6,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Unlimited Offers!',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.6,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'We bring you daily offers helping you save money, time and buy better products',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                letterSpacing: 0.6,
                color: greyColor,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              height: 20,
            ),
            Divider(
              thickness: 8,
              color: Colors.grey[300],
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              children: [
                Icon(
                  Icons.payments_sharp,
                  size: 30,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Payment Methods',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.6,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 110,
              width: 110,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[300],
                border: Border.all(
                  color: const Color.fromARGB(255, 189, 189, 189),
                  width: 0.5,
                ),
              ),
              child: Center(
                child: Image.asset(
                  'assets/images/payment_icon.png',
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Center(
              child: Text(
                'Cash',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Divider(
              thickness: 8,
              color: Colors.grey[300],
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              children: [
                Icon(
                  Icons.delivery_dining,
                  size: 30,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Delivery',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.6,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Instant or scheduled delivery',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.6,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'We strive to deliver your orders in less than 3 days or at your own convenience',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                letterSpacing: 0.6,
                color: greyColor,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Divider(
              thickness: 8,
              color: Colors.grey[300],
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              children: [
                Icon(
                  Icons.access_time_outlined,
                  size: 30,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Opening Hours',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.6,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Monday'),
                Text('8:00 AM - 5:00 PM'),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Tuesday'),
                Text('8:00 AM - 5:00 PM'),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Wednesday'),
                Text('8:00 AM - 5:00 PM'),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Thursday'),
                Text('8:00 AM - 5:00 PM'),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Friday'),
                Text('8:00 AM - 5:00 PM'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
