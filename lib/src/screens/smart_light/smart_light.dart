import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../../../config/size_config.dart';
import '../../../provider/base_view.dart';
import '../../../view/smart_light_view_model.dart';
import 'components/body.dart';
import 'components/color_pick_sheet.dart';
import 'components/expandable_bottom_sheet.dart';

class SmartLight extends StatelessWidget {
  static String routeName = '/smart-light';
  const SmartLight({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<SmartLightViewModel>(
        onModelReady: (model) => {},
        builder: (context, model, child) {
          return Material(
            child: SlidingUpPanel(
              controller: model.pc,
              backdropEnabled: true,
              maxHeight: model.isTappedOnColor
                  ? getProportionateScreenHeight(300)
                  : getProportionateScreenHeight(510),
              color: const Color(0xFFF2F2F2),
              boxShadow: const [],

              ///no Shadow
              onPanelClosed: model.onPanelClosed,
              body: Body(
                model: model,
              ),
              // panel:
              panelBuilder: (sc) => model.isTappedOnColor
                  ? ColorPickerSheet(
                      model: model,
                    )
                  : ExpandableBottomSheet(
                      model: model,
                    ),
            ),
          );
        });
  }
}
