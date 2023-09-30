import 'package:auto_route/auto_route.dart';
import 'package:quickpay_web/core/router/routes.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes {
    return [
      /// routes go here
      AutoRoute(page: HomeRoute.page, initial: true),
    ];
  }
}
