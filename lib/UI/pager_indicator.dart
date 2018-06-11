import 'package:flutter/material.dart';
import 'package:intro_views_flutter/Models/page_bubble_view_model.dart';
import 'package:intro_views_flutter/Models/pager_indicator_view_model.dart';
import 'package:intro_views_flutter/UI/page_bubble.dart';

class PagerIndicator extends StatelessWidget {

  final PagerIndicatorViewModel viewModel;

  PagerIndicator({
    this.viewModel,
  });

  @override
  Widget build(BuildContext context) {

    List<PageBubble> bubbles = [];
    for(var i = 0; i < viewModel.pages.length; i++){
      final page = viewModel.pages[i];
      bubbles.add(
          new PageBubble(
            viewModel: new PageBubbleViewModel(
              page.iconAssetPath,
              page.color,
              i > viewModel.activeIndex,
              i == viewModel.activeIndex ? 1.0 : 0.0,
            ),
          )
      );
    }

    return new Column(
      children: <Widget>[
        new Expanded(child: new Container()),
        new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: bubbles,
        )
      ],
    );
  }
}
