// import 'package:e_commerce/data/cloud/api_call_status.dart';
// import 'package:e_commerce/view/widgets/custem_text.dart';
// import 'package:flutter/cupertino.dart';
//
// // switch between different widgets with animation
// // depending on api call status
// class MyWidgetsAnimator extends StatelessWidget {
//   final ApiCallStatus apiCallStatus;
//   final Widget Function() loadingWidget;
//   final Widget Function() successWidget;
//   final Widget Function() errorWidget;
//   final Widget Function()? emptyWidget;
//   final Widget Function()? holdingWidget;
//   final Widget Function()? refreshWidget;
//   final Duration? animationDuration;
//   final Widget Function(Widget, Animation<double>)? transitionBuilder;
//
//   // this will be used to not hide the success widget when refresh
//   // if its true success widget will still be shown
//   // if false refresh widget will be shown or empty box if passed (refreshWidget) is null
//   final bool hideSuccessWidgetWhileRefreshing;
//
//   const MyWidgetsAnimator({
//     Key? key,
//     required this.apiCallStatus,
//     required this.loadingWidget,
//     required this.errorWidget,
//     required this.successWidget,
//     this.holdingWidget,
//     this.emptyWidget,
//     this.refreshWidget,
//     this.animationDuration,
//     this.transitionBuilder,
//     this.hideSuccessWidgetWhileRefreshing = false,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return AnimatedSwitcher(
//       duration: animationDuration ?? const Duration(milliseconds: 300),
//       transitionBuilder:
//           transitionBuilder ?? AnimatedSwitcher.defaultTransitionBuilder,
//       child: widget(),
//     );
//   }
//
//   Widget widget() {
//     if (apiCallStatus == ApiCallStatus.success) {
//       return successWidget();
//     } else if (apiCallStatus == ApiCallStatus.error) {
//       return errorWidget();
//     } else if (apiCallStatus == ApiCallStatus.holding) {
//       return (holdingWidget != null) ? holdingWidget!() : const SizedBox();
//     } else if (apiCallStatus == ApiCallStatus.loading) {
//       return loadingWidget();
//     } else if (apiCallStatus == ApiCallStatus.empty) {
//       return (emptyWidget != null) ? emptyWidget!() : const SizedBox();
//     } else if (apiCallStatus == ApiCallStatus.refresh) {
//       return (refreshWidget != null)
//           ? refreshWidget!()
//           : (hideSuccessWidgetWhileRefreshing)
//               ? successWidget()
//               : const SizedBox();
//     } else if (apiCallStatus == ApiCallStatus.cache) {
//       return successWidget();
//     }
//     return const Center(
//       child: CustomText(txt: "There no state like this!"),
//     );
//   }
// }

import 'package:e_commerce/data/cloud/api_call_status.dart';
import 'package:flutter/cupertino.dart';

class ApiHandleUiWidget extends StatelessWidget {
  final Widget loadingWidget;
  final Widget successWidget;
  final Widget errorWidget;
  final Widget emptyWidget;
  final Widget networkError;
  final ApiCallStatus apiCallStatus;

  const ApiHandleUiWidget({
    Key? key,
    required this.successWidget,
    required this.apiCallStatus,
    this.loadingWidget = const Center(
      child: CupertinoActivityIndicator(),
    ),
    this.errorWidget = const Center(
      child: Text("Error"),
    ),
    this.emptyWidget = const Center(
      child: Text("Empty data"),
    ),
    this.networkError = const Center(
      child: Text("networkError"),
    ),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (apiCallStatus == ApiCallStatus.loading) {
      return loadingWidget;
    } else if (apiCallStatus == ApiCallStatus.error) {
      return errorWidget;
    } else if (apiCallStatus == ApiCallStatus.empty) {
      return emptyWidget;
    } else if (apiCallStatus == ApiCallStatus.error) {
      return networkError;
    }
    return successWidget;
  }
}
