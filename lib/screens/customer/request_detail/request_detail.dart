import 'package:elect_repair/config/paths.dart';
import 'package:elect_repair/config/themes.dart';
import 'package:elect_repair/screens/customer/request_detail/request_coming.dart';
import 'package:elect_repair/screens/customer/request_detail/widgets/cancel_dialog.dart';
import 'package:elect_repair/screens/customer/request_detail/widgets/request_status.dart';
import 'package:elect_repair/screens/customer/request_detail/widgets/top_navigation_bar.dart';
import 'package:elect_repair/screens/customer/tracking/tracking_repair.dart';
import 'package:elect_repair/widgets/bottom_navigation_bar.dart';
import 'package:elect_repair/widgets/circle_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RequestDetail extends StatefulWidget {
  const RequestDetail(
      {Key? key,
      required this.isHistory,
      required this.isCusRequest,
      this.selectedItem})
      : super(key: key);
  final bool isHistory;
  final bool isCusRequest;
  final String? selectedItem;
  @override
  State<RequestDetail> createState() => _RequestDetailState();
}

class _RequestDetailState extends State<RequestDetail> {
  bool isShowMap = false;
  late bool isCustRequest;
  late bool isComing = false;
  @override
  void initState() {
    super.initState();
    isCustRequest = widget.isCusRequest;
  }

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    if (isCustRequest) {
      //!Đã tìm thấy thợ sửa chữa
      Future.delayed(const Duration(seconds: 2)).then((_) {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Center(
              child: Text(
                'Đã tìm thấy thợ sửa chữa',
                style: h5.copyWith(
                  fontStyle: FontStyle.italic,
                  color: Colors.black,
                  fontSize: 12,
                ),
              ),
            ),
            content: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CircleAvatar(
                  backgroundColor: primaryColor,
                  radius: 30,
                  child: CircleAvatar(
                    radius: 28,
                    backgroundImage: AssetImage(imagePath + repairGirlPNG),
                  ),
                ),
                SizedBox(
                  height: 60,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Lê Thị Bưởi',
                        style: h5.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          RatingBar.builder(
                            initialRating: 4.5,
                            minRating: 1,
                            itemSize: 12,
                            ignoreGestures: true,
                            allowHalfRating: true,
                            itemCount: 5,
                            unratedColor: Colors.amber[100],
                            itemBuilder: (context, _) => const Icon(
                              Icons.star,
                              size: 2,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (rating) => {},
                          ),
                          const SizedBox(width: 5),
                          const Text(
                            '4.5',
                            style: TextStyle(fontSize: 10),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      });
      Future.delayed(const Duration(seconds: 4)).then((_) {
        isCustRequest = false;
        isComing = true;
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => RequestDetail(
              isHistory: false,
              isCusRequest: false,
              selectedItem: widget.selectedItem,
            ),
          ),
        );
      });
      //
      Future.delayed(const Duration(seconds: 6)).then((_) {
        isCustRequest = false;
        isComing = true;
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Center(
              child: Text(
                'Cập nhật',
                style: h4.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            content: SizedBox(
              height: 110,
              child: Column(
                children: [
                  Center(
                    child: Text(
                      'Thợ sửa chữa đã đến nơi và sẵn sàng \nđễ bắt đầu sửa chữa thiết bị của bạn',
                      style: h5.copyWith(
                        fontStyle: FontStyle.italic,
                        color: Colors.black,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const CircleAvatar(
                        backgroundColor: primaryColor,
                        radius: 30,
                        child: CircleAvatar(
                          radius: 28,
                          backgroundImage:
                              AssetImage(imagePath + repairGirlPNG),
                        ),
                      ),
                      SizedBox(
                        height: 60,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Lê Thị Bưởi',
                              style: h5.copyWith(
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                RatingBar.builder(
                                  initialRating: 4.5,
                                  minRating: 1,
                                  itemSize: 12,
                                  ignoreGestures: true,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  unratedColor: Colors.amber[100],
                                  itemBuilder: (context, _) => const Icon(
                                    Icons.star,
                                    size: 2,
                                    color: Colors.amber,
                                  ),
                                  onRatingUpdate: (rating) => {},
                                ),
                                const SizedBox(width: 5),
                                const Text(
                                  '4.5',
                                  style: TextStyle(fontSize: 10),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      });
      Future.delayed(const Duration(seconds: 66666)).then((_) {
        isCustRequest = false;
        isComing = true;
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Center(
              child: Text(
                'Cập nhật',
                style: h4.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            content: SizedBox(
              height: 110,
              child: Column(
                children: [
                  Center(
                    child: Text(
                      'Thợ sửa chữa đã đến nơi và sẵn sàng \nđễ bắt đầu sửa chữa thiết bị của bạn',
                      style: h5.copyWith(
                        fontStyle: FontStyle.italic,
                        color: Colors.black,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const CircleAvatar(
                        backgroundColor: primaryColor,
                        radius: 30,
                        child: CircleAvatar(
                          radius: 28,
                          backgroundImage:
                              AssetImage(imagePath + repairGirlPNG),
                        ),
                      ),
                      SizedBox(
                        height: 60,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Lê Thị Bưởi',
                              style: h5.copyWith(
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                RatingBar.builder(
                                  initialRating: 4.5,
                                  minRating: 1,
                                  itemSize: 12,
                                  ignoreGestures: true,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  unratedColor: Colors.amber[100],
                                  itemBuilder: (context, _) => const Icon(
                                    Icons.star,
                                    size: 2,
                                    color: Colors.amber,
                                  ),
                                  onRatingUpdate: (rating) => {},
                                ),
                                const SizedBox(width: 5),
                                const Text(
                                  '4.5',
                                  style: TextStyle(fontSize: 10),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      });
      Future.delayed(const Duration(seconds: 88888)).then((_) {
        isCustRequest = false;
        isComing = false;

        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const ComingRequest(
              isHistory: false,
              isComing: true,
            ),
          ),
        );
      });
    }
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 50,
                  child: TopNavigationBar(
                    isCusRequest: widget.isCusRequest,
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
                                isCusRequest: widget.isCusRequest,
                              )
                            : isComing
                                ? RequestStatus(
                                    isHistory: widget.isHistory,
                                    isCusRequest: isCustRequest)
                                : const SizedBox.shrink(),
                        Visibility(
                          visible: isCustRequest,
                          child: Container(
                            padding: const EdgeInsets.all(10.0),
                            alignment: Alignment.center,
                            child: Column(
                              children: [
                                Text(
                                  'Đang tìm yêu cầu sửa chữa',
                                  style: h5.copyWith(
                                    fontStyle: FontStyle.italic,
                                    color: lightGrey,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const SizedBox(
                                  height: 10,
                                  width: 200,
                                  child: LinearProgressIndicator(
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                      Color(0xFFFF5F38),
                                    ),
                                    backgroundColor: Color(0xFFFFC6B8),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    showDialog(
                                        context: context,
                                        builder: (context) =>
                                            const CancelDialog());
                                  },
                                  child: Container(
                                    height: 25,
                                    width: 200,
                                    margin: const EdgeInsets.only(
                                      top: 10,
                                    ),
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      gradient: const LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment(
                                          0.8,
                                          0.0,
                                        ), // 10% of the width, so there are ten blinds.
                                        colors: [
                                          Color(0xFFFF6D18),
                                          Color(0xFFFD5549),
                                        ], // red to yellow
                                        tileMode: TileMode
                                            .mirror, // repeats the gradient over the canvas
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.7),
                                          offset: Offset.zero,
                                          blurRadius: 3,
                                        )
                                      ],
                                    ),
                                    child: Text(
                                      'Hủy yêu cầu',
                                      style: h6.copyWith(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        //!Chi tiết yêu cầu
                        Visibility(
                          visible: widget.isCusRequest,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text(
                              'Chi tiết yêu cầu',
                              style: h5.copyWith(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Visibility(
                          visible: widget.isCusRequest,
                          child: Padding(
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
                                RichText(
                                  text: TextSpan(
                                    text: 'Địa chỉ: ',
                                    style: h6.copyWith(
                                      color: Colors.black,
                                      height: 1.5,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    children: [
                                      TextSpan(
                                        text:
                                            'Số AB1/C23, khu Công Nghệ Cao, phường \nTân Phú, Thủ Đức, thành phố Hồ Chí Minh',
                                        style: h6.copyWith(
                                          color: Colors.black,
                                          height: 1.5,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                widget.isHistory
                                    ? Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Trạng thái: ',
                                            style: h6.copyWith(
                                              color: Colors.black,
                                              height: 1.5,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            'Đã hoàn thành',
                                            style: h6.copyWith(
                                              color: Colors.black,
                                              height: 1.5,
                                            ),
                                          ),
                                        ],
                                      )
                                    : Row(),
                                const SizedBox(
                                  width: 5,
                                ),
                              ],
                            ),
                          ),
                        ),

                        //!Thông tin thợ sửa chữa
                        Visibility(
                          visible: !widget.isCusRequest,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text(
                              'Thông tin thợ sửa chữa',
                              style: h5.copyWith(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Visibility(
                          visible: !widget.isCusRequest,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 35),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                //!Avatar
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const CircleAvatar(
                                      backgroundColor: primaryColor,
                                      radius: 26,
                                      child: CircleAvatar(
                                        radius: 24,
                                        backgroundImage: AssetImage(
                                            imagePath + repairGirlPNG),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    SizedBox(
                                      height: 60,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
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
                                                  height: 1.2,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Text(
                                                'Lê Thị Bưởi',
                                                style: h6.copyWith(
                                                  color: Colors.black,
                                                  height: 1.2,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Đánh giá: ',
                                                style: h6.copyWith(
                                                  color: Colors.black,
                                                  height: 1.2,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              RatingBar.builder(
                                                initialRating: 4.5,
                                                minRating: 1,
                                                itemSize: 12,
                                                ignoreGestures: true,
                                                allowHalfRating: true,
                                                itemCount: 5,
                                                unratedColor: Colors.amber[100],
                                                itemBuilder: (context, _) =>
                                                    const Icon(
                                                  Icons.star,
                                                  size: 2,
                                                  color: Colors.amber,
                                                ),
                                                onRatingUpdate: (rating) => {},
                                              ),
                                              const SizedBox(width: 5),
                                              const Text(
                                                '4.5',
                                                style: TextStyle(fontSize: 10),
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
                                                'Điện thoại liên hệ: ',
                                                style: h6.copyWith(
                                                  color: Colors.black,
                                                  height: 1.2,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Text(
                                                '0901606999',
                                                style: h6.copyWith(
                                                  color: Colors.black,
                                                  height: 1.2,
                                                  fontStyle: FontStyle.italic,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
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
                              ],
                            ),
                          ),
                        ),

                        //!Bản đồ
                        Center(
                          child: (!widget.isCusRequest && !widget.isHistory)
                              ? InkWell(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const TrackMap()));
                                  },
                                  child: Container(
                                    height: 40,
                                    width: 260,
                                    margin: const EdgeInsets.only(
                                        top: 15, bottom: 5),
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: primaryLightColor,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.3),
                                          offset: Offset.zero,
                                          blurRadius: 3,
                                        )
                                      ],
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Xem hành trình của thợ sửa chữa  ',
                                          style: h6.copyWith(
                                            color: Colors.black54,
                                          ),
                                        ),
                                        const Icon(
                                          Icons.location_pin,
                                          size: 16,
                                          color: Colors.blue,
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              : null,
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
                              RichText(
                                text: TextSpan(
                                  text: 'Vấn đề: ',
                                  style: h6.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  children: [
                                    TextSpan(
                                      text:
                                          'Hình ảnh chập chờn không ổn định, ánh \nsáng màn hình bị yếu',
                                      style: h6.copyWith(
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      text: 'Mô tả: ',
                                      style: h6.copyWith(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      children: [
                                        TextSpan(
                                          text:
                                              'Sau khi khởi động thiết bị và chọn kênh \ntruyền hình thì khoảng 5-10 giây sau màn hình sẽ \nbị sọc dưa và chập chờn giảm chất lượng xem',
                                          style: h6.copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ],
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
                                      imagePath +
                                          (widget.selectedItem == 'Tủ lạnh'
                                              ? tuLanhErrorPNG
                                              : tiviErrorPNG),
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
                                    height: 1,
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
              ),
            ),
            !widget.isHistory
                ? Align(
                    alignment: Alignment.bottomRight,
                    child: CircleIconButton(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      margin: const EdgeInsets.only(bottom: 100, right: 10),
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
                      margin: const EdgeInsets.only(bottom: 150, right: 10),
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
