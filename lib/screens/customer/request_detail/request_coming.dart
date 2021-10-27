import 'package:elect_repair/config/paths.dart';
import 'package:elect_repair/config/themes.dart';
import 'package:elect_repair/screens/customer/request/customer_request.dart';
import 'package:elect_repair/screens/customer/request_detail/widgets/cancel_dialog.dart';
import 'package:elect_repair/screens/customer/request_detail/widgets/coming_status.dart';
import 'package:elect_repair/screens/customer/request_detail/widgets/request_status.dart';
import 'package:elect_repair/screens/customer/request_detail/widgets/top_navigation_bar.dart';
import 'package:elect_repair/screens/customer/tracking/tracking_repair.dart';
import 'package:elect_repair/widgets/bottom_navigation_bar.dart';
import 'package:elect_repair/widgets/circle_icon_button.dart';
import 'package:flutter/material.dart';

class ComingRequest extends StatefulWidget {
  const ComingRequest(
      {Key? key, required this.isHistory, required this.isComing})
      : super(key: key);
  final bool isHistory;
  final bool isComing;
  @override
  State<ComingRequest> createState() => _ComingRequestState();
}

class _ComingRequestState extends State<ComingRequest> {
  bool isShowMap = false;
  late bool isComing;
  @override
  void initState() {
    super.initState();
    isComing = widget.isComing;
  }

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    Future.delayed(const Duration(milliseconds: 15000)).then((_) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Center(child: Text('Cập nhật')),
          content: SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [Icon(Icons.check), Text('Hoàn tất sửa chữa')],
            ),
          ),
          actions: [
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
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                        builder: (context) => const CustomerRequest()),
                    (route) => false);
              },
            ),
          ],
        ),
      );
    });
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 50,
                  child: TopNavigationBar(
                    isCusRequest: false,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //!Trạng thái yêu cầu
                        !widget.isHistory
                            ? Padding(
                                padding: const EdgeInsets.only(
                                    top: 10, bottom: 10, left: 15),
                                child: Text(
                                  'Trạng thái yêu cầu',
                                  style:
                                      h5.copyWith(fontWeight: FontWeight.bold),
                                ),
                              )
                            : const SizedBox.shrink(),
                        (!widget.isHistory && !isComing)
                            ? RequestStatus(
                                isHistory: widget.isHistory,
                                isCusRequest: false,
                              )
                            : isComing
                                ? ComingStatus(
                                    isHistory: widget.isHistory,
                                    isCusRequest: false)
                                : const SizedBox.shrink(),
                        //!Chi tiết yêu cầu
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 10, bottom: 0, left: 15),
                          child: Text(
                            'Chi tiết yêu cầu',
                            style: h5.copyWith(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 35),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Người yêu cầu: ',
                                    style: h6.copyWith(
                                      color: Colors.black,
                                      height: 1.5,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'Nguyễn Văn Quýt',
                                    style: h6.copyWith(
                                      color: Colors.black,
                                      height: 1.5,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Thời gian yêu cầu: ',
                                    style: h6.copyWith(
                                      color: Colors.black,
                                      height: 1.8,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    '04:16 - 18/10/2021',
                                    style: h6.copyWith(
                                      color: Colors.black,
                                      height: 1.8,
                                    ),
                                  ),
                                ],
                              ),
                              RichText(
                                text: TextSpan(
                                  text: 'Địa chỉ: ',
                                  style: h6.copyWith(
                                    color: Colors.black,
                                    height: 1.8,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  children: [
                                    TextSpan(
                                      text:
                                          'Số AB1 / đường C23, khu Công Nghệ Cao, phường Tân Phú, thành phố Thủ Đức, thành phố Hồ Chí Minh',
                                      style: h6.copyWith(
                                        color: Colors.black,
                                        height: 1.8,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Thợ sửa chữa: ',
                                    style: h6.copyWith(
                                      color: Colors.black,
                                      height: 1.5,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'Lê Thị Bưởi',
                                    style: h6.copyWith(
                                      color: Colors.black,
                                      height: 1.5,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Thời gian nhận sửa chữa: ',
                                    style: h6.copyWith(
                                      color: Colors.black,
                                      height: 1.5,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    '20:17 - 18/10/2021',
                                    style: h6.copyWith(
                                      color: Colors.black,
                                      height: 1.5,
                                    ),
                                  ),
                                ],
                              ),
                              // Row(
                              //   mainAxisAlignment: MainAxisAlignment.start,
                              //   crossAxisAlignment: CrossAxisAlignment.center,
                              //   children: [
                              //     Text(
                              //       'Trạng thái: ',
                              //       style: h6.copyWith(
                              //         color: Colors.black,
                              //         height: 1.5,
                              //         fontWeight: FontWeight.bold,
                              //       ),
                              //     ),
                              //     Text(
                              //       'Đã hoàn thành',
                              //       style: h6.copyWith(
                              //         color: Colors.black,
                              //         height: 1.5,
                              //       ),
                              //     ),
                              //   ],
                              // ),
                              const SizedBox(
                                width: 5,
                              ),
                            ],
                          ),
                        ),

                        //!Bản đồ
                        // Center(
                        //   child: (!widget.isHistory)
                        //       ? InkWell(
                        //           onTap: () {
                        //             setState(() => isShowMap = !isShowMap);
                        //             Navigator.of(context).push(
                        //                 MaterialPageRoute(
                        //                     builder: (context) =>
                        //                         const TrackMap()));
                        //           },
                        //           child: Container(
                        //             height: 40,
                        //             width: 260,
                        //             margin: const EdgeInsets.only(
                        //                 top: 15, bottom: 5),
                        //             alignment: Alignment.center,
                        //             decoration: BoxDecoration(
                        //               color: primaryLightColor,
                        //               boxShadow: [
                        //                 BoxShadow(
                        //                   color: Colors.black.withOpacity(0.3),
                        //                   offset: Offset.zero,
                        //                   blurRadius: 3,
                        //                 )
                        //               ],
                        //             ),
                        //             child: Row(
                        //               mainAxisAlignment:
                        //                   MainAxisAlignment.center,
                        //               crossAxisAlignment:
                        //                   CrossAxisAlignment.center,
                        //               children: [
                        //                 Text(
                        //                   isShowMap
                        //                       ? 'Ẩn hành trình của thợ sửa chữa  '
                        //                       : 'Xem hành trình của thợ sửa chữa  ',
                        //                   style: h6.copyWith(
                        //                     color: Colors.black54,
                        //                   ),
                        //                 ),
                        //                 Icon(
                        //                   isShowMap
                        //                       ? Icons.location_off_outlined
                        //                       : Icons.location_pin,
                        //                   size: 16,
                        //                   color: isShowMap
                        //                       ? primaryColor
                        //                       : Colors.blue,
                        //                 ),
                        //               ],
                        //             ),
                        //           ),
                        //         )
                        //       : null,
                        // ),

                        //!Thiết bị và vấn đề
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 10, bottom: 0, left: 15),
                          child: Text(
                            'Thiết bị và vấn đề',
                            style: h5.copyWith(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 35),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              //!
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Loại thiết bị: ',
                                    style: h6.copyWith(
                                      color: Colors.black,
                                      height: 1.5,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'Tivi',
                                    style: h6.copyWith(
                                      color: Colors.black,
                                      height: 1.5,
                                    ),
                                  ),
                                  Text(
                                    ' (Samsung)',
                                    style: h6.copyWith(
                                      color: lightGrey,
                                      height: 1.5,
                                      fontStyle: FontStyle.italic,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Tên thiết bị: ',
                                    style: h6.copyWith(
                                      color: Colors.black,
                                      height: 1.5,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'Smart Tivi Samsung 32 Inch',
                                    style: h6.copyWith(
                                      color: Colors.black,
                                      height: 1.5,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Thời gian sử dụng: ',
                                    style: h6.copyWith(
                                      color: Colors.black,
                                      height: 1.5,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'Dưới 6 tháng',
                                    style: h6.copyWith(
                                      color: Colors.black,
                                      height: 1.5,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Vấn đề: ',
                                    style: h6.copyWith(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'Hình ảnh chập chờn không ổn định, ánh \nsáng màn hình bị yếu',
                                    style: h6.copyWith(
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Mô tả: ',
                                    style: h6.copyWith(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Flexible(
                                    child: Text(
                                      'Sau khi khởi động thiết bị và chọn kênh truyền hình thì khoảng 5-10 giây sau màn hình sẽ bị sọc dưa và chập chờn làm chất lượng xem bị giảm',
                                      style: h6.copyWith(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ],
                              ),

                              //!
                              Center(
                                child: Container(
                                  margin: const EdgeInsets.symmetric(
                                    vertical: 10,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(1),
                                        offset: Offset.zero,
                                        blurRadius: 3,
                                      )
                                    ],
                                  ),
                                  child: ClipRRect(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(10)),
                                    child: Image.asset(
                                      imagePath + tiviErrorPNG,
                                      height: _size.height * 0.28,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Center(
                                child: Text(
                                  '(Hình ảnh thiết bị)',
                                  style: h6.copyWith(
                                    color: primaryColor,
                                    height: 1.5,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 70,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const Align(
                alignment: Alignment.bottomCenter,
                child: BottomNavigation(
                  selectedIndex: 2,
                )),
            !widget.isHistory
                ? Align(
                    alignment: Alignment.bottomRight,
                    child: CircleIconButton(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      margin: const EdgeInsets.only(bottom: 70, right: 10),
                      size: 40,
                      iconData: Icons.message,
                      iconColor: Colors.white,
                      iconSize: 18,
                      backgroundColor: primaryLightColorTransparent,
                    ),
                  )
                : const SizedBox.shrink(),
            !widget.isHistory
                ? Align(
                    alignment: Alignment.bottomRight,
                    child: CircleIconButton(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      margin: const EdgeInsets.only(bottom: 120, right: 10),
                      size: 40,
                      iconData: Icons.call,
                      iconColor: Colors.white,
                      iconSize: 18,
                      backgroundColor: primaryLightColorTransparent,
                    ),
                  )
                : const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
