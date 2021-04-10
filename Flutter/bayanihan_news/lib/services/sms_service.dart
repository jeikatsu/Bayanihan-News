import 'package:twilio_flutter/twilio_flutter.dart';
import 'package:flutter_config/flutter_config.dart';

final TwilioFlutter twilioFlutter = TwilioFlutter(
    accountSid: FlutterConfig.get('accountSid'),
    authToken: FlutterConfig.get('authToken'),
    twilioNumber: FlutterConfig.get('twilioNumber'));

void sendSms(String phone, String message) async {
  twilioFlutter.sendSMS(toNumber: phone, messageBody: message);
}
