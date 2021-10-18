import 'package:elect_repair/config/paths.dart';
import 'package:elect_repair/config/themes.dart';
import 'package:elect_repair/screens/customer/request/widgets/top_navigation_bar.dart';
import 'package:elect_repair/screens/customer/request_detail/request_detail.dart';
import 'package:elect_repair/widgets/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class CustomerRequest extends StatefulWidget {
  const CustomerRequest({Key? key}) : super(key: key);

  @override
  _CustomerRequest createState() => _CustomerRequest();
}

class _CustomerRequest extends State<CustomerRequest> {
  bool tbkStatus = false;
  String cbValue = 'Truyền hình';

  List elecCatagory = [
    'Truyền hình',
    'Tủ lạnh',
    'Điều hòa',
    'Lò vi sóng',
    'Bếp từ',
    'Quạt cây',
    'Khác'
  ];

  Map<String, bool> issues1 = {
    'Nguồn điện không ổn định': false,
    'Có hiện tượng tê, giật điện': true,
    'Thiết bị không hoạt động': false,
    'Có tiếng ồn bất thường khi sử dụng': false,
  };

  Map<String, bool> issues2 = {
    'Hình ảnh chập chờn không ổn định': true,
    'Phần vỏ ngoài quá nóng': true,
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
                const SizedBox(height: 50, child: TopNavigationBar()),
                Expanded(
                  flex: 1,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //!Loại thiết bị
                        Padding(
                          padding: const EdgeInsets.only(top: 8, left: 15),
                          child: Text(
                            'Loại thiết bị*',
                            style: h5.copyWith(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          margin: const EdgeInsets.symmetric(
                              horizontal: 35, vertical: 10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border:
                                  Border.all(color: primaryColor, width: 1.5),
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.3),
                                  offset: Offset.zero,
                                  blurRadius: 3,
                                ),
                              ]),
                          child: Column(
                            children: [
                              DropdownButtonHideUnderline(
                                child: DropdownButton(
                                  value: cbValue,
                                  icon: const Icon(
                                    Icons.arrow_drop_down,
                                    color: primaryColor,
                                  ),
                                  style: h5.copyWith(color: Colors.black),
                                  iconSize: 30,
                                  isExpanded: true,
                                  borderRadius: BorderRadius.circular(30),
                                  onChanged: (value) {
                                    value == 'Khác'
                                        ? setState(() {
                                            tbkStatus = true;
                                            cbValue = value.toString();
                                          })
                                        : setState(() {
                                            tbkStatus = false;
                                            cbValue = value.toString();
                                          });
                                  },
                                  items: elecCatagory
                                      .asMap()
                                      .entries
                                      .map(
                                        (e) => DropdownMenuItem(
                                          value: e.value,
                                          child: Text(e.value),
                                        ),
                                      )
                                      .toList(),
                                ),
                              ),
                              Visibility(
                                visible: tbkStatus,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15,
                                        right: 10,
                                        top: 10,
                                        bottom: 25),
                                    child: TextFormField(
                                      decoration: const InputDecoration(
                                          label: Text('Nhập loại thiết bị')),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        //!Thông tin thiết bị
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 8,
                            left: 15,
                          ),
                          child: Text(
                            'Thông tin thiết bị*',
                            style: h5.copyWith(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(
                            horizontal: 35,
                            vertical: 10,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.3),
                                offset: Offset.zero,
                                blurRadius: 3,
                              )
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    label: Text(
                                      'Tên thiết bị',
                                      style: h5.copyWith(color: lightGrey),
                                    ),
                                    contentPadding: EdgeInsets.zero,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    label: Text(
                                      'Hãng sản xuất',
                                      style: h5.copyWith(color: lightGrey),
                                    ),
                                    contentPadding: EdgeInsets.zero,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              )
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
                            'Vấn đề*',
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
                                'Sau khi khở động thiết bị và chọn kênh truyền hình thì khoảng 5-10 giây sau màn hình sẽ bị sọc dưa và chập chờn làm chất lượng xem bị giảm',
                            decoration: InputDecoration(
                              label: Text(
                                'Mô tả thêm về tình trạng thiết bị',
                                style: h5.copyWith(
                                  color: lightGrey,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              hintText: 'Mô tả thêm về tình trạng thiết bị',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        //!Hình ảnh thiết bị
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 8,
                            left: 15,
                          ),
                          child: Text(
                            'Hình ảnh thiết bị*',
                            style: h5.copyWith(fontWeight: FontWeight.bold),
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
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
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
                                                fontStyle: FontStyle.italic,
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
                                                fontStyle: FontStyle.italic),
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
                                                fontStyle: FontStyle.italic,
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
                        //!Địa chỉ
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 8,
                            left: 15,
                          ),
                          child: Text(
                            'Địa chỉ*',
                            style: h5.copyWith(fontWeight: FontWeight.bold),
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
                              label: Text(
                                'Địa chỉ sửa chữa thiết bị',
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
                        //!Gửi yêu cầu
                        Center(
                          child: InkWell(
                            onTap: () => Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const RequestDetail(),
                              ),
                            ),
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
                                'Gửi Yêu Cầu',
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
                alignment: Alignment.bottomCenter, child: BottomNavigation()),
          ],
        ),
      ),
    );
  }
}
