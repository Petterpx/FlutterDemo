import 'package:cloud_flutter_app/example/basis_widgets/button_widget.dart';
import 'package:cloud_flutter_app/example/basis_widgets/from_widget.dart';
import 'package:cloud_flutter_app/example/basis_widgets/image_to_icon_widget.dart';
import 'package:cloud_flutter_app/example/basis_widgets/progress_widget.dart';
import 'package:cloud_flutter_app/example/basis_widgets/textfield_widget.dart';
import 'package:cloud_flutter_app/test/test_form_widget.dart';
import 'package:cloud_flutter_app/utils/util_view.dart';
import 'package:flutter/material.dart';

import 'basis_widgets/chebox_widget.dart';
import 'basis_widgets/text_widget.dart';

///
/// 基础组件list
/// */
class BasisWidgetList extends StatelessWidget {
  @override
  Widget build(context) => Scaffold(
        appBar: AppBar(
          title: Text("基础组件"),
        ),
        body: ListView(
          children: <Widget>[
            showSampleStateFulWidget(context, "文本及其样式", TextWidget()),
            showSampleStateFulWidget(context, "按钮", ButtonWidget()),
            showSampleStateFulWidget(context, "图片和Icon", ImageIconWidget()),
            showSampleStateFulWidget(context, "复选框及单选框", CheBoxWidget()),
            showSampleStateFulWidget(context, "输入框", TextFieldToFromWidget()),
            showSampleStateFulWidget(context, "表单", FromWidget()),
            showSampleStateFulWidget(
                context, "表单测试-测试Builder", TestFromWidget()),
            showSampleStateFulWidget(context, "进度指示器", ProgressWidget()),
          ],
        ),
      );
}
