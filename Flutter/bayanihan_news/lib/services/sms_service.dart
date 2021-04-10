import 'package:twilio_flutter/twilio_flutter.dart';
// import 'package:flutter_config/flutter_config.dart';

final TwilioFlutter twilioFlutter = TwilioFlutter(
    accountSid: "ACbe69f5a8fe6cb4bb3a2acdc2800c2b3c",
    authToken: "df5b44e4553b4a9f85cf222154b34f43",
    twilioNumber: "+13134665980");

void sendSms(String phone, String message) async {
  twilioFlutter.sendSMS(toNumber: phone, messageBody: message);
}
