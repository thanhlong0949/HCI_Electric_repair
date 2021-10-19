import 'package:elect_repair/config/themes.dart';
import 'package:elect_repair/screens/repairman/dashbroad/widgets/request.dart';
import 'package:flutter/material.dart';

class RequestData {
  static Future<Widget> getRequest() async {
    late Widget widget;
    await Future.delayed(
      const Duration(seconds: 10),
      () {
        widget = Center(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: 'Đã tìm thấy yêu cầu sửa chữa \nphù hợp với bạn',
                    style: h4.copyWith(
                      fontSize: 19,
                    ),
                    children: [
                      TextSpan(
                        text: ' (khoảng cách 3km)',
                        style: h4.copyWith(
                          fontSize: 16,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                flex: 1,
                child: RequestContainer(
                  onTapNext: () {},
                ),
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        );
      },
    );
    return widget;
  }
}
