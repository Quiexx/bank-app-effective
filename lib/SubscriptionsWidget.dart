import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'AppColors.dart';

class SubscriptionsWidget extends StatelessWidget {
  const SubscriptionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 16, right: 16),
      child: Column(
        children: <Widget>[
          const Row(
            children: [
              Text(
                "У вас подключено",
                style: TextStyle(
                    fontFamily: "SF Pro Display",
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold,
                    color: AppColors.textPrimary,
                    fontSize: 20),
              )
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          const Row(
            children: [
              Expanded(
                  child: Text(
                "Подписки, автоплатежи и сервисы на которыe вы подписались",
                style: TextStyle(
                    fontFamily: "SF Pro Display",
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.normal,
                    color: AppColors.textSecondary,
                    fontSize: 14),
              ))
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 150,
            child: ListView(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
                scrollDirection: Axis.horizontal,
                children: const <Widget>[
                  SubscriptionCard(
                      title: "СберПрайм",
                      image: AssetImage("images/mc_36_sberprime.png"),
                      subtitle: "Платёж 9 июля",
                      text: "199 ₽ в месяц"),
                  SizedBox(
                    width: 8,
                  ),
                  SubscriptionCard(
                      title: "Переводы",
                      image: AssetImage("images/ic_36_percent_fill.png"),
                      subtitle: "Автопродление 21 августа",
                      text: "199 ₽ в месяц")
                ]),
          )
        ],
      ),
    );
  }
}

class SubscriptionCard extends StatelessWidget {
  const SubscriptionCard(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.image,
      required this.text});

  final String title;
  final String subtitle;
  final AssetImage image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minWidth: 216),
      decoration: BoxDecoration(
          color: AppColors.backGroundPrimary,
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 5,
              offset: const Offset(0, 0),
            ),
          ]),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SizedBox(width: 36, height: 36, child: Image(image: image)),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  title,
                  style: const TextStyle(
                      fontFamily: "SF Pro Display",
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w500,
                      color: AppColors.textPrimary,
                      fontSize: 16),
                )
              ],
            ),
            Spacer(),
            Row(
              children: [
                Text(
                  subtitle,
                  style: const TextStyle(
                      fontFamily: "SF Pro Display",
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w500,
                      color: AppColors.textPrimary,
                      fontSize: 14),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  text,
                  style: const TextStyle(
                      fontFamily: "SF Pro Display",
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w500,
                      color: AppColors.textSecondary,
                      fontSize: 14),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
