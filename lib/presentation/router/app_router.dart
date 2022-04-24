import 'package:auto_route/auto_route.dart';
import 'package:crypto_currency_data/presentation/page/navigation_page.dart';
import 'package:crypto_currency_data/presentation/page/portfolio/portfolio_page.dart';
import 'package:crypto_currency_data/presentation/page/profile/profile_page.dart';
import 'package:crypto_currency_data/presentation/page/ratings/ratings_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute<dynamic>>[
    AutoRoute<dynamic>(
      path: 'presentation/navigation_page',
      name: 'NavigationPageRouter',
      initial: true,
      page: NavigationPage,
      children: <AutoRoute<dynamic>>[
        AutoRoute<dynamic>(
          path: 'presentation/page/ratings/ratings_page',
          name: 'RatingsPageRouter',
          page: EmptyRouterPage,
          children: <AutoRoute<dynamic>>[
            AutoRoute<dynamic>(
              path: '',
              page: RatingsPage,
            ),
          ],
        ),
        AutoRoute<dynamic>(
          path: 'presentation/page/portfolio/portfolio_page',
          name: 'PortfolioPageRouter',
          page: EmptyRouterPage,
          children: <AutoRoute<dynamic>>[
            AutoRoute<dynamic>(
              path: '',
              page: PortfolioPage,
            ),
          ],
        ),
        AutoRoute<dynamic>(
          path: 'presentation/page/profile/profile_page',
          name: 'ProfilePageRouter',
          page: ProfilePage,
        ),
      ],
    ),
  ],
)
class $AppRouter {}
