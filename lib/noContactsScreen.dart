import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'src/core/providers/auth.dart';
import 'src/common/customAppBar.dart';

import 'constant.dart';

class NoContactsScreen extends StatelessWidget {
  AuthProvider authProvider;
  final refreshList;
  NoContactsScreen({this.refreshList});

  @override
  Widget build(BuildContext context) {
    return
        // Scaffold(
        //   backgroundColor: chatRoomBackgroundColor,
        //   appBar: CustomAppBar(),
        //   body:
        SingleChildScrollView(
      child: RefreshIndicator(
        onRefresh: refreshList,
        child: Column(
          children: [
            SizedBox(
              height: 128,
            ),
            Container(
                height: 160.0,
                child: Center(
                  child: SvgPicture.asset(
                    'assets/Face.svg',
                  ),
                )),
            SizedBox(height: 43),
            Text(
              "No User Found",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: chatRoomColor,
                fontSize: 21,
              ),
            ),
            // SizedBox(height: 8),
            // SizedBox(
            //     width: 220,
            //     height: 66,
            //     child: Text(
            //       "Tap and hold on any message to star it, so you can easily find it later.",
            //       textAlign: TextAlign.center,
            //       style: TextStyle(
            //         color: chatRoomTextColor,
            //         fontSize: 14,
            //       ),
            //     )),
            // SizedBox(height: 22),
            // Container(
            //   width: 196,
            //   height: 56,
            //   child: Row(
            //     mainAxisSize: MainAxisSize.min,
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     crossAxisAlignment: CrossAxisAlignment.center,
            //     children: [
            //       Container(
            //           width: 196,
            //           height: 56,
            //           decoration: BoxDecoration(
            //             borderRadius: BorderRadius.circular(5),
            //             border: Border.all(
            //               color: refreshButtonColor,
            //               width: 3,
            //             ),
            //           ),
            //           child: FlatButton(
            //             onPressed: () {

            //             },
            //             child: Text(
            //               "New Chat",
            //               style: TextStyle(
            //                   fontSize: 14.0,
            //                   fontFamily: primaryFontFamily,
            //                   fontStyle: FontStyle.normal,
            //                   fontWeight: FontWeight.bold,
            //                   color: refreshButtonColor),
            //             ),
            //           )),
            //     ],
            //   ),
            // ),
            SizedBox(height: 15),
            Container(
              width: 196,
              height: 56,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: refreshButtonColor,
              ),
              child: Container(
                  width: 196,
                  height: 56,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: Color(0xff190354),
                      width: 3,
                    ),
                  ),
                  child: Center(
                      child: FlatButton(
                    onPressed: refreshList,
                    child: Text(
                      "Refresh",
                      style: TextStyle(
                          fontSize: 14.0,
                          fontFamily: primaryFontFamily,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w700,
                          color: refreshTextColor,
                          letterSpacing: 0.90),
                    ),
                  ))),
            ),
            SizedBox(height: 40),
            SizedBox(
                width: 105,
                child: FlatButton(
                  onPressed: () {
                    authProvider.logout();
                    // emitter.disconnect();
                  },
                  child: Text(
                    "LOG OUT",
                    style: TextStyle(
                        fontSize: 14.0,
                        fontFamily: primaryFontFamily,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w700,
                        color: logoutButtonColor,
                        letterSpacing: 0.90),
                  ),
                ))
          ],
        ),
      ),
    );

    // );
  }
}
