import 'package:elect_repair/config/paths.dart';
import 'package:elect_repair/config/themes.dart';
import 'package:elect_repair/screens/repairman/dashbroad/widgets/request_data.dart';
import 'package:elect_repair/screens/repairman/dashbroad/widgets/top_navigation_bar.dart';
import 'package:elect_repair/widgets/bottom_navigation_bar_admin.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key, required this.isReady}) : super(key: key);
  final bool isReady;
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  bool isReady = false;
  var request = RequestData.getRequest;

  @override
  void initState() {
    super.initState();
    isReady = widget.isReady;
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 50, child: TopNavigationBar()),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              text: 'Tình trạng: ',
                              style: h4.copyWith(
                                color: const Color(0xFF000000),
                                fontSize: 18,
                              ),
                              children: [
                                !isReady
                                    ? TextSpan(
                                        text: 'Không trực tuyến',
                                        style: h4.copyWith(
                                          color: const Color(0xFF000000),
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      )
                                    : TextSpan(
                                        text: 'Trực tuyến',
                                        style: h4.copyWith(
                                          color: const Color(0xFF000000),
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Switch(
                          value: isReady,
                          onChanged: (value) {
                            setState(() {
                              isReady = value;
                            });
                          },
                          activeTrackColor: primaryLightColorTransparent,
                          activeColor: primaryColor,
                        ),
                      ),
                    ],
                  ),
                  Visibility(
                    visible: !isReady,
                    child: Expanded(
                      flex: 1,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                text: 'Xin chào ',
                                style: h4.copyWith(
                                  color: const Color(0xFF000000),
                                  fontSize: 18,
                                ),
                                children: [
                                  TextSpan(
                                    text: 'Nguyễn Văn Quýt',
                                    style: h4.copyWith(
                                      color: const Color(0xFF000000),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      fontStyle: FontStyle.italic,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8),
                              child: ColorFiltered(
                                colorFilter: const ColorFilter.mode(
                                    Color(0xFF000000), BlendMode.color),
                                child: Image.asset(
                                  imagePath + repairmanPNG,
                                  height: size.height * 0.5,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Visibility(
                    visible: isReady,
                    child: Expanded(
                      flex: 1,
                      child: FutureBuilder<Widget>(
                        future: request.call(),
                        builder: (context, snapshot) => snapshot.hasData
                            ? snapshot.data!
                            : Center(
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Đang tìm yêu cầu sửa chữa',
                                      style: h4.copyWith(
                                        fontSize: 20,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    Image.asset(
                                      imagePath + repairmanPNG,
                                      height: size.height * 0.5,
                                      fit: BoxFit.cover,
                                    ),
                                    // Padding(
                                    //   padding: const EdgeInsets.symmetric(
                                    //     vertical: 10,
                                    //   ),
                                    //   child: Text(
                                    //     'Nếu bạn đang bận hoặc chưa sẵn sàng',
                                    //     style: h4.copyWith(
                                    //       fontSize: 14,
                                    //       fontStyle: FontStyle.italic,
                                    //     ),
                                    //   ),
                                    // ),
                                    // Center(
                                    //   child: InkWell(
                                    //     onTap: () => Navigator.of(context)
                                    //         .pushReplacement(
                                    //       MaterialPageRoute(
                                    //         builder: (context) =>
                                    //             const Dashboard(),
                                    //       ),
                                    //     ),
                                    //     child: Container(
                                    //       height: 40,
                                    //       width: 270,
                                    //       alignment: Alignment.center,
                                    //       decoration: BoxDecoration(
                                    //         color: primaryColor,
                                    //         borderRadius:
                                    //             BorderRadius.circular(5),
                                    //         boxShadow: [
                                    //           BoxShadow(
                                    //             color: Colors.black
                                    //                 .withOpacity(0.7),
                                    //             offset: Offset.zero,
                                    //             blurRadius: 3,
                                    //           )
                                    //         ],
                                    //       ),
                                    //       child: Text(
                                    //         'Dừng nhận yêu cầu sửa chữa',
                                    //         style: h5.copyWith(
                                    //           color: Colors.white,
                                    //           fontWeight: FontWeight.bold,
                                    //         ),
                                    //       ),
                                    //     ),
                                    //   ),
                                    // ),
                                  ],
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
      ),
      bottomNavigationBar:
          BottomNavigationAdmin(selectedIndex: 2, isReady: isReady),
    );
  }
}
// Container(
                                    //   height: 100,
                                    //   width: 100,
                                    //   padding: const EdgeInsets.symmetric(
                                    //       vertical: 20, horizontal: 20),
                                    //   child: const CircularProgressIndicator(
                                    //     color: primaryColor,
                                    //     backgroundColor: primaryLightColor,
                                    //     strokeWidth: 6,
                                    //     valueColor:
                                    //         AlwaysStoppedAnimation<Color>(
                                    //             Colors.red),
                                    //   ),
                                    // ),
// Center(
                          //   child: InkWell(
                          //     onTap: () => setState(
                          //       () => isReady = !isReady,
                          //     ),
                          //     child: Container(
                          //       height: 40,
                          //       width: 270,
                          //       alignment: Alignment.center,
                          //       decoration: BoxDecoration(
                          //         color: primaryColor,
                          //         borderRadius: BorderRadius.circular(5),
                          //         boxShadow: [
                          //           BoxShadow(
                          //             color: Colors.black.withOpacity(0.7),
                          //             offset: Offset.zero,
                          //             blurRadius: 3,
                          //           )
                          //         ],
                          //       ),
                          //       child: Text(
                          //         'Sẵn sàng nhận yêu cầu sửa chữa',
                          //         style: h5.copyWith(
                          //           color: Colors.white,
                          //           fontWeight: FontWeight.bold,
                          //         ),
                          //       ),
                          //     ),
                          //   ),
                          // ),
// CategogyCard(),
                  // Expanded(
                  //   flex: 1,
                  //   child: RequestContainer(),
                  // ),
                  // Expanded(
                  //   flex: 1,
                  //   child: Center(
                  //     child: CircularProgressIndicator(),
                  //   ),
                  // ),