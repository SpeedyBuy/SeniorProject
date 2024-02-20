import 'package:flutter/material.dart';
import 'package:speedy_buy_senior/constant.dart';
import 'package:speedy_buy_senior/models/address_model.dart';

// ignore: must_be_immutable
class AddressComponent extends StatelessWidget {
  AddressComponent({
    super.key,
    required this.addressList,
    required this.index,
  });

  List<AddressModel> addressList = [];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.all(15),
      height: 210,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            addressList[index].zone,
            style:const  TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.6,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
        const   Divider(
            thickness: 0.5,
            color: greyColor,
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
             const  Text(
                'Address: ',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.6,
                  color: greyColor,
                ),
              ),
              Text(
                addressList[index].addressDetails,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.6,
                ),
              ),
            ],
          ),
         const  SizedBox(
            height: 10,
          ),
          Row(
            children: [
             const  Text(
                'Phone Number: ',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.6,
                  color: greyColor,
                ),
              ),
              Text(
              addressList[index].phoneNumber,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.6,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
             const  Text(
                'Name: ',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.6,
                  color: greyColor,
                ),
              ),
              Text(
                '${addressList[index].firstName} ${addressList[index].lastName}',
                style:const  TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.6,
                ),
              ),
            ],
          ),
         const  SizedBox(
            height: 5,
          ),
         const  Divider(
            thickness: 0.5,
            color: greyColor,
          ),
        const   SizedBox(
            height: 5,
          ),
        const   Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.edit_location_alt,
                    size: 25,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 0.8),
                    child: Text(
                      'Edit',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.6,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 30,
              ),
              Text('|'),
              SizedBox(
                width: 30,
              ),
              Row(
                children: [
                  Icon(
                    Icons.delete,
                    size: 25,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 0.8),
                    child: Text(
                      'Remove',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.6,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
