import 'package:flutter/material.dart';
import 'package:slash_product_details_app/core/responsitivity/size_config.dart';

class DescriptionText extends StatelessWidget {
  const DescriptionText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Anim nostrud amet exercitation esse exercitation qui deserunt elit eiusmod non sunt elit nisi Lorem. Anim laboris proident nostrud ullamco incididunt pariatur commodo deserunt. Reprehenderit duis veniam et aliqua amet fugiat consectetur incididunt commodo ad eu. Do ad aute laborum officia ad in incididunt. Culpa dolor consectetur esse deserunt ea esse ipsum ullamco adipisicing quis labore Lorem. Nulla enim laboris incididunt Lorem. Do ipsum reprehenderit minim sunt elit proident culpa anim et qui.Ipsum ullamco consectetur labore ut do ut ex minim quis fugiat ullamco proident. Exercitation consectetur laborum cupidatat adipisicing sint fugiat incididunt dolor sit quis veniam ex. Enim sint ad mollit culpa dolore ullamco minim voluptate do esse dolor nisi. Aute quis irure quis voluptate mollit sit consectetur aute. Adipisicing qui et occaecat qui veniam deserunt non culpa dolore. Lorem excepteur amet nisi consequat esse ut dolore. Consectetur nulla laborum id occaecat enim enim.",
      style:
          TextStyle(color: Colors.white, fontSize: 14 * SizeConfig.textRatio),
    );
  }
}
