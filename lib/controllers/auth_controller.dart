// import 'dart:developer';

// import 'package:flutter/material.dart';

// final apiClient = getIt<ApiClient>();
// //SharedPreferenceHelper sharedPreferenceHelper = SharedPreferenceHelper();

// Future<void> loginUsers(BuildContext context, email, pass) async {
//   showLoadingIndicator(context);

//   LoginResponse? res = await apiClient.login(email, pass, context);

//   if (res?.detail != null) {
//     showErrorDialog(
//         context,
//         "Error",
//         res!.detail.toString() == "LOGIN_BAD_CREDENTIALS"
//             ? "Incorrect email or password"
//             : res.detail.toString());
//   } else {
//     if (res?.accessToken != null) {
//       String accessToken = res!.accessToken!;

//       sp.setString('access_token', accessToken);
//       sp.setBool('logged', true);
//       hideLoadingIndicator();
//       Navigator.of(context).pushNamed(HomeScreen.routeName);
//     } else {
//       showErrorDialog(context, "Error", "Account Doesn't Exists!");
//     }
//   }
// }

// Future<void> logOutUser(context) async {
//   await apiClient.logout(sp.getString('access_token'));
//   sp.setString('access_token', '');
//   sp.remove("acces_token");
//   Navigator.push(
//       context, MaterialPageRoute(builder: (context) => SignInScreen()));
// }

// Future requestEmailOtpUser({
//   context,
//   email,
// }) async {
//   final bool? otpSent = await apiClient.requestEmailVerificationOtp(email);
//   if (otpSent != null && otpSent) {
//     ScaffoldMessenger.of(context)
//       ..hideCurrentSnackBar()
//       ..showSnackBar(SnackBar(content: Text("OTP Sent Successfully!")));
//   } else {
//     ScaffoldMessenger.of(context)
//       ..hideCurrentSnackBar()
//       ..showSnackBar(SnackBar(content: Text("Couldn't send OTP!!")));
//   }
// }

// Future<void> verifyUserOtp(context, email, otp) async {
//   final bool? verified = await apiClient.verifyEmailOtp(email, otp);
//   if (verified != null && verified) {
//     ScaffoldMessenger.of(context)
//       ..hideCurrentSnackBar()
//       ..showSnackBar(SnackBar(content: Text("Email Verified Successfully!")));
//   } else {
//     ScaffoldMessenger.of(context)
//       ..hideCurrentSnackBar()
//       ..showSnackBar(SnackBar(content: Text("Please Enter the correct OTP!")));
//   }
// }

// Future<void> registerUsers(
//     context, firstname, lastname, String email, pass) async {
//   showLoadingIndicator(context);

//   RegisterResponse? res =
//       await apiClient.registerUser(email, pass, firstname, lastname, context);

//   if (res?.detail != null) {
//     showErrorDialog(
//         context,
//         "Error",
//         res!.detail.toString() == "REGISTER_USER_ALREADY_EXISTS"
//             ? "User already exits.Please Login"
//             : res.detail.toString());
//   } else {
//     if (res?.email != null) {
//       hideLoadingIndicator();

//       Navigator.of(context).pushReplacementNamed(
//           NotificationPermissionScreen.routeName,
//           arguments: email);
//     } else {
//       showErrorDialog(
//           context, "Error", "Registration Failed.Please Try Again!");
//     }
//   }
// }
