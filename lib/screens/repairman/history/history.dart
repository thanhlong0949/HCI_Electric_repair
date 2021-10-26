import 'package:elect_repair/config/paths.dart';
import 'package:elect_repair/config/themes.dart';
import 'package:elect_repair/screens/customer/history/widgets/top_navigation_bar.dart';
import 'package:elect_repair/screens/customer/request_detail/request_detail.dart';
import 'package:elect_repair/widgets/bottom_navigation_bar.dart';
import 'package:elect_repair/widgets/bottom_navigation_bar_admin.dart';
import 'package:elect_repair/widgets/circle_icon_button.dart';
import 'package:elect_repair/widgets/rounded_input_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HistoryRequest extends StatefulWidget {
  const HistoryRequest({Key? key, required this.isReady}) : super(key: key);
  final bool isReady;
  @override
  State<HistoryRequest> createState() => _HistoryRequestState();
}

class _HistoryRequestState extends State<HistoryRequest> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 50),
                child: SizedBox(
                    height: 50,
                    child: TopNavigationBar(
                      canPop: false,
                      onTap: () => {},
                    )),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RoundedInputField(
                    icon: const IconData(0xe567, fontFamily: 'MaterialIcons'),
                    hintText: "Search",
                    onChanged: (value) => {},
                  ),
                  SizedBox(
                    height: 30,
                    width: 30,
                    child: IconButton(
                      icon: const Icon(Icons.search),
                      onPressed: () => {},
                    ),
                  )
                ],
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.horizontal(
                          left: Radius.circular(20)),
                      child: Image.asset(
                        imagePath + acErrorPNG,
                        height: 90,
                        width: 90,
                        fit: BoxFit.fill,
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      flex: 5,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'LG Inverter 1.5 HP V13ENH',
                            style: h7.copyWith(
                              color: primaryColor,
                              fontSize: 15,
                              height: 1.2,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Text(
                              'Thời gian: 23/10/2021',
                              style: h5.copyWith(color: lightGrey),
                            ),
                          ),
                          const Text(
                            'Trạng thái: Đã hoàn thành',
                            style: h5,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TextButton(
                            onPressed: () => Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const RequestDetail(
                                  isHistory: true,
                                  isCusRequest: false,
                                  //isRepair: false,
                                ),
                              ),
                            ),
                            child: Text(
                              'Xem \nchi tiết',
                              textAlign: TextAlign.center,
                              style: h6.copyWith(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    // ClipRRect(
                    //   borderRadius: const BorderRadius.horizontal(
                    //     right: Radius.circular(20),
                    //   ),
                    //   child: InkWell(
                    //     onTap: () {},
                    //     child: Container(
                    //       color: primaryLightColor,
                    //       width: 15,
                    //       height: 90,
                    //       child: Center(
                    //         child: Text(
                    //           'x',
                    //           style: h5.copyWith(color: primaryColor),
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.horizontal(
                          left: Radius.circular(20)),
                      child: Image.asset(
                        imagePath + tiviErrorPNG,
                        height: 90,
                        width: 90,
                        fit: BoxFit.fill,
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      flex: 5,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Smart Tivi Samsung 32 Inch',
                            style: h7.copyWith(
                              color: primaryColor,
                              fontSize: 15,
                              height: 1.2,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Text(
                              'Thời gian: 19/10/2021',
                              style: h5.copyWith(color: lightGrey),
                            ),
                          ),
                          const Text(
                            'Trạng thái: Đã hoàn thành',
                            style: h5,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TextButton(
                            onPressed: () => Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const RequestDetail(
                                  isHistory: true,
                                  isCusRequest: false,
                                  //isRepair: false,
                                ),
                              ),
                            ),
                            child: Text(
                              'Xem \nchi tiết',
                              textAlign: TextAlign.center,
                              style: h6.copyWith(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    // ClipRRect(
                    //   borderRadius: const BorderRadius.horizontal(
                    //     right: Radius.circular(20),
                    //   ),
                    //   child: InkWell(
                    //     onTap: () {},
                    //     child: Container(
                    //       color: primaryLightColor,
                    //       width: 15,
                    //       height: 90,
                    //       child: Center(
                    //         child: Text(
                    //           'x',
                    //           style: h5.copyWith(color: primaryColor),
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.horizontal(
                          left: Radius.circular(20)),
                      child: Image.asset(
                        imagePath + maygiatErrorPNG,
                        height: 90,
                        width: 90,
                        fit: BoxFit.fill,
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      flex: 5,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Aqua Inverter 8.5 Kg AQD-D850E W',
                            style: h7.copyWith(
                              color: primaryColor,
                              fontSize: 15,
                              height: 1.2,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Text(
                              'Thời gian: 15/10/2021',
                              style: h5.copyWith(color: lightGrey),
                            ),
                          ),
                          const Text(
                            'Trạng thái: Đã hoàn thành',
                            style: h5,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TextButton(
                            onPressed: () => Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const RequestDetail(
                                  isHistory: true,
                                  isCusRequest: false,
                                  //isRepair: false,
                                ),
                              ),
                            ),
                            child: Text(
                              'Xem \nchi tiết',
                              textAlign: TextAlign.center,
                              style: h6.copyWith(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    // ClipRRect(
                    //   borderRadius: const BorderRadius.horizontal(
                    //     right: Radius.circular(20),
                    //   ),
                    //   child: InkWell(
                    //     onTap: () {},
                    //     child: Container(
                    //       color: primaryLightColor,
                    //       width: 15,
                    //       height: 90,
                    //       child: Center(
                    //         child: Text(
                    //           'x',
                    //           style: h5.copyWith(color: primaryColor),
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationAdmin(
          isReady: widget.isReady,
          selectedIndex: 3,
        ),
      ),
    );
  }

  Widget buildClipRRect() {
    return Container(
      width: MediaQuery.of(context).size.width / 0.99,
      height: MediaQuery.of(context).size.height / 6,
      padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 20),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(
              Radius.circular(24),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.25),
                offset: Offset.zero,
                blurRadius: 15,
              ),
            ]),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(25)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: Stack(
                  children: [
                    Image.asset(
                      imagePath + tiviErrorPNG,
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                    Container(
                      alignment: Alignment.topRight,
                      padding: const EdgeInsets.only(top: 10, right: 10),
                      child: const Icon(
                        Icons.info_outline,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      padding: const EdgeInsets.only(top: 10, left: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            FontAwesomeIcons.mapMarkerAlt,
                            size: 12,
                            color: Colors.blue[200],
                          ),
                          const SizedBox(
                            width: 3,
                          ),
                          Text(
                            '(3km) Số AB1 / đường C23, \nkhu Công Nghệ Cao, phường...',
                            style: h5.copyWith(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 22,
                            height: 22,
                            child: SvgPicture.asset(
                              iconPath + televisionIconSvg,
                              color: primaryColor,
                            ),
                          ),
                          Text(
                            ' Smart Tivi Samsung 32 Inch',
                            style: h5.copyWith(
                              color: primaryColor,
                              fontSize: 18,
                              height: 1.2,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      RichText(
                        textAlign: TextAlign.left,
                        text: TextSpan(
                          text: 'Loại thiết bị: ',
                          style: h5.copyWith(
                            color: lightGrey,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                          children: const [
                            TextSpan(
                                text: 'Tivi',
                                style: TextStyle(fontWeight: FontWeight.normal))
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      RichText(
                        textAlign: TextAlign.left,
                        text: TextSpan(
                          text: 'Hãng sản xuất: ',
                          style: h5.copyWith(
                            color: lightGrey,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                          children: const [
                            TextSpan(
                                text: 'Samsung',
                                style: TextStyle(fontWeight: FontWeight.normal))
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      RichText(
                        textAlign: TextAlign.left,
                        text: TextSpan(
                          text: 'Loại Tivi: ',
                          style: h5.copyWith(
                            color: lightGrey,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                          children: const [
                            TextSpan(
                                text: 'Smart/Internet',
                                style: TextStyle(fontWeight: FontWeight.normal))
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      RichText(
                        textAlign: TextAlign.left,
                        text: TextSpan(
                          text: 'Kích thước màn hình: ',
                          style: h5.copyWith(
                            color: lightGrey,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                          children: const [
                            TextSpan(
                                text: '32 Inch',
                                style: TextStyle(fontWeight: FontWeight.normal))
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Flexible(
                        child: RichText(
                          text: TextSpan(
                            text: 'Trạng thái: ',
                            style: h5.copyWith(
                              color: lightGrey,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                            children: const [
                              TextSpan(
                                  text: 'Đã hoàn thành',
                                  style:
                                      TextStyle(fontWeight: FontWeight.normal))
                            ],
                          ),
                        ),
                      ),
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: Divider(
                          height: 1,
                          thickness: 1,
                          color: lightGrey,
                        ),
                      ),
                      RichText(
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        text: TextSpan(
                          text: 'Vấn đề: ',
                          style: h5.copyWith(
                            color: primaryColor,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          children: [
                            TextSpan(
                              text: '"Không thể khởi động thiết bị"',
                              style: h5.copyWith(
                                color: lightGrey,
                                fontSize: 16,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 90,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const RequestDetail(
                              isHistory: true,
                              isCusRequest: false,
                              // isRepair: true,
                            ),
                          ),
                        ),
                        child: Container(
                          height: 40,
                          width: 120,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.cyan,
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
                            'Xem chi tiết',
                            style: h5.copyWith(
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
            ],
          ),
        ),
      ),
    );
  }
}
