import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:simple_logger/simple_logger.dart';

// TODO: 2020/10/26 一些便于使用的方法

/// 显示一个Toast */
showToast(String message) => Fluttertoast.showToast(
    msg: message, gravity: ToastGravity.CENTER, fontSize: 16.0);

/// 显示一个button */
showButton(String title, VoidCallback callback) => ElevatedButton(
      onPressed: callback,
      child: Text(title),
    );

/// 显示一个Button并且跳转到指定widget */
showButtonToPush(BuildContext context, String title, Widget widget) =>
    Container(
      padding: EdgeInsets.only(left: 10, right: 10),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return widget;
          }));
        },
        child: Text(title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
      ),
    );

/// 快捷Button */
class WidgetFastButton extends StatefulWidget {
  final String title;
  final VoidCallback callback;

  const WidgetFastButton(this.title, this.callback);

  @override
  _WidgetFastButtonState createState() =>
      _WidgetFastButtonState(title, callback);
}

class _WidgetFastButtonState extends State {
  final String title;
  final VoidCallback callback;

  _WidgetFastButtonState(this.title, this.callback);

  @override
  Widget build(BuildContext context) =>
      ElevatedButton(onPressed: callback, child: Text(title));
}

/// 显示一个快捷ListWidget跳转 */
showSampleStateFulWidget(BuildContext context, String title, Widget widget) =>
    showButtonToPush(context, title, SampleStateFulWidget(widget, title));


/// 快捷Widget */
// ignore: must_be_immutable
class SampleStateFulWidget extends StatefulWidget {
  final Widget mWidget;
  final String title;

  SampleStateFulWidget(this.mWidget, this.title);

  @override
  _SampleStateFulWidgetState createState() => _SampleStateFulWidgetState();
}

class _SampleStateFulWidgetState extends State<SampleStateFulWidget> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: widget.mWidget,
      );
}

//从Asset加载指定的key
loadAssetString(String key) async {
  return await rootBundle.loadString(key);
}

/// log */
final logger = SimpleLogger();

logInfo(String message) {
  logger.log(Level.INFO, message);
}
