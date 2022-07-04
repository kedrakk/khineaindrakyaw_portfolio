import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kedk_portfolio/providers/text_field_provider.dart';
import 'package:kedk_portfolio/widgets/text_fields.dart';

import '../const/theme.dart';
import '../service/locator.dart';
import '../service/orientation_service.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return getIt<OrientationService>().isPortait(context)
        ? Column(
            children: const [
              ContactInfoWidget(),
              SizedBox(height: 20),
              ContactFormWidget(),
            ],
          )
        : Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 2 / 5,
                child: const ContactInfoWidget(),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(
                    right: MediaQuery.of(context).size.width * 1 / 10,
                  ),
                  child: const ContactFormWidget(),
                ),
              ),
            ],
          );
  }
}

class ContactInfoWidget extends StatelessWidget {
  const ContactInfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Contact Info",
            style: AppThemeData.headline6Theme,
          ),
          const SizedBox(
            height: 10,
          ),
          const Text("I am a mobile developer based in Myanmar."),
        ],
      ),
    );
  }
}

class ContactFormWidget extends StatelessWidget {
  const ContactFormWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: ((context, ref, child) {
        final textFieldsProvider = ref.watch(textFieldNotifier);
        return Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Contact Me',
                style: Theme.of(context).textTheme.headline6,
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  TextFormFieldWidget(
                    labelText: 'Your Name',
                    controller: textFieldsProvider.nameController,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormFieldWidget(
                    labelText: 'Your Message Title',
                    controller: textFieldsProvider.titleController,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormFieldWidget(
                    labelText: 'Your Message Body',
                    controller: textFieldsProvider.messageController,
                    minLines: 3,
                    maxLines: 5,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(
                        Size(
                          double.infinity,
                          MediaQuery.of(context).size.height * 1 / 13,
                        ),
                      ),
                    ),
                    onPressed: () =>
                        ref.read(textFieldNotifier.notifier).sendMail(),
                    child: const Text('Submit'),
                  ),
                ],
              ),
            ],
          ),
        );
      }),
    );
  }
}
