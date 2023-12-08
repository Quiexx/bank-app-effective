import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'AppColors.dart';

class InterestsWidget extends StatelessWidget {
  const InterestsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 30, left: 16, right: 16),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Интересы",
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
                "Мы подбираем истории и предложения по темам, которые вам нравятся",
                style: TextStyle(
                    fontFamily: "SF Pro Display",
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.normal,
                    color: AppColors.textSecondary,
                    fontSize: 14),
              ))
            ],
          ),
          SizedBox(height: 8),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              Chip(title: "Еда"),
              Chip(title: "Саморазвитие"),
              Chip(title: "Технологии"),
              Chip(title: "Дом"),
              Chip(title: "Досуг"),
              Chip(title: "Забота о себе"),
              Chip(title: "Наука")
            ],
          )
        ],
      ),
    );
  }
}

class Chip extends StatelessWidget {
  const Chip({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: AppColors.chips
      ),
      padding: const EdgeInsets.only(top: 7.0, bottom: 7.0, left: 12, right: 12),
      child: Text(
        title,
        style: const TextStyle(
            fontFamily: "SF Pro Display",
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.normal,
            color: AppColors.textPrimary,
            fontSize: 14),
      ),
    );
  }
}
