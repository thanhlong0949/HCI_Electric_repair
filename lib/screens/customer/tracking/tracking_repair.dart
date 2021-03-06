import 'package:elect_repair/config/paths.dart';
import 'package:elect_repair/config/themes.dart';
import 'package:elect_repair/screens/customer/tracking/widgets/top_navigation_bar.dart';
import 'package:flutter/material.dart';

class TrackMap extends StatefulWidget {
  const TrackMap({Key? key}) : super(key: key);

  @override
  _TrackMapState createState() => _TrackMapState();
}

class _TrackMapState extends State<TrackMap> {
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 60),
                child: SizedBox(
                  height: 50,
                  child: TopNavigationBar(
                    canPop: true,
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
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
                        color: Colors.black.withOpacity(0.2),
                        offset: Offset.zero,
                        blurRadius: 3,
                      )
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    child: Image.asset(
                      imagePath + googleMapHCMPNG,
                      height: _size.height * 0.5,
                      fit: BoxFit.fill,
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
                  style: h6,
                  initialValue:
                      'S??? AB1 / ???????ng C23, khu C??ng Ngh??? Cao, ph?????ng T??n Ph??, th??nh ph??? Th??? ?????c, th??nh ph??? H??? Ch?? Minh',
                  decoration: InputDecoration(
                    label: Text(
                      '?????a ch??? s???a ch???a thi???t b???',
                      style: h5.copyWith(
                        color: lightGrey,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    hintText: '?????a ch??? s???a ch???a thi???t b???',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
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
