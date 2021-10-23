import 'package:dropdown_search/dropdown_search.dart';
import 'package:elect_repair/config/themes.dart';
import 'package:flutter/material.dart';

class DropdownList extends StatelessWidget {
  const DropdownList({Key? key, required this.list, required this.hint})
      : super(key: key);
  final List<String> list;
  final String hint;
  @override
  Widget build(BuildContext context) => Container(
        margin: const EdgeInsets.symmetric(horizontal: 35, vertical: 10),
        child: DropdownSearch<String>(
          mode: Mode.MENU,
          showSelectedItems: true,
          selectedItem: list[0],
          items: list,
          dropdownSearchDecoration: InputDecoration(
            labelStyle: h6,
            hintText: "Chọn " + hint,
            labelText: hint,
            contentPadding: const EdgeInsets.only(
              left: 15,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      );
  // DropdownSearch<String>.multiSelection(
  //   validator: (List<String>? v) {
  //     return v == null || v.isEmpty ? "required field" : null;
  //   },
  //   dropdownSearchDecoration: InputDecoration(
  //     hintText: "Select a country",
  //     labelText: "Menu mode multiSelection*",
  //     contentPadding: EdgeInsets.fromLTRB(12, 12, 0, 0),
  //     border: OutlineInputBorder(),
  //   ),
  //   mode: Mode.MENU,
  //   showSelectedItems: false,
  //   items: ["Brazil", "Italia (Disabled)", "Tunisia", 'Canada'],
  //   showClearButton: true,
  //   onChange: print,
  //   popupSelectionWidget: (cnt, String item, bool isSelected) {
  //     return isSelected
  //         ? Icon(
  //             Icons.check_circle,
  //             color: Colors.green[500],
  //           )
  //         : Container();
  //   },
  //   popupItemDisabled: (String s) => s.startsWith('I'),
  //   clearButtonSplashRadius: 20,
  //   selectedItems: ["Tunisia"],
  // );
}
