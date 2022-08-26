import 'package:draggable_widget/draggable_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vdotok_stream/core/interface/enums.dart';
import 'package:vdotok_stream/flutter_webrtc.dart';

import 'package:vdotok_stream_example/src/home/home.dart';

import '../../constant.dart';

class DragBox extends StatefulWidget {
  final Offset initPos;
  // final String label;
  // final Color itemColor;

  DragBox({
    required this.initPos,
  });

  @override
  DragBoxState createState() => DragBoxState();
}

class DragBoxState extends State<DragBox> {
  Offset position = Offset(0.0, 0.0);
  final dragController = DragController();
  @override
  void initState() {
    super.initState();
    position = widget.initPos;
  }

  // double top = 100;
  // double left = 100;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // other widgets...
        DraggableWidget(
          horizontalSpace: 0,
          verticalSpace: 10,
          bottomMargin: 20,
          topMargin: 20,
          shadowBorderRadius: 0,
          normalShadow: const BoxShadow(
            blurRadius: 0,
          ),
          intialVisibility: true,

          // horizontalSpace: 50,
          // shadowBorderRadius: 50,
          initialPosition: AnchoringPosition.bottomRight,
          dragController: dragController,
          child:
              // SizedBox(
              //   height: 100,
              //   width: 100,
              //   child: Image.network(
              //       "https://images.unsplash.com/photo-1604085572504-a392ddf0d86a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8b3JhbmdlJTIwZmxvd2VyfGVufDB8fDB8fA%3D%3D&w=1000&q=80"),
              // ),
              Container(
            height: 170,
            width: 130,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
            ),
            // child: Container(
            //   decoration: BoxDecoration(
            //       borderRadius:
            //           BorderRadius.circular(10) // green as background color
            //       ),
            // borderRadius: BorderRadius.circular(10.0),
            child: enableCamera
                ? RTCVideoView(localRenderer,
                    key: forsmallView,
                    mirror: false,
                    objectFit:
                        RTCVideoViewObjectFit.RTCVideoViewObjectFitContain)
                : Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                      colors: [
                        backgroundAudioCallDark,
                        backgroundAudioCallLight,
                        backgroundAudioCallLight,
                        backgroundAudioCallLight,
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment(0.0, 0.0),
                    )),
                    child: Center(
                      child: SvgPicture.asset(
                        'assets/userIconCall.svg',
                      ),
                    ),
                  ),
          ),
        ),
        // )
      ],
    );
  }
}
    // GestureDetector(
    //   child: Stack(
    //     children: [
    //       Positioned(
    //         top: top,
    //         left: left,
    //         child: Align(
    //             alignment: Alignment.bottomRight,
    //             child: Container(
    //               height: 170,
    //               width: 130,
    //               child: Container(
    //                 decoration: BoxDecoration(
    //                     borderRadius: BorderRadius.circular(
    //                         10) // green as background color
    //                     ),
    //                 // borderRadius: BorderRadius.circular(10.0),
    //                 child: enableCamera
    //                     ? RTCVideoView(localRenderer,
    //                         key: forsmallView,
    //                         mirror: false,
    //                         objectFit: RTCVideoViewObjectFit
    //                             .RTCVideoViewObjectFitContain)
    //                     : Container(
    //                         decoration: BoxDecoration(
    //                             gradient: LinearGradient(
    //                           colors: [
    //                             backgroundAudioCallDark,
    //                             backgroundAudioCallLight,
    //                             backgroundAudioCallLight,
    //                             backgroundAudioCallLight,
    //                           ],
    //                           begin: Alignment.topCenter,
    //                           end: Alignment(0.0, 0.0),
    //                         )),
    //                         child: Center(
    //                           child: SvgPicture.asset(
    //                             'assets/userIconCall.svg',
    //                           ),
    //                         ),
    //                       ),
    //               ),
    //             )),
    //       )
    //     ],
    //   ),
    //   onVerticalDragUpdate: (DragUpdateDetails dd) {
    //     setState(() {
    //       top = dd.localPosition.dy;
    //       left = dd.localPosition.dx;
    //     });
    //   },
    //   // onHorizontalDragUpdate: (DragUpdateDetails dd) {
    //   //   setState(() {
    //   //     top = dd.localPosition.dy;
    //   //     left = dd.localPosition.dx;
    //   //   });
    //   // },
    // );
    //  enableCamera
    //     ? RTCVideoView(localRenderer,
    //         key: forsmallView,
    //         mirror: false,
    //         objectFit:
    //             RTCVideoViewObjectFit.RTCVideoViewObjectFitContain)
    //     : Container(
    //         decoration: BoxDecoration(
    //             gradient: LinearGradient(
    //           colors: [
    //             backgroundAudioCallDark,
    //             backgroundAudioCallLight,
    //             backgroundAudioCallLight,
    //             backgroundAudioCallLight,
    //           ],
    //           begin: Alignment.topCenter,
    //           end: Alignment(0.0, 0.0),
    //         )),
    //         child: Center(
    //           child: SvgPicture.asset(
    //             'assets/userIconCall.svg',
    //           ),
    //         ),
    //       ),

    // Draggable(
    //   // data: widget.itemColor,
    //   child:
    // Container(
    //     height: 170,
    //     width: 130,
    //     decoration: BoxDecoration(
    //       borderRadius: BorderRadius.circular(10.0),
    //     ),
    //     child:
    // Container(
    //       decoration: BoxDecoration(
    //           borderRadius:
    //               BorderRadius.circular(10) // green as background color
    //           ),
    //       // borderRadius: BorderRadius.circular(10.0),
    //       child:
    // enableCamera
    //           ? RTCVideoView(localRenderer,
    //               key: forsmallView,
    //               mirror: false,
    //               objectFit:
    //                   RTCVideoViewObjectFit.RTCVideoViewObjectFitContain)
    //           : Container(
    //               decoration: BoxDecoration(
    //                   gradient: LinearGradient(
    //                 colors: [
    //                   backgroundAudioCallDark,
    //                   backgroundAudioCallLight,
    //                   backgroundAudioCallLight,
    //                   backgroundAudioCallLight,
    //                 ],
    //                 begin: Alignment.topCenter,
    //                 end: Alignment(0.0, 0.0),
    //               )),
    //               child: Center(
    //                 child: SvgPicture.asset(
    //                   'assets/userIconCall.svg',
    //                 ),
    //               ),
    //             ),
    //     ),
    //   ),
    //   onDraggableCanceled: (velocity, offset) {
    //     setState(() {
    //       position = offset;
    //       print("dro");
    //     });
    //   },
    //   // onDragEnd: (drag) {
    //   //   position.d
    //   // },
    //   feedback: Container(
    //     height: 170,
    //     width: 130,
    //     decoration: BoxDecoration(
    //       borderRadius: BorderRadius.circular(10.0),
    //     ),
    //     child: Container(
    //       decoration: BoxDecoration(
    //           borderRadius:
    //               BorderRadius.circular(10) // green as background color
    //           ),
    //       // borderRadius: BorderRadius.circular(10.0),
    //       child: enableCamera
    //           ? RTCVideoView(localRenderer,
    //               key: forsmallView,
    //               mirror: false,
    //               objectFit:
    //                   RTCVideoViewObjectFit.RTCVideoViewObjectFitContain)
    //           : Container(),
    //     ),
    //   ),
    //   onVerticalDragUpdate: (DragUpdateDetails dd) {
    //     setState(() {
    //       top = dd.localPosition.dy;
    //       left = dd.localPosition.dx;
    //     });
    //   },
    // ));
  // }
