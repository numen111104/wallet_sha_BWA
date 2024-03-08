import 'package:flutter/material.dart';
import 'package:wallet_sha/shared/theme.dart';

class HomeUserItem extends StatelessWidget {
  final String imageUrl;
  final String username;
  const HomeUserItem(
      {super.key, required this.imageUrl, required this.username});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 120,
      margin: const EdgeInsets.only(
        right: 17,
      ),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 45,
            height: 45,
            margin: const EdgeInsets.only(
              top: 22,
            ),
            child: Image.asset(
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 13),
          Text(
            "@$username",
            style: blackTextStyle.copyWith(
              fontSize: 12,
              fontWeight: medium,
            ),
          )
        ],
      ),
    );
  }
}
