import 'package:elect_repair/config/paths.dart';
import 'package:elect_repair/config/themes.dart';
import 'package:elect_repair/screens/customer/request/widgets/top_navigation_bar.dart';
import 'package:elect_repair/screens/customer/request_detail/request_detail.dart';
import 'package:elect_repair/widgets/bottom_navigation_bar.dart';
import 'package:elect_repair/widgets/drop_down_list.dart';
import 'package:flutter/material.dart';

class CustomerRequest extends StatefulWidget {
  const CustomerRequest({Key? key}) : super(key: key);

  @override
  _CustomerRequest createState() => _CustomerRequest();
}

class _CustomerRequest extends State<CustomerRequest> {
  bool tbkStatus = false;
  int screen = 1;
  String cbValue = 'Truyền hình';

  List<String> elecCatagory = [
    'Tivi',
    'Tủ lạnh',
    'Điều hòa',
    'Lò vi sóng',
    'Bếp từ',
    'Quạt cây',
    'Khác'
  ];

  List<String> manufacturer = [
    'Samsung',
    'Sony',
    'LG',
    'Toshiba',
    'Panasonic',
  ];

  List<String> tiviCategory = [
    'Smart/Internet',
    'LED',
    'OLED/4K',
  ];

  List<String> tiviStatus = [
    'Đã sử dụng (đã qua sửa chữa)',
    'Đã sử dụng (chưa qua sửa chữa)',
    'Mới mua',
  ];

  List<String> tiviUsedTine = [
    'Dưới 6 tháng',
    'Dưới 1 năm',
    'Từ 1 đến 2 năm',
    'Trên 2 năm',
  ];

  List<String> screenSizes = [
    'Dưới 21 Inch',
    '21 Inch',
    'Từ 22 - 31 Inch',
    '32 Inch',
    'Từ 33 - 41 Inch',
    'Trên 41 Inch',
  ];

