// import 'dart:convert';

// import 'package:flutter_stripe/flutter_stripe.dart';
// import 'package:http/http.dart' as http;

// class PaymentController {
//   static Future<bool> processPayment(String amount) async {
//     try {
//       Map<String, dynamic>? paymentIntentData =
//           await createPaymentIntent(amount);

//       await Stripe.instance.initPaymentSheet(
//         paymentSheetParameters: SetupPaymentSheetParameters(
//           paymentIntentClientSecret: paymentIntentData?['client_secret'],
//           customerEphemeralKeySecret: paymentIntentData?['ephemeralKey'],
//           merchantDisplayName: 'Your Merchant Name',
//         ),
//       );

//       await Stripe.instance.presentPaymentSheet();
//       return true;
//     } catch (e) {
//       print('Error during payment process: $e');
//       return false;
//     }
//   }

//   static Future<Map<String, dynamic>?> createPaymentIntent(
//     String amount,
//   ) async {
//     try {
//       Map<String, dynamic> body = {
//         'amount': calculateAmount(amount),
//         'currency': 'usd',
//         'payment_method_types[]': 'card'
//       };
//       var response = await http.post(
//           Uri.parse('https://api.stripe.com/v1/payment_intents'),
//           body: body,
//           headers: {
//             'Authorization':
//                 'Bearer sk_test_51PNHKx076BkCSBspcayZIfu4Dwj9H7lX7B4hFljXGiwKoPQVd8kPfV8fTp3AXaO9YbFNP1L8Cpey7G0xiHFNzeU100sP1GEOHR',
//             'Content-Type': 'application/x-www-form-urlencoded'
//           });
//       return json.decode(response.body);
//     } catch (err) {
//       print('err charging user: ${err.toString()}');
//       return null;
//     }
//   }

//   static String calculateAmount(String amount) {
//     final a = (double.parse(amount)) * 100;
//     return a.toString();
//   }
// }
