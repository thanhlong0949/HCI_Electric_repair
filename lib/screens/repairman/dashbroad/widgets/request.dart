import 'package:elect_repair/config/paths.dart';
import 'package:elect_repair/config/themes.dart';
import 'package:elect_repair/screens/repairman/dashbroad/dashbroad.dart';
import 'package:elect_repair/screens/repairman/request_detail/request_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RequestContainer extends StatefulWidget {
  const RequestContainer({Key? key}) : super(key: key);

  @override
  State<RequestContainer> createState() => _RequestContainerState();
}

class _RequestContainerState extends State<RequestContainer> {
  //var _currentIndex = 0;
  // late PageController _pageController;

  // @override
  // void initState() {
  //   _pageController = PageController(viewportFraction: 1);
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    //final deviceSize = MediaQuery.of(context).size;
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.white,
              alignment: Alignment.center,
              // child: PageView.builder(
              //   controller: _pageController,
              //   itemCount: 6,
              //   itemBuilder: (context, index) => const CustomerRequest(),
              //   onPageChanged: (index) {
              //     setState(() {
              //       _currentIndex = index;
              //     });
              //   },
              // ),
              child: CustomerRequest(),
            ),
          ),
          // SizedBox(
          //   height: 36,
          //   child: Container(
          //     padding: const EdgeInsets.symmetric(horizontal: 35),
          //     margin: const EdgeInsets.only(top: 0, bottom: 27),
          //     alignment: Alignment.center,
          //     child: ListView.builder(
          //         scrollDirection: Axis.horizontal,
          //         physics: const NeverScrollableScrollPhysics(),
          //         itemCount: 6,
          //         itemBuilder: (context, index) =>
          //             buildIndicatior(index == _currentIndex, deviceSize)),
          //   ),
          // ),
        ],
      ),
    );
  }

  Widget buildIndicatior(bool isActive, Size deviceSize) => Align(
        alignment: Alignment.center,
        child: Container(
          width: isActive ? deviceSize.width * 1 / 6 : 20,
          margin: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
              color: isActive ? primaryColor : primaryLightColor,
              borderRadius: const BorderRadius.all(
                Radius.circular(12),
              ),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black38,
                  offset: Offset(2, 3),
                  blurRadius: 3,
                ),
              ]),
        ),
      );
}

class CustomerRequest extends StatelessWidget {
  const CustomerRequest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
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
                blurRadius: 10,
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
                                  text:
                                      'Đang chờ thợ sửa chữa chấp thuận yêu cầu sửa chữa',
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
                        onTap: () => Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) => const Dashboard(
                              isReady: true,
                            ),
                          ),
                        ),
                        child: Container(
                          height: 40,
                          width: 120,
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
                            'Bỏ qua',
                            style: h5.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 40,
                      ),
                      InkWell(
                        onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const RequestDetail(),
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
