import 'package:elect_repair/config/paths.dart';
import 'package:elect_repair/config/themes.dart';
import 'package:elect_repair/screens/customer/request_detail/request_detail.dart';
import 'package:elect_repair/screens/customer/request_detail/widgets/alert.dart';
import 'package:elect_repair/widgets/circle_icon_button.dart';
import 'package:flutter/material.dart';

class TopNavigationBar extends StatelessWidget {
  const TopNavigationBar({Key? key, required this.isCusRequest})
      : super(key: key);
  final bool isCusRequest;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        backgroundImage(imagePath + sweetHomePNG),
        backgroundColor(primaryLightColorTransparent),
        Align(
          alignment: Alignment.centerLeft,
          child: Row(
            children: [
              CircleIconButton(
                onTap: () {
                  Navigator.of(context).pop();
                },
                margin: const EdgeInsets.only(left: 10),
                iconData: Icons.arrow_back_ios,
                size: 30,
                iconColor: Colors.white,
                backgroundColor: primaryLightColorTransparent,
              ),
              // isCusRequest
              //     ? CircleIconButton(
              //         onTap: () {
              //           showDialog(
              //               context: context,
              //               builder: (context) =>
              //                   const ShowAlertAndAutoDismiss());
              //         },
              //         margin: const EdgeInsets.only(left: 10),
              //         iconData: Icons.arrow_forward_ios,
              //         size: 30,
              //         iconColor: Colors.white,
              //         backgroundColor: primaryLightColorTransparent,
              //       )
              //     : const SizedBox(),
            ],
          ),
        ),
        Center(
          child: Text(
            'Thông tin yêu cầu',
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
        ),
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
