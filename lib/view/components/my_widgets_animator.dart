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
