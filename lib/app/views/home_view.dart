import 'package:flutter/material.dart';
import 'package:teste/app/components/currency_box.dart';
import 'package:teste/app/controllers/home_controller.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final TextEditingController toText = TextEditingController();
  final TextEditingController fromText = TextEditingController();

  HomeController homeController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding:
              const EdgeInsets.only(top: 100, left: 30, right: 30, bottom: 20),
          child: Column(
            children: [
              Image.asset(
                'assets/logo.png',
                width: 150,
                height: 150,
              ),
              SizedBox(
                height: 50,
              ),
              CurrencyBox(
                selectedItem: homeController.toCurrency,
                controller: toText,
                onChanged: (model) {
                  print(model.name);
                },
              ),
              SizedBox(
                height: 30,
              ),
              CurrencyBox(
                selectedItem: homeController.fromCurrency,
                controller: fromText,
                onChanged: (model) {},
              ),
              SizedBox(
                height: 50,
              ),
              RaisedButton(
                color: Colors.amber,
                onPressed: () {},
                child: Text('CONVERTER'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
