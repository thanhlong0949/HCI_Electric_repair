import 'package:elect_repair/config/paths.dart';
import 'package:elect_repair/config/themes.dart';
import 'package:elect_repair/screens/repairman/dashbroad/dashboard.dart';
import 'package:elect_repair/screens/repairman/request_done/widgets/top_navigation_bar.dart';
import 'package:elect_repair/widgets/bottom_navigation_bar_admin.dart';
import 'package:flutter/material.dart';

class RequestDone extends StatefulWidget {
  const RequestDone({Key? key}) : super(key: key);

  @override
  State<RequestDone> createState() => _RequestDoneState();
}

class _RequestDoneState extends State<RequestDone> {
  //bool isShowMap = false;
  var isShowDetail = false;
  Map<String, bool> issues1 = {
    'Có tiếng ồn bất thường khi sử dụng': false,
    'Có nốt đen to trên màn hình': false,
    'Tivi bị trắng sáng, không có hình': true,
    'Điều khiển từ xa không hoạt động': false,
  };

  Map<String, bool> issues2 = {
    'Hình ảnh chập chờn không ổn định': true,
    'Tivi tự động tắt liên tục': false,
    'Không thể kết nối thiết bị với mạng': false,
    'Vấn đề khác': false,
  };

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                    height: 50,
                    child: TopNavigationBar(
                      isBack: false,
                    )),
                Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Đã hoàn thành yêu cầu sửa chữa',
                        style: h4.copyWith(
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 20,
                        ),
                        child: Image.asset(
                          imagePath + repairmanPNG,
                          height: _size.height * 0.5,
                        ),
                      ),
                      // Center(
                      //   child: Padding(
                      //     padding: const EdgeInsets.symmetric(
                      //       vertical: 10,
                      //     ),
                      //     child: InkWell(
                      //       onTap: () => Navigator.of(context).pushReplacement(
                      //         MaterialPageRoute(
                      //           builder: (context) => const Dashboard(
                      //             isReady: true,
                      //           ),
                      //         ),
                      //       ),
                      //       child: Container(
                      //         height: 40,
                      //         width: 300,
                      //         alignment: Alignment.center,
                      //         decoration: BoxDecoration(
                      //           color: primaryColor,
                      //           borderRadius: BorderRadius.circular(5),
                      //           boxShadow: [
                      //             BoxShadow(
                      //               color: Colors.black.withOpacity(0.1),
                      //               offset: Offset.zero,
                      //               blurRadius: 3,
                      //             )
                      //           ],
                      //         ),
                      //         child: Text(
                      //           'Tìm kiếm yêu cầu sửa chữa mới',
                      //           style: h5.copyWith(
                      //             color: Colors.white,
                      //             fontWeight: FontWeight.bold,
                      //           ),
                      //         ),
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 10,
                          ),
                          child: InkWell(
                            onTap: () => Navigator.of(context)
                                .pushAndRemoveUntil(
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Dashboard(isReady: true)),
                                    (Route<dynamic> route) => false),
                            child: Container(
                              height: 40,
                              width: 300,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: primaryColor,
                                borderRadius: BorderRadius.circular(5),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    offset: Offset.zero,
                                    blurRadius: 3,
                                  )
                                ],
                              ),
                              child: Text(
                                'Quay lại trang chủ',
                                style: h5.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Align(
              alignment: Alignment.bottomCenter,
              child: BottomNavigationAdmin(
                selectedIndex: 2,
                isReady: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
