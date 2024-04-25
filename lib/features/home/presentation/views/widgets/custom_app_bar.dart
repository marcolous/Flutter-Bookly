import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 32, right: 32, top: 8),
      child: Row(
        children: [
          SizedBox(
            height: 100,
            width: 100,
            child: Image.asset(AssetsData.logo),
          ),
          const Spacer(),
          const CustomIcon(),
        ],
      ),
    );
  }
}

class CustomIcon extends StatelessWidget {
  const CustomIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        GoRouter.of(context).push(AppRouter.kSearchView);
      },
      icon: const Icon(Icons.search_rounded, color: Colors.white),
      iconSize: 32,
    );
  }
}
