import 'package:elect_repair/config/themes.dart';
import 'package:flutter/material.dart';

class RecentRequest extends StatelessWidget {
  const RecentRequest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Yêu cầu sửa chữa \ntruyền hình gần bạn',
                  style: h5.copyWith(
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                InkWell(
                  child: Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Text(
                        'Xem tất cả',
                        style: h5.copyWith(
                          color: primaryColor,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Icon(
                          Icons.arrow_forward,
                          color: primaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Wrap(
                spacing: 28,
                children: const [],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
