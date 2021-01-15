import 'package:flutter/material.dart';
import 'package:teste/app/models/currency_model.dart';

class CurrencyBox extends StatelessWidget {
  final List<CurrencyModel> items;
  final CurrencyModel selectedItem;
  final TextEditingController controller;
  final void Function(CurrencyModel model) onChanged;

  const CurrencyBox(
      {Key key, this.items, this.controller, this.onChanged, this.selectedItem})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              flex: 1,
              child: SizedBox(
                height: 56,
                child: DropdownButton<CurrencyModel>(
                    iconEnabledColor: Colors.amber,
                    isExpanded: true,
                    underline: Container(
                      height: 1,
                      color: Colors.amber,
                    ),
                    items: [
                      DropdownMenuItem(child: Text('Real')),
                      DropdownMenuItem(child: Text('Dolar')),
                      DropdownMenuItem(child: Text('Euro')),
                      DropdownMenuItem(child: Text('Bitcoin'))
                    ],
                    onChanged: onChanged),
              )),
          SizedBox(
            width: 10,
          ),
          Expanded(
            flex: 2,
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.amber)),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.amber))),
            ),
          )
        ],
      ),
    );
  }
}
