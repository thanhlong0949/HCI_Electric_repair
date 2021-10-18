import 'package:elect_repair/config/paths.dart';
import 'package:elect_repair/config/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategogyCard extends StatelessWidget {
  const CategogyCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Loại thiết bị',
                  style: h5.copyWith(
                    color: Colors.black87,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                InkWell(
                  child: Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Text(
                        'Xem tất cả',
                        style: h5.copyWith(
                          color: primaryColor,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Icon(
                          Icons.arrow_forward,
                          color: primaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Wrap(
                spacing: 28,
                children: const [
                  Category(
                    categoryName: 'Truyền hình',
                    icon: iconPath + televisionIconSvg,
                    isSelected: true,
                  ),
                  Category(
                    categoryName: 'Máy giặt',
                    icon: iconPath + washingMachineIconSvg,
                  ),
                  Category(
                    categoryName: 'Tủ Lạnh',
                    icon: iconPath + fridgeIconSvg,
                  ),
                  Category(
                    categoryName: 'Máy giặt',
                    icon: iconPath + washingMachineIconSvg,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  const Category(
      {Key? key,
      required this.categoryName,
      required this.icon,
      this.isSelected = false})
      : super(key: key);
  final String categoryName;
  final String icon;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 60,
        width: 75,
        decoration: BoxDecoration(
          color: isSelected ? primaryColor : Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.13),
              offset: Offset.zero,
              blurRadius: 15,
            ),
          ],
        ),
        child: Center(
          child: Wrap(
            direction: Axis.vertical,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              SizedBox(
                height: 32,
                width: 32,
                child: SvgPicture.asset(
                  icon,
                  color: isSelected ? Colors.white : primaryColor,
                ),
              ),
              Text(
                categoryName,
                style: h5.copyWith(
                  color: isSelected ? Colors.white : primaryColor,
                  fontSize: 13,
                  height: 1.5,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
