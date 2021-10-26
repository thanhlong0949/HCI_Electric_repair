import 'package:elect_repair/screens/customer/request_detail/request_detail.dart';
import 'package:flutter/material.dart';

class ShowAlertAndAutoDismiss extends StatelessWidget {
  const ShowAlertAndAutoDismiss({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 3000)).then((_) {
      showDialog(
        context: context,
        builder: (context) => const AlertDialog(
          title: Center(child: Text('Đã tìm thấy thợ sửa chữa')),
        ),
      );
    });
    Future.delayed(const Duration(milliseconds: 5000)).then((_) {
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const RequestDetail(
                isHistory: false,
                isCusRequest: false,
              )));
    });

    return const AlertDialog(
      title: Center(child: Text('Alo')),
    );
  }
}
