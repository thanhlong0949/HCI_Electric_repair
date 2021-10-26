import 'package:elect_repair/config/paths.dart';
import 'package:elect_repair/config/themes.dart';
import 'package:elect_repair/widgets/circle_icon_button.dart';
import 'package:flutter/material.dart';

class TopNavigationBar extends StatelessWidget {
  const TopNavigationBar({
    Key? key,
    required this.canPop,
    required this.onTap,
  }) : super(key: key);
  final bool canPop;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        backgroundImage(imagePath + sweetHomePNG),
        backgroundColor(primaryLightColorTransparent),
        Visibility(
          visible: canPop,
          child: Align(
            alignment: Alignment.centerLeft,
            child: CircleIconButton(
              onTap: onTap,
              margin: const EdgeInsets.only(left: 10),
              iconData: Icons.arrow_back_ios,
              size: 30,
              iconColor: Colors.white,
              backgroundColor: primaryLightColorTransparent,
            ),
          ),
        ),
        Center(
          child: Text(
            'Lịch sử yêu cầu sửa chữa',
            style: h5.copyWith(color: Colors.white),
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: const EdgeInsets.only(
              right: 10,
            ),
            child: notificationButton(() {}),
          ),
        )
      ],
    );
  }

  notificationButton(VoidCallback onTap) => InkWell(
        onTap: onTap,
        child: SizedBox(
          height: 27,
          width: 27,
          child: Stack(
            children: [
              const Icon(
                Icons.notifications_active_outlined,
                color: primaryLightColor,
                size: 25,
              ),
              Align(
                alignment: Alignment.topRight,
                child: CircleAvatar(
                  backgroundColor: Colors.blue,
                  radius: 7,
                  child: Text(
                    '01',
                    style: h7.copyWith(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      );

  backgroundImage(String photoUrl) => Container(
        height: 50,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(photoUrl),
            fit: BoxFit.cover,
          ),
        ),
      );

  backgroundColor(Color color) => Container(
        height: 50,
        decoration: BoxDecoration(
          color: color,
        ),
      );
}
