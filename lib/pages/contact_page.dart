import 'package:flutter/material.dart';
import 'package:kedk_portfolio/widgets/text_fields.dart';

import '../const/theme.dart';
import '../service/locator.dart';
import '../service/orientation_service.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return SizedBox(
    //   width: MediaQuery.of(context).size.width * 1 / 2,
    //   child: ContactFormWidget(),
    // );
    return getIt<OrientationService>().isPortait(context)
        ? Column(
            children: [
              const ContactInfoWidget(),
              const SizedBox(height: 20),
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
                  child: ContactFormWidget(),
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
  ContactFormWidget({Key? key}) : super(key: key);

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
                labelText: 'Name',
                controller: _nameController,
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormFieldWidget(
                labelText: 'Email',
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormFieldWidget(
                labelText: 'Your Message',
                controller: _messageController,
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
                onPressed: () {},
                child: const Text('Submit'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
