import 'package:flutter/material.dart' show MaterialPageRoute, Scaffold, RouteSettings, Route;
import '../features/ favorites/favorites_screen.dart' show FavoritesScreen;
import '../features/auth/login_screen.dart' show LoginScreen;
import '../features/auth/signup_screen.dart' show SignupScreen;
import '../features/categories/categories_screen.dart' show CategoriesScreen;
import '../features/home/home_screen.dart' show HomeScreen;
import '../features/order_success/order_success_screen.dart' show OrderSuccessScreen;
import '../features/portfolio/portfolio_screen.dart' show PortfolioScreen;
import '../features/produce/produce_screen.dart' show ProduceScreen;
import '../features/produce_details/produce_details_screen.dart' show ProduceDetailsScreen;
import '../features/splash/splash_screen.dart';

class AppRoutes {
  static const splash = '/';
  static const login = '/login';
  static const signup = '/signup';
  static const home = '/home';
  static const categories = '/categories';
  static const produce = '/produce';
  static const produceDetails = '/produce-details';
  static const favorites = '/favorites';
  static const portfolio = '/portfolio';
  static const orderSuccess = '/order-success';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash: return MaterialPageRoute(builder: (_) => SplashScreen());
      case login: return MaterialPageRoute(builder: (_) => LoginScreen());
      case signup: return MaterialPageRoute(builder: (_) => SignupScreen());
      case home: return MaterialPageRoute(builder: (_) => HomeScreen());
      case categories: return MaterialPageRoute(builder: (_) => CategoriesScreen());
      case produce: return MaterialPageRoute(builder: (_) => ProduceScreen());
      case produceDetails: return MaterialPageRoute(builder: (_) => ProduceDetailsScreen());
      case favorites: return MaterialPageRoute(builder: (_) => FavoritesScreen());
      case portfolio: return MaterialPageRoute(builder: (_) => PortfolioScreen());
      case orderSuccess: return MaterialPageRoute(builder: (_) => OrderSuccessScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
          ),
        );
    }
  }
}
