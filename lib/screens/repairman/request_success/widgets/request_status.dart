import 'package:elect_repair/config/themes.dart';
import 'package:flutter/material.dart';

class RequestStatus extends StatelessWidget {
  const RequestStatus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            orderStatusDetail(
              statusTitle: 'Xác nhận yêu cầu sửa chữa',
              statusValue: true,
              statusStep: 1,
              isLastStatus: false,
            ),
            orderStatusDetail(
              statusTitle: 'Thợ sửa chữa chấp thuận yêu cầu sửa chữa',
              statusValue: true,
              statusStep: 2,
              isLastStatus: false,
            ),
            orderStatusDetail(
              statusTitle: 'Thợ sửa chữa đã xuất phát và đang trên đường đến',
              statusValue: true,
              statusStep: 3,
              isLastStatus: false,
            ),
            orderStatusDetail(
              statusTitle:
                  'Thợ sửa chữa đã đến nơi và đang trong tiến trình sửa chữa',
              statusValue: true,
              statusStep: 4,
              isLastStatus: false,
            ),
            orderStatusDetail(
              statusTitle: 'Hoàn thành yêu cầu sửa chữa',
              statusValue: false,
              statusStep: 5,
              isLastStatus: true,
            ),
          ],
        ),
      );

  orderStatusDetail(
          {required String statusTitle,
          required bool statusValue,
          required int statusStep,
          required bool isLastStatus}) =>
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Bước ${statusStep.toString()}',
            style: h6.copyWith(
              color: statusValue ? Colors.black : lightGrey,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                CircleAvatar(
                  backgroundColor:
                      statusValue ? primaryColor : primaryLightColor,
                  radius: 6,
                ),
                Container(
                  height: isLastStatus ? 0 : 25,
                  width: 2,
                  color: statusValue ? primaryColor : primaryLightColor,
                )
              ],
            ),
          ),
          Flexible(
            child: Text(
              statusTitle,
              style: h6.copyWith(
                color: statusValue
                    ? const Color(0xFF000000)
                    : const Color(0xFF929292),
              ),
            ),
          ),
        ],
      );
}
