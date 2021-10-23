import 'package:elect_repair/config/paths.dart';
import 'package:elect_repair/config/themes.dart';
import 'package:elect_repair/screens/repairman/request_done/request_done.dart';
import 'package:elect_repair/screens/repairman/request_success/widgets/request_status.dart';
import 'package:elect_repair/screens/repairman/request_success/widgets/top_navigation_bar.dart';
import 'package:flutter/material.dart';

class RequestSuccess extends StatefulWidget {
  const RequestSuccess({Key? key}) : super(key: key);

  @override
  State<RequestSuccess> createState() => _RequestSuccessState();
}

class _RequestSuccessState extends State<RequestSuccess> {
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 50, child: TopNavigationBar()),
                Expanded(
                  flex: 1,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //!Trạng thái yêu cầu
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 10, bottom: 10, left: 15),
                          child: Text(
                            'Trạng thái yêu cầu',
                            style: h5.copyWith(fontWeight: FontWeight.bold),
                          ),
                        ),
                        const RequestStatus(),
                        //!Bản đồ
                        // Center(
                        //   child: InkWell(
                        //     onTap: () => setState(() => isShowMap = !isShowMap),
                        //     child: Container(
                        //       height: 40,
                        //       width: 260,
                        //       margin: const EdgeInsets.only(top: 15, bottom: 5),
                        //       alignment: Alignment.center,
                        //       decoration: BoxDecoration(
                        //         color: primaryLightColor,
                        //         boxShadow: [
                        //           BoxShadow(
                        //             color: Colors.black.withOpacity(0.3),
                        //             offset: Offset.zero,
                        //             blurRadius: 3,
                        //           )
                        //         ],
                        //       ),
                        //       child: Row(
                        //         mainAxisAlignment: MainAxisAlignment.center,
                        //         crossAxisAlignment: CrossAxisAlignment.center,
                        //         children: [
                        //           Text(
                        //             isShowMap
                        //                 ? 'Ẩn đường đi đến nơi sửa chữa  '
                        //                 : 'Xem đường đi đến nơi sửa chữa  ',
                        //             style: h6.copyWith(
                        //               color: Colors.black54,
                        //             ),
                        //           ),
                        //           Icon(
                        //             isShowMap
                        //                 ? Icons.location_off_outlined
                        //                 : Icons.location_pin,
                        //             size: 16,
                        //             color:
                        //                 isShowMap ? primaryColor : Colors.blue,
                        //           ),
                        //         ],
                        //       ),
                        //     ),
                        //   ),
                        // ),
                        //!Chi tiết yêu cầu
                        // Center(
                        //   child: InkWell(
                        //     onTap: () =>
                        //         setState(() => isShowDetail = !isShowDetail),
                        //     child: Container(
                        //       height: 40,
                        //       width: 260,
                        //       margin: const EdgeInsets.only(top: 15, bottom: 5),
                        //       alignment: Alignment.center,
                        //       decoration: BoxDecoration(
                        //         color: primaryLightColor,
                        //         boxShadow: [
                        //           BoxShadow(
                        //             color: Colors.black.withOpacity(0.3),
                        //             offset: Offset.zero,
                        //             blurRadius: 3,
                        //           )
                        //         ],
                        //       ),
                        //       child: Row(
                        //         mainAxisAlignment: MainAxisAlignment.center,
                        //         crossAxisAlignment: CrossAxisAlignment.center,
                        //         children: [
                        //           Text(
                        //             isShowDetail
                        //                 ? 'Ẩn chi tiết yêu cầu sửa chửa  '
                        //                 : 'Xem chi tiết yêu cầu sửa chửa     ',
                        //             style: h6.copyWith(
                        //               color: Colors.black54,
                        //             ),
                        //           ),
                        //           Icon(
                        //             isShowDetail
                        //                 ? Icons.location_off_outlined
                        //                 : Icons.info,
                        //             size: 16,
                        //             color: isShowDetail
                        //                 ? primaryColor
                        //                 : Colors.blue,
                        //           ),
                        //         ],
                        //       ),
                        //     ),
                        //   ),
                        // ),
                        Visibility(
                          visible: isShowDetail,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 10, bottom: 0, left: 15),
                                child: Text(
                                  'Chi tiết yêu cầu',
                                  style:
                                      h5.copyWith(fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 35),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Thời gian yêu cầu: ',
                                          style: h6.copyWith(
                                            color: Colors.black,
                                            height: 1.5,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          '04:16 - 18/10/2021',
                                          style: h6.copyWith(
                                            color: Colors.black,
                                            height: 1.5,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
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
                                  ],
                                ),
                              ),
                              //!Thiết bị và vấn đề
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 10, bottom: 0, left: 15),
                                child: Text(
                                  'Thiết bị và vấn đề',
                                  style:
                                      h5.copyWith(fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 35),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
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
                                          'Truyền hình',
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
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
                                          'The Frame 43 inch LS03A',
                                          style: h6.copyWith(
                                            color: Colors.black,
                                            height: 1.5,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Vấn đề: ',
                                          style: h6.copyWith(
                                            color: Colors.black,
                                            height: 1.5,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          'Hình ảnh chập chờn không ổn định',
                                          style: h6.copyWith(
                                            color: Colors.black,
                                            height: 1.5,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Mô tả: ',
                                          style: h6.copyWith(
                                            color: Colors.black,
                                            height: 1.5,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Flexible(
                                          child: Text(
                                            'Sau khi khở động thiết bị và chọn kênh truyền hình thì khoảng 5-10 giây sau màn hình sẽ bị sọc dưa và chập chờn làm chất lượng xem bị giảm',
                                            style: h6.copyWith(
                                              color: Colors.black,
                                              height: 1.5,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Center(
                                      child: Container(
                                        margin: const EdgeInsets.symmetric(
                                          vertical: 10,
                                        ),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Colors.black.withOpacity(1),
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
                                            height: _size.height * 0.33,
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
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        //!Vấn đề
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 8,
                            left: 15,
                          ),
                          child: Text(
                            'Vấn đề của thiết bị*',
                            style: h5.copyWith(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Center(
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: issues1.entries
                                      .map(
                                        (e) => ListTile(
                                          contentPadding: EdgeInsets.zero,
                                          minVerticalPadding: 0,
                                          leading: Checkbox(
                                            value: e.value,
                                            checkColor: Colors.white,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            onChanged: (value) => setState(
                                              () => issues1[e.key] = value!,
                                            ),
                                          ),
                                          title: Text(
                                            e.key,
                                            style: h6.copyWith(
                                                color: Colors.black),
                                          ),
                                        ),
                                      )
                                      .toList(),
                                ),
                              ),
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
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            onChanged: (value) => setState(
                                              () => issues2[e.key] = value!,
                                            ),
                                          ),
                                          title: Text(
                                            e.key,
                                            style: h6.copyWith(
                                                color: Colors.black),
                                          ),
                                        ),
                                      )
                                      .toList(),
                                ),
                              ),
                            ],
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
                        Container(
                          padding: const EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 30,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: TextFormField(
                            minLines: 2,
                            maxLines: 5,
                            keyboardType: TextInputType.multiline,
                            style: h6.copyWith(color: lightGrey),
                            initialValue:
                                'Hỏng mạch và hỏng ic LVDS (chip điều khiển xuất hình ảnh).',
                            decoration: InputDecoration(
                              label: Text(
                                'Nguyên nhân vấn đề*',
                                style: h5.copyWith(
                                  color: lightGrey,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              hintText: 'Địa chỉ sửa chữa thiết bị',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            'Đã sửa chữa xong thiết bị và nhận thanh toán?',
                            style: h6.copyWith(
                              color: lightGrey,
                              fontSize: 12,
                              height: 3,
                            ),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 10,
                            ),
                            child: InkWell(
                              onTap: () => Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => const RequestDone(),
                                ),
                              ),
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
                                  'Hoàn thành yêu cầu sửa chữa',
                                  style: h5.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 70,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            // const Align(
            //   alignment: Alignment.bottomCenter,
            //   child: BottomNavigationAdmin(
            //     selectedIndex: 0,
            //   ),
            // ),
            // Align(
            //   alignment: Alignment.bottomRight,
            //   child: CircleIconButton(
            //     onTap: () {
            //       Navigator.of(context).pop();
            //     },
            //     margin: const EdgeInsets.only(bottom: 110, right: 10),
            //     size: 40,
            //     iconData: Icons.message,
            //     iconColor: Colors.white,
            //     iconSize: 18,
            //     backgroundColor: primaryLightColorTransparent,
            //   ),
            // ),
            // Align(
            //   alignment: Alignment.bottomRight,
            //   child: CircleIconButton(
            //     onTap: () {
            //       Navigator.of(context).pop();
            //     },
            //     margin: const EdgeInsets.only(bottom: 160, right: 10),
            //     size: 40,
            //     iconData: Icons.call,
            //     iconColor: Colors.white,
            //     iconSize: 18,
            //     backgroundColor: primaryLightColorTransparent,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