// }
// class StatefulDragArea extends StatefulWidget {
//   final Widget child;

//   const StatefulDragArea({Key? key, required this.child}) : super(key: key);

//   @override
//   _DragAreaStateStateful createState() => _DragAreaStateStateful();
// }

// class _DragAreaStateStateful extends State<StatefulDragArea> {
//   // Offset position = Offset(0.0, 0.0);
//   final dragController = DragController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           // other widgets...
//           DraggableWidget(
//             horizontalSpace: 0,
//             verticalSpace: 10,
//             bottomMargin: 20,
//             topMargin: 20,
//             shadowBorderRadius: 0,
//             normalShadow: const BoxShadow(
//               blurRadius: 0,
//             ),
//             intialVisibility: true,

//             // horizontalSpace: 50,
//             // shadowBorderRadius: 50,
//             initialPosition: AnchoringPosition.topRight,
//             dragController: dragController,
//             child: widget.child,
//           ),
//         ],
//       ),
      // Padding(
      //   padding: const EdgeInsets.all(8.0),
      //   child: SizedBox(
      //     width: MediaQuery.of(context).size.width,
      //     height: MediaQuery.of(context).size.height,
      //     child: Stack(
      //       // fit: StackFit.expand,
      //       clipBehavior: Clip.antiAliasWithSaveLayer,
      //       children: [
      //         Positioned(
      //           left: position.dx,
      //           top: position.dy,
      //           // right: position.dy / 50,
      //           // bottom: position.dx / 50,
      //           // right: BouncingScrollSimulation.maxSpringTransferVelocity,
      //           child: Draggable(
      //             maxSimultaneousDrags: 1,
      //             feedback: widget.child,
      //             childWhenDragging: Opacity(
      //               opacity: .3,
      //               child: widget.child,
      //             ),
      //             onDragEnd: (details) {
      //               setState(() => position = details.offset);
      //               print(position.toString());
      //             },
      //             child: widget.child,
      //           ),
      //         )
      //       ],
      //     ),
      //   ),
      // ),
//     );
//   }
// }

// class StatefulDragArea extends StatefulWidget {
//   final Widget child;
//
//   const StatefulDragArea({Key? key, required this.child}) : super(key: key);
//
//   @override
//   _DragAreaStateStateful createState() => _DragAreaStateStateful();
// }
//
// class _DragAreaStateStateful extends State<StatefulDragArea> {
//   Offset position = const Offset(50, 50);
//   double prevScale = 1;
//   double scale = 1;
//
//   void updateScale(double zoom) => setState(() => scale = prevScale * zoom);
//   void commitScale() => setState(() => prevScale = scale);
//   void updatePosition(Offset newPosition) =>
//       setState(() => position = newPosition);
//
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: MediaQuery.of(context).size.height,
//       width: MediaQuery.of(context).size.width,
//       child: GestureDetector(
//         onScaleUpdate: (details) => updateScale(details.scale),
//         onScaleEnd: (_) => commitScale(),
//         child: Stack(
//           fit: StackFit.expand,
//           children: [
//             Positioned.fill(
//                 child: Container(color: Colors.amber.withOpacity(.4))),
//             Positioned(
//               left: position.dx,
//               top: position.dy,
//               // height: 100,
//               // width: 100,
//               child: Draggable(
//                 maxSimultaneousDrags: 1,
//                 feedback: widget.child,
//                 childWhenDragging: Opacity(
//                   opacity: .3,
//                   child: widget.child,
//                 ),
//                 onDragEnd: (details) => updatePosition(details.offset),
//                 child: Transform.scale(
//                   scale: scale,
//                   child: widget.child,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }