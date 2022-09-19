import 'package:store/main.dart';
import 'package:store/persention/Checkout/invoice.dart';
import 'package:store/persention/Favorite/Favorite.dart';
import 'package:store/persention/MyOrders/MyOrder.dart';
import 'package:store/persention/MyPoint/Mypoint.dart';
import 'package:store/persention/Notification/Notification.dart';
import 'package:store/persention/PrivacyPolicy/privacy_policy.dart';
import 'package:store/persention/SendFeedback/send_feedback.dart';
import 'package:store/persention/Settings/settings.dart';
import 'package:store/persention/myreviews/MyReviews.dart';

class pageRoutes {
  static const String home = HomePage.routeName;
  static const String favorite = FavoritePage.routeName;
  static const String myorder = MyOrderPage.routeName;
  static const String mypoint = MypointPage.routeName;
  static const String myreview = MyReviewsPage.routeName;
  static const String setting = SettingsPage.routeName;
  static const String notification = NotificationPage.routeName;
  static const String policy = PrivacyPolicyPage.routeName;
  static const String send = SendFeedbackPage.routeName;
  static const String Invoice = invoice.routeName;
}
