import 'package:cloud_flutter_app/example/cotainer_widgets/constrainedbox_widget.dart';
import 'package:cloud_flutter_app/example/cotainer_widgets/decoratedbox_widget.dart';
import 'package:cloud_flutter_app/example/cotainer_widgets/padding_widget.dart';
import 'package:cloud_flutter_app/utils/util_view.dart';
import 'package:flutter/material.dart';

import 'cotainer_widgets/container_widget.dart';
import 'cotainer_widgets/transform_widget.dart';

///
/// 容器类组件Widget
/// */
class ContainerWidgetsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: Text("容器类组件")),
        body: Column(
          children: [
            showSampleStateFulWidget(context, "Padding", PaddingWidget()),
            showSampleStateFulWidget(
                context, "ConstrainedBox", ConstrainedBoxWidget()),
            showSampleStateFulWidget(
                context, "DecoratedBox", DecoratedBoxWidget()),
            showSampleStateFulWidget(context, "Transform", TransformWidget()),
            showSampleStateFulWidget(context, "Container", ContainerWidget())
          ],
        ),
      );
}
