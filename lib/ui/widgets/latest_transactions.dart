import 'package:flutter/material.dart';
import 'package:wallet_sha/shared/methods.dart';
import 'package:wallet_sha/shared/theme.dart';

class LatestTranscactionsItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String time;
  final String? simbol;
  final double amount;
  final VoidCallback? onTap;
  const LatestTranscactionsItem(
      {super.key,
      required this.imageUrl,
      required this.title,
      required this.time,
      required this.amount,
      this.onTap,
      this.simbol});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 20,
      ),
      child: Row(
        children: [
          Image.asset(
            imageUrl,
            width: 48,
          ),
          const SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: blackTextStyle.copyWith(
                      fontWeight: semiBold, fontSize: 16),
                ),
                Text(
                  time,
                  style: greyTextStyle.copyWith(fontSize: 12),
                ),
              ],
            ),
          ),
          Text(
            formatCurrency(amount, simbol: "${simbol!} \$"),
            style: blackTextStyle.copyWith(fontWeight: semiBold, fontSize: 16),
          )
        ],
      ),
    );
  }
}

