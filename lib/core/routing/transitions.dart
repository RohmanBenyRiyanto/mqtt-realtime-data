import 'package:auto_route/auto_route.dart';

class TransitionRoute extends CustomRoute {
  TransitionRoute({required PageInfo<dynamic> page, bool initial = false})
      : super(
          page: page,
          transitionsBuilder: TransitionsBuilders.slideLeft,
          durationInMilliseconds: 200,
          reverseDurationInMilliseconds: 150,
          initial: initial,
        );
}
