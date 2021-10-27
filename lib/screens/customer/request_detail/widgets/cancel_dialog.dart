import 'package:elect_repair/config/themes.dart';
import 'package:elect_repair/screens/customer/request/customer_request.dart';
import 'package:elect_repair/screens/customer/request_detail/request_detail.dart';
import 'package:flutter/material.dart';

class CancelDialog extends StatefulWidget {
  const CancelDialog({Key? key}) : super(key: key);

  @override
  _CancelDialogState createState() => _CancelDialogState();
}

class _CancelDialogState extends State<CancelDialog> {
  Map<String, bool> issues2 = {
    'Thiết bị hoạt động lại': false,
    'Đang bận': false,
    'Chờ quá lâu': false,
    'Vấn đề khác': false,
  };
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: 300,
      child: AlertDialog(
        title: const Text('Lí do hủy yêu cầu'),
        content: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(
                width: 195,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: issues2.entries
                      .map(
                        (e) => ListTile(
                          leading: Checkbox(
                            value: e.value,
                            checkColor: Colors.white,
                            // shape: RoundedRectangleBorder(
                            //     borderRadius:
                            //         BorderRadius.circular(
                            //             10)),
                            onChanged: (value) => setState(
                              () => issues2[e.key] = value!,
                            ),
                          ),
                          title: Text(
                            e.key,
                            style: h6.copyWith(color: Colors.black),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
              Visibility(
                visible: issues2['Vấn đề khác']!,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      label: Text(
                        'Vấn đề khác',
                        style: h6,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        actions: [
          OutlinedButton(
            style: OutlinedButton.styleFrom(
                primary: Colors.red,
                side: const BorderSide(
                  color: Colors.red,
                )),
            child: const Text(
              "Quay lại",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.green.shade400,
              onPrimary: Colors.black,
            ),
            child: const Text(
              "Hủy yêu cầu",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            onPressed: () {
              createCancelDialog(context);
            },
          ),
        ],
      ),
    );
  }
}

createCancelDialog(BuildContext context) {
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: const Text('Hủy yêu cầu'),
        content: const Text('Bạn chắc chắn muốn hủy yêu cầu ?'),
        actions: [
          OutlinedButton(
            style: OutlinedButton.styleFrom(
                primary: Colors.red,
                side: const BorderSide(
                  color: Colors.red,
                )),
            child: const Text(
              "Hủy",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.green.shade400,
              onPrimary: Colors.black,
            ),
            child: const Text(
              "Xác nhận",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            onPressed: () {
              createConfirmDialog(context);
            },
          ),
        ],
      );
    },
  );
}

createConfirmDialog(BuildContext context) {
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: const Text('Thông báo'),
        content: const Text('Đã hủy yêu cầu thành công'),
        actions: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.green.shade400,
              onPrimary: Colors.black,
            ),
            child: const Text(
              "Về trang chủ",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            onPressed: () {
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                      builder: (context) => const CustomerRequest()),
                  (route) => false);
            },
          ),
        ],
      );
    },
  );
}
