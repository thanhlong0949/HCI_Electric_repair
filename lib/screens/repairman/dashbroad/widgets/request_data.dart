import 'package:elect_repair/config/themes.dart';
import 'package:elect_repair/screens/repairman/dashbroad/widgets/request.dart';
import 'package:flutter/material.dart';

class RequestData {
  static Future<Widget> getRequest() async {
    late Widget widget;
    await Future.delayed(
      const Duration(seconds: 5),
      () {
        widget = Center(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              RichText(
                textAlign: TextAlign.start,
                text: TextSpan(
                  text: 'Đã tìm thấy yêu cầu sửa chữa \nphù hợp với bạn',
                  style: h4.copyWith(
                    fontSize: 21,
                    fontWeight: FontWeight.w500,
                  ),
                  children: [
                    TextSpan(
                      text: ' (khoảng cách 3km)',
                      style: h4.copyWith(
                        fontSize: 16,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Expanded(
                flex: 1,
                child: RequestContainer(),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        );
      },
    );
    return widget;
  }
}
