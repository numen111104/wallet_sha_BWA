import 'package:flutter/material.dart';
import 'package:wallet_sha/shared/methods.dart';
import 'package:wallet_sha/shared/theme.dart';
import 'package:wallet_sha/ui/widgets/home_service.dart';
import 'package:wallet_sha/ui/widgets/home_user_items.dart';
import 'package:wallet_sha/ui/widgets/latest_transactions.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 6,
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        color: whiteColor,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: whiteColor,
          elevation: 0,
          selectedItemColor: blueColor,
          unselectedItemColor: blackColor,
          showUnselectedLabels: true,
          showSelectedLabels: true,
          selectedLabelStyle: blueTextStyle.copyWith(
            fontSize: 10,
            fontWeight: medium,
          ),
          unselectedLabelStyle: blackTextStyle.copyWith(
            fontSize: 10,
            fontWeight: medium,
          ),
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/ic_overview.png',
                color: blueColor,
                width: 20,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/ic_history.png',
                width: 20,
              ),
              label: 'History',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/ic_statistic.png',
                width: 20,
              ),
              label: 'Statistic',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/ic_reward.png',
                width: 20,
              ),
              label: 'Reward',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: purpleColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        child: Image.asset(
          'assets/ic_plus_circle.png',
          width: 24,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          buildProfile(),
          buildWalletCard(),
          buildLevel(),
          buildService(),
          buildLatestTransaction(),
          buildSendAgain(),
        ],
      ),
    );
  }

  Widget buildProfile() {
    return Container(
      margin: const EdgeInsets.only(
        top: 40,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Howdy',
                style: greyTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 2),
              Text(
                'Numenide',
                style: blackTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: semiBold,
                ),
              ),
            ],
          ),
          Container(
            width: 60,
            height: 60,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage(
                    'assets/img_profile.png',
                  ),
                  fit: BoxFit.cover),
            ),
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                width: 16,
                height: 16,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: whiteColor,
                ),
                child: Center(
                  child: Icon(
                    Icons.check_circle,
                    color: blueCeklist,
                    size: 16,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildWalletCard() {
    return Container(
      width: double.infinity,
      height: 246,
      margin: const EdgeInsets.only(
        top: 30,
      ),
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            'assets/img_bg_card.png',
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Nu'man Nasyar MZ",
            style: whiteTextStyle.copyWith(
              fontSize: 18,
              fontWeight: medium,
            ),
          ),
          const SizedBox(height: 28),
          Text(
            '**** **** **** 0879',
            style: whiteTextStyle.copyWith(
              fontSize: 18,
              fontWeight: medium,
              letterSpacing: 6,
            ),
          ),
          const SizedBox(height: 26),
          Text(
            'Balance',
            style: whiteTextStyle.copyWith(
              fontSize: 14,
            ),
          ),
          Text(formatCurrency(824329),
              style: whiteTextStyle.copyWith(
                fontSize: 24,
                fontWeight: semiBold,
              )),
        ],
      ),
    );
  }

  Widget buildLevel() => Container(
        margin: const EdgeInsets.only(top: 20),
        padding: const EdgeInsets.all(22),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: whiteColor,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Level 10',
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
                const Spacer(),
                Text(
                  '82% ',
                  style: greenTextStyle.copyWith(
                    fontWeight: semiBold,
                  ),
                ),
                Text(
                  'of ${formatCurrency(1000000)}',
                  style: blackTextStyle.copyWith(fontWeight: semiBold),
                )
              ],
            ),
            const SizedBox(height: 10),
            ClipRRect(
                borderRadius: BorderRadius.circular(55),
                child: LinearProgressIndicator(
                  value: 0.82,
                  minHeight: 5,
                  valueColor: AlwaysStoppedAnimation(greenColor),
                  backgroundColor: lightBackgroundColor,
                ))
          ],
        ),
      );

  Widget buildService() => Container(
        margin: const EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Do Something",
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
            const SizedBox(height: 14),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HomeServiceItem(
                    imageUrl: 'assets/ic_topup.png',
                    title: 'Top Up',
                    onTap: () {}),
                HomeServiceItem(
                    imageUrl: 'assets/ic_send.png',
                    title: 'Send',
                    onTap: () {}),
                HomeServiceItem(
                    imageUrl: 'assets/ic_withdraw.png',
                    title: 'Withdraw',
                    onTap: () {}),
                HomeServiceItem(
                    imageUrl: 'assets/ic_more.png',
                    title: 'More',
                    onTap: () {}),
              ],
            )
          ],
        ),
      );

  Widget buildLatestTransaction() => Container(
        margin: const EdgeInsets.only(
          top: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Latest Transactions',
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
            const SizedBox(height: 14),
            Container(
              width: double.infinity,
              height: 340,
              padding: const EdgeInsets.all(22),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: whiteColor,
              ),
              child: ListView(
                children: const <Widget>[
                  LatestTranscactionsItem(
                      imageUrl: 'assets/ic_transaction_cat1.png',
                      title: "Top Up",
                      time: 'Just now',
                      amount: 2329,
                      simbol: '+'),
                  LatestTranscactionsItem(
                      imageUrl: 'assets/ic_transaction_cat2.png',
                      title: "Cashback",
                      time: 'Yesterday',
                      amount: 5300,
                      simbol: '+'),
                  LatestTranscactionsItem(
                      imageUrl: 'assets/ic_transaction_cat3.png',
                      title: "Withdraw",
                      time: 'Yesterday',
                      amount: 200,
                      simbol: '-'),
                  LatestTranscactionsItem(
                      imageUrl: 'assets/ic_transaction_cat1.png',
                      title: "Topup",
                      time: '2 days ago',
                      amount: 50,
                      simbol: '+'),
                  LatestTranscactionsItem(
                      imageUrl: 'assets/ic_transaction_cat2.png',
                      title: "Cashback",
                      time: '3 days ago',
                      amount: 10,
                      simbol: '+'),
                  LatestTranscactionsItem(
                      imageUrl: 'assets/ic_transaction_cat4.png',
                      title: "Send",
                      time: '4 days ago',
                      amount: 100,
                      simbol: '-'),
                  LatestTranscactionsItem(
                      imageUrl: 'assets/ic_transaction_cat5.png',
                      title: "Shopping",
                      time: '5 days ago',
                      amount: 80,
                      simbol: '-'),
                  LatestTranscactionsItem(
                      imageUrl: 'assets/ic_transaction_cat3.png',
                      title: "Withdraw",
                      time: '6 days ago',
                      amount: 150,
                      simbol: '-'),
                  LatestTranscactionsItem(
                      imageUrl: 'assets/ic_transaction_cat1.png',
                      title: "Topup",
                      time: '1 week ago',
                      amount: 30,
                      simbol: '+'),
                  LatestTranscactionsItem(
                      imageUrl: 'assets/ic_transaction_cat2.png',
                      title: "Cashback",
                      time: '2 weeks ago',
                      amount: 15,
                      simbol: '+'),
                  LatestTranscactionsItem(
                      imageUrl: 'assets/ic_transaction_cat4.png',
                      title: "Send",
                      time: '3 weeks ago',
                      amount: 120,
                      simbol: '-'),
                  LatestTranscactionsItem(
                      imageUrl: 'assets/ic_transaction_cat5.png',
                      title: "Shopping",
                      time: '4 weeks ago',
                      amount: 90,
                      simbol: '-'),
                  LatestTranscactionsItem(
                      imageUrl: 'assets/ic_transaction_cat3.png',
                      title: "Withdraw",
                      time: '5 weeks ago',
                      amount: 180,
                      simbol: '-'),
                  LatestTranscactionsItem(
                      imageUrl: 'assets/ic_transaction_cat1.png',
                      title: "Topup",
                      time: '6 weeks ago',
                      amount: 40,
                      simbol: '+'),
                  LatestTranscactionsItem(
                      imageUrl: 'assets/ic_transaction_cat2.png',
                      title: "Cashback",
                      time: '7 weeks ago',
                      amount: 20,
                      simbol: '+'),
                  LatestTranscactionsItem(
                      imageUrl: 'assets/ic_transaction_cat4.png',
                      title: "Send",
                      time: '2 months ago',
                      amount: 130,
                      simbol: '-'),
                  LatestTranscactionsItem(
                      imageUrl: 'assets/ic_transaction_cat5.png',
                      title: "Shopping",
                      time: '3 months ago',
                      amount: 100,
                      simbol: '-'),
                ],
              ),
            ),
          ],
        ),
      );

  Widget buildSendAgain() => Container(
        margin: const EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Send Again",
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
            const SizedBox(height: 14),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  HomeUserItem(
                      imageUrl: 'assets/img_friend1.png', username: 'yulia'),
                  HomeUserItem(
                      imageUrl: 'assets/img_friend2.png', username: 'niki'),
                  HomeUserItem(
                      imageUrl: 'assets/img_friend3.png', username: 'dicky'),
                  HomeUserItem(
                      imageUrl: 'assets/img_friend4.png', username: 'kiya'),
                ],
              ),
            )
          ],
        ),
      );
}
