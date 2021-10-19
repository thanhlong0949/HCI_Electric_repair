import 'package:elect_repair/config/paths.dart';
import 'package:elect_repair/config/themes.dart';
import 'package:elect_repair/screens/repairman/request_detail/widgets/top_navigation_bar.dart';
import 'package:elect_repair/screens/repairman/request_progess/request_detail.dart';
import 'package:elect_repair/widgets/circle_icon_button.dart';
import 'package:flutter/material.dart';

class RequestDetail extends StatefulWidget {
  const RequestDetail({Key? key}) : super(key: key);

  @override
  State<RequestDetail> createState() => _RequestDetailState();
}

class _RequestDetailState extends State<RequestDetail> {
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
                              const SizedBox(
                                height: 3,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Trạng thái: ',
                                    style: h6.copyWith(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'Đang chờ người sửa chữa chấp thuận \nyêu cầu',
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
                                    'Địa chỉ: ',
                                    style: h6.copyWith(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    '(3km) Số AB1 / đường C23, khu Công \nNghệ Cao, phường Tân Phú, thành phố \nThủ Đức, thành phố Hồ Chí Minh',
                                    style: h6.copyWith(
                                      color: Colors.black,
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
                            style: h5.copyWith(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 35),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
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
                                    'The Frame 43 inch LS03A',
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
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 20,
                            ),
                            child: InkWell(
                              onTap: () => Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => const RequestProgress(),
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
                                      color: Colors.black.withOpacity(0.7),
                                      offset: Offset.zero,
                                      blurRadius: 3,
                                    )
                                  ],
                                ),
                                child: Text(
                                  'Chấp thuận yêu cầu sửa chữa',
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
            Align(
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
            ),
            Align(
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
            ),
          ],
        ),
      ),
    );
  }
}
