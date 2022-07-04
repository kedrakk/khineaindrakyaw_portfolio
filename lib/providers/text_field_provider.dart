import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kedk_portfolio/const/string_constants.dart';
import 'package:mailto/mailto.dart';
import 'package:url_launcher/url_launcher.dart';

class TextFieldNotifier extends ChangeNotifier {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();

  TextEditingController get nameController => _nameController;
  TextEditingController get titleController => _titleController;
  TextEditingController get messageController => _messageController;

  void clear() {
    _nameController.clear();
    _titleController.clear();
    _messageController.clear();
    notifyListeners();
  }

  void sendMail() async {
    final mailtoLink = Mailto(
      to: [emailAddress],
      subject: "${_titleController.text} from ${_nameController.text}",
      body: _messageController.text,
    );
    await launchUrl(
      Uri.parse(mailtoLink.toString()),
    );
    clear();
  }
}

final textFieldNotifier = ChangeNotifierProvider<TextFieldNotifier>((ref) {
  return TextFieldNotifier();
});
