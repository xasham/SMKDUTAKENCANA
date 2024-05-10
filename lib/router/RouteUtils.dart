enum APP_PAGE { login, register, home, mainpage, article, location, user, ppdb }

extension AppPageExtension on APP_PAGE {
  String get toPath {
    switch (this) {
      case APP_PAGE.home:
        return "/home";
      case APP_PAGE.login:
        return "/login";
      case APP_PAGE.register:
        return "/register";
      case APP_PAGE.mainpage:
        return "/mainpage";
      case APP_PAGE.article:
        return "/article";
      case APP_PAGE.location:
        return "/location";
      case APP_PAGE.user:
        return "/user";
      case APP_PAGE.ppdb:
        return "/ppdb";
      default:
        return "/";
    }
  }

  String get toName {
    switch (this) {
      case APP_PAGE.home:
        return "home";
      case APP_PAGE.login:
        return "login";
      case APP_PAGE.register:
        return "register";
      case APP_PAGE.mainpage:
        return "mainpage";
      case APP_PAGE.article:
        return "article";
      case APP_PAGE.location:
        return "location";
      case APP_PAGE.user:
        return "user";
        case APP_PAGE.ppdb:
        return "ppdb";
      default:
        return "";
    }
  }

//   String get toTitle {
//     switch (this) {
//       case APP_PAGE.home:
//         return "/home";
//       case APP_PAGE.login:
//         return "/login";
//       case APP_PAGE.register:
//         return "/register";
//       case APP_PAGE.mainpage:
//         return "/mainpage";
//       case APP_PAGE.article:
//         return "/article";
//       case APP_PAGE.location:
//         return "/location";
//       case APP_PAGE.user:
//         return "/user";
//       default:
//         return "/";
//     }
//   }
// }
}
