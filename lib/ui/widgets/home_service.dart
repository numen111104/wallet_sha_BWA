import 'package:flutter/material.dart';
import 'package:wallet_sha/shared/theme.dart';

class HomeServiceItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final VoidCallback? onTap;
  const HomeServiceItem(
      {super.key, required this.imageUrl, required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(20),
          splashColor: blueCeklist,
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: whiteColor,
              boxShadow: [
                BoxShadow(
                  color: blackColor.withOpacity(0.1),
                  blurRadius: 2,
                  offset: const Offset(0, 2),
                )
              ],
            ),
            child: Center(
              child: Image.asset(
                imageUrl,
                width: 26,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          title,
          style: blackTextStyle.copyWith(fontWeight: medium , fontSize: 14),
        )
      ],
    );
  }
}
