import 'package:github_portfolio/models/global_variables.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:mailto/mailto.dart';

class CustomLaunchUrl {
  static Future<void> customLaunchUrl(String goToUrl) async {
    Uri url = Uri.parse(goToUrl);
    if(!await launchUrl(url)){
    }
  }
  static launchMailto() async {
    final mailtoLink = Mailto(
      to: [mailTo],
      subject: mailSubject,
      body: mailBody,
    );
    await customLaunchUrl("$mailtoLink");
  }
}
