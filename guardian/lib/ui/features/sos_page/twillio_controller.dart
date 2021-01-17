import 'package:get/get.dart';
import 'package:twilio_flutter/twilio_flutter.dart';

class TwillioController extends GetxController{

  TwilioFlutter twilioFlutter;

  TwillioController(){
    twilioFlutter = TwilioFlutter(
        accountSid: 'ACc39ae0a6e279426f786d31cae1b55076',
        authToken: '4523031c0c9e048fa5674fe2237b1b35',
        twilioNumber: '+19729921379');
  }

  void sendSms() async {
    twilioFlutter.sendSMS(
        toNumber: '+8801531725630',
        messageBody: 'Hello from Guardian!');
  }

}