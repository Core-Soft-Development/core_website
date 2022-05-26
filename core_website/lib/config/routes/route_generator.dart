import 'package:core_website/config/routes/routes.dart';
import 'package:core_website/screens/about_us.dart';
import 'package:core_website/screens/blog.dart';
import 'package:core_website/screens/client.dart';
import 'package:core_website/screens/contact.dart';
import 'package:core_website/screens/home.dart';
import 'package:core_website/screens/portfolio.dart';
import 'package:core_website/screens/service.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
    static Route<dynamic>? generateRoute(RouteSettings settings) {
      switch (settings.name) {
        case routeHome:
        return MaterialPageRoute(builder: (_) => const Home());
        case routeService:
        return MaterialPageRoute(builder: (_) => const Services());
        case routeAbout:
        return MaterialPageRoute(builder: (_) => const AboutUs());
        case routePortfolio:
        return MaterialPageRoute(builder: (_) => const Portfolio());
        case routeClient:
        return MaterialPageRoute(builder: (_) => const Client());
        case routeBlog:
        return MaterialPageRoute(builder: (_) => const Blog());
        case routeContact:
        return MaterialPageRoute(builder: (_) => const Contact());
      }
      return null;
    }
}