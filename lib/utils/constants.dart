// @dart=2.9
// ignore_for_file: prefer_const_constructors

import 'package:aviro_health_app/screens/calendar.dart';
import 'package:aviro_health_app/widgets/menu_option.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Constants {
  static const appName = "Aviro Health App";
  static const logoImage = "assets/images/rcb_logo.png";

  //UI constants

  static Color mainColor = Color(0XFF32CD32);
  static Color sidebarColor = Color(0XFF0C1F2B);
  static Color lightTextColor = Colors.grey[300];
  static int kPinLength = 4;
  static String kBackgroundImage = "assets/images/bk2.jpg";
  static String noDataFound = "assets/images/no_file.svg";
  static String apiError = "assets/images/errors.svg";
  static SizedBox spacer = SizedBox(height: 20);
  static List<BoxShadow> shadow = [
    BoxShadow(
        color: Colors.grey.shade500,
        offset: Offset(4, 4),
        blurRadius: 10,
        spreadRadius: 1.0),
    BoxShadow(
        color: Colors.white,
        offset: Offset(-4, -4),
        blurRadius: 10,
        spreadRadius: 1.0),
  ];

  //Urls

  static String url = "http://192.168.1.225:9096/";

  static final dynamic header = {
    "content-Type": "application/json",
  };

  static final dynamic apiHeaders = {
    "x-api-key": "1234",
    "x-api-secret": "1234",
    "x-api-source": "1234",
    "x-api-token": "1234",
  };

  static final dynamic header2 = {
    "Accept": "application/json",
    "content-type": "application/json"
  };

  static List<MenuOptions> menus = [
    MenuOptions(
      icon: Icons.home_rounded,
      color: Colors.cyan,
      label: 'Home',
      description: 'Home',
      formWidget: Container(),
    ),
    MenuOptions(
      icon: CupertinoIcons.profile_circled,
      color: Colors.amber,
      label: 'Profile',
      description: 'Profile',
      formWidget: Container(),
    ),
    MenuOptions(
      icon: CupertinoIcons.calendar,
      color: Colors.purpleAccent,
      label: 'Calendar',
      description: 'Calendar',
      formWidget: CalendarScreen(),
    ),
    MenuOptions(
      icon: CupertinoIcons.settings,
      color: Colors.teal,
      label: 'Settings',
      description: 'Settings',
      formWidget: Container(),
    ),
    MenuOptions(
      icon: Icons.logout_rounded,
      color: Colors.lightGreenAccent,
      label: 'Logout',
      description: 'Logout',
      formWidget: Container(),
    ),
    
  ];

  static const double dialogPadding = 20;
  static const double dialogAvatarRadius = 45;
}

// Future<void> showSelectionModal({
//   String title,
//   @required String initialIndex,
//   @required BuildContext context,
//   @required List<ListOfItemsModel> children,
//   @required ValueChanged<dynamic> onChanged,
// }) async {
//   return await showCupertinoModalPopup(
//     context: context,
//     //filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
//     builder: (context) {
//       return SelectionModal(
//         title: title,
//         initialIndex: initialIndex,
//         onChanged: onChanged,
//         children: children,
//       );
//     },
//   );
// }

// Widget selectionItem(
//     ListOfItemsModel item, bool selected, BuildContext context) {
//   double _screenHeight = MediaQuery.of(context).size.height;
//   double _screenWidth = MediaQuery.of(context).size.width;

//   return Container(
//     padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
//     decoration: BoxDecoration(
//       color: selected ? Colors.blue.shade50 : null,
//     ),
//     child: Row(
//       children: [
//         if (item.logo != null) ...[
//           PhysicalModel(
//             color: Colors.transparent,
//             elevation: 2.0,
//             borderRadius: BorderRadius.circular(8.0),
//             child: Container(
//               height: _screenHeight * 0.04,
//               width: _screenWidth * 0.1,
//               decoration: BoxDecoration(
//                 image: DecorationImage(
//                   image: item.logo.length > 50
//                       ? MemoryImage(base64Decode(item.logo))
//                       : AssetImage(item.logo),
//                   fit: BoxFit.fill,
//                 ),
//                 borderRadius: BorderRadius.circular(8.0),
//               ),
//             ),
//           ),
//           SizedBox(width: 15.0),
//         ] else if (item.icon != null) ...[
//           Padding(
//             padding: EdgeInsets.symmetric(horizontal: 8.0),
//             child: Icon(item.icon, color: Constants.mainColor, size: 20),
//           )
//         ],
//         Expanded(
//           flex: 5,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 item.name ?? "N/A",
//                 style: TextStyle(
//                   fontSize: 13.0,
//                   color: selected ? Colors.blue.shade400 : null,
//                   fontWeight: selected ? FontWeight.bold : null,
//                 ),
//               ),
//               if (item.secondLabel != null) ...[
//                 Text(
//                   item.secondLabel ?? "N/A",
//                   style: TextStyle(
//                     fontSize: 10.0,
//                     color: selected ? Colors.blue.shade400 : null,
//                     fontWeight: selected ? FontWeight.bold : null,
//                   ),
//                 ),
//               ]
//             ],
//           ),
//         ),
//         Spacer(
//           flex: 1,
//         ),
//         if (selected) ...[
//           Icon(
//             Icons.done,
//             color: Colors.blue,
//             size: 20,
//           ),
//         ],
//       ],
//     ),
//   );
// }
