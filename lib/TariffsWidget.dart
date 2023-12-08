import 'package:flutter/material.dart';

import 'AppColors.dart';

class TariffsWidget extends StatelessWidget {
  const TariffsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 30, left: 16, right: 16),
      child: Column(
        children: <Widget>[
          Row(
            children: [
              Text(
                "Тарифы и лимиты",
                style: TextStyle(
                    fontFamily: "SF Pro Display",
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold,
                    color: AppColors.textPrimary,
                    fontSize: 20),
              )
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Expanded(
                  child: Text(
                "Для операций в Сбербанк Онлайн",
                style: TextStyle(
                    fontFamily: "SF Pro Display",
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.normal,
                    color: AppColors.textSecondary,
                    fontSize: 14),
              ))
            ],
          ),
          SizedBox(
            height: 20,
          ),
          TariffsCard(
              title: "Изменить суточный лимит",
              subtitle: "На платежи и переводы",
              image: AssetImage("images/ic_36_speedometer.png")),
          Divider(indent: 50),
          TariffsCard(
              title: "Переводы без комиссии",
              subtitle: "Показать остаток в этом месяце",
              image: AssetImage("images/ic_36_percent.png")),
          Divider(indent: 50),
          TariffsCard(
              title: "Информация о тарифах и лимитах",
              subtitle: "",
              image: AssetImage("images/ic_36_arrows_forward_back.png"))
        ],
      ),
    );
  }
}

class TariffsCard extends StatelessWidget {
  const TariffsCard(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.image});

  final String title;
  final String subtitle;
  final AssetImage image;

  @override
  Widget build(BuildContext context) {
    Widget content;
    if (subtitle.isEmpty) {
      content = Expanded(
        child: Text(
          title,
          style: const TextStyle(
              fontFamily: "SF Pro Display",
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.normal,
              color: AppColors.textPrimary,
              fontSize: 16),
        ),
      );
    } else {
      content = Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
                fontFamily: "SF Pro Display",
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.normal,
                color: AppColors.textPrimary,
                fontSize: 16),
          ),
          Text(
            subtitle,
            style: const TextStyle(
                fontFamily: "SF Pro Display",
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.normal,
                color: AppColors.textSecondary,
                fontSize: 14),
          )
        ],
      );
    }

    return Padding(
      padding: const EdgeInsets.only(left: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(image: image),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: content,
            ),
          ),
          const SizedBox(width: 50),
          const Icon(
            Icons.arrow_forward_ios,
            color: AppColors.textSecondary,
            size: 12,
          )
        ],
      ),
    );
  }
}