  Map<String, bool> issues1 = {
    'Có tiếng ồn bất thường khi sử dụng': false,
    'Có nốt đen to trên màn hình': false,
    'Ánh sáng màn hình bị yếu': true,
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
                SizedBox(
                  height: 50,
                  child: TopNavigationBar(
                    canPop: screen == 2,
                    onTap: () => setState(() => screen = 1),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Visibility(
                          visible: screen == 1,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 8, left: 15),
                                child: Text(
                                  'Thông tin thiết bị*',
                                  style:
                                      h5.copyWith(fontWeight: FontWeight.bold),
                                ),
                              ),
                              DropdownList(
                                hint: 'Loại thiết bị *',
                                list: elecCatagory,
                              ),
                              DropdownList(
                                hint: 'Hãng sản xuất *',
                                list: manufacturer,
                              ),
                              DropdownList(
                                hint: 'Loại Tivi *',
                                list: tiviCategory,
                              ),
                              DropdownList(
                                hint: 'Kích thước màn hình *',
                                list: screenSizes,
                              ),
                              DropdownList(
                                hint: 'Tình trạng',
                                list: tiviStatus,
                              ),
                              DropdownList(
                                hint: 'Thời gian sử dụng',
                                list: tiviUsedTine,
                              ),
                              //!Hình ảnh thiết bị
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 8,
                                  left: 15,
                                ),
                                child: Text(
                                  'Hình ảnh thiết bị*',
                                  style:
                                      h5.copyWith(fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                height: _size.height * 0.33,
                                child: Stack(
                                  children: [
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
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Center(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Center(
                                            child: Container(
                                              height: 40,
                                              width: 250,
                                              margin: const EdgeInsets.only(
                                                  top: 20, bottom: 5),
                                              color:
                                                  primaryUltraLightColorTransparent,
                                              alignment: Alignment.center,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    'Đính kèm hình ảnh',
                                                    style: h6.copyWith(
                                                      color: Colors.white,
                                                      fontStyle:
                                                          FontStyle.italic,
                                                    ),
                                                  ),
                                                  const Icon(
                                                    Icons.attach_file,
                                                    size: 16,
                                                    color: Colors.white,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: const [
                                              SizedBox(
                                                width: 70,
                                                child: Divider(
                                                  color: primaryColor,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 10),
                                                child: Text(
                                                  'hoặc',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      letterSpacing: 1,
                                                      color: primaryColor,
                                                      fontStyle:
                                                          FontStyle.italic),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 70,
                                                child: Divider(
                                                  color: primaryColor,
                                                ),
                                              )
                                            ],
                                          ),
                                          Center(
                                            child: Container(
                                              height: 40,
                                              width: 250,
                                              margin: const EdgeInsets.only(
                                                  top: 5, bottom: 20),
                                              color:
                                                  primaryUltraLightColorTransparent,
                                              alignment: Alignment.center,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    'Chụp ảnh thiết bị ',
                                                    style: h6.copyWith(
                                                      color: Colors.white,
                                                      fontStyle:
                                                          FontStyle.italic,
                                                    ),
                                                  ),
                                                  const Icon(
                                                    Icons.camera_alt_outlined,
                                                    size: 16,
                                                    color: Colors.white,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Visibility(
                          visible: screen == 2,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //!Vấn đề
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 8,
                                  left: 15,
                                ),
                                child: Text(
                                  'Vấn đề của thiết bị*',
                                  style:
                                      h5.copyWith(fontWeight: FontWeight.bold),
                                ),
                              ),
                              Center(
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: issues1.entries
                                            .map(
                                              (e) => ListTile(
                                                contentPadding: EdgeInsets.zero,
                                                minVerticalPadding: 0,
                                                leading: Checkbox(
                                                  value: e.value,
                                                  checkColor: Colors.white,
                                                  // shape: RoundedRectangleBorder(
                                                  //     borderRadius:
                                                  //         BorderRadius.circular(
                                                  //             10)),
                                                  onChanged: (value) =>
                                                      setState(
                                                    () =>
                                                        issues1[e.key] = value!,
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
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
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
                                                  onChanged: (value) =>
                                                      setState(
                                                    () =>
                                                        issues2[e.key] = value!,
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
                              //!Mô tả chi tiết
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
                                  initialValue:
                                      'Sau khi khởi động thiết bị và chọn kênh truyền hình thì khoảng 5-10 giây sau màn hình sẽ bị sọc dưa và chập chờn làm chất lượng xem bị giảm',
                                  decoration: InputDecoration(
                                    label: const Text(
                                      'Mô tả thêm về tình trạng thiết bị',
                                      style: h5,
                                      textAlign: TextAlign.center,
                                    ),
                                    hintText:
                                        'Mô tả thêm về tình trạng thiết bị',
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              ),

                              //!Địa chỉ
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 8,
                                  left: 15,
                                ),
                                child: Text(
                                  'Địa chỉ*',
                                  style:
                                      h5.copyWith(fontWeight: FontWeight.bold),
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
                                  initialValue:
                                      'Số AB1 / đường C23, khu Công Nghệ Cao, phường Tân Phú, thành phố Thủ Đức, thành phố Hồ Chí Minh',
                                  decoration: InputDecoration(
                                    label: const Text(
                                      'Địa chỉ sửa chữa thiết bị*',
                                      style: h5,
                                      textAlign: TextAlign.center,
                                    ),
                                    hintText: 'Địa chỉ sửa chữa thiết bị',
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        //!Button
                        Center(
                          child: InkWell(
                            onTap: () {
                              screen == 1
                                  ? setState(
                                      () => screen = 2,
                                    )
                                  : Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const RequestDetail(
                                          isHistory: false,
                                          isCusRequest: true,
                                          //isRepair: false,
                                        ),
                                      ),
                                    );
                              // : FutureBuilder<Widget>(
                              //     future: alert.call(),
                              //     builder: (context,
                              //          snapshot) {
                              //       List<Widget> children;
                              //       if (snapshot.hasData) {
                              //         children = ;
                              //       } else {
                              //         children =
                              //             createCancelDialog(context);

                              //       }
                              //       return Center(
                              //         child: Column(
                              //           mainAxisAlignment:
                              //               MainAxisAlignment.center,
                              //           crossAxisAlignment:
                              //               CrossAxisAlignment.center,
                              //           children: children,
                              //         ),
                              //       );
                              //     },
                              //   );
                            },
                            child: Container(
                              height: 45,
                              width: 300,
                              margin: const EdgeInsets.symmetric(
                                vertical: 20,
                              ),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: primaryColor,
                                borderRadius: BorderRadius.circular(5),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.7),
                                    offset: Offset.zero,
                                    blurRadius: 3,
                                  )
                                ],
                              ),
                              child: Text(
                                screen == 1 ? 'Tiếp tục' : 'Gửi Yêu Cầu',
                                style: h5.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 60,
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
          ],
        ),
      ),
    );
  }
}
