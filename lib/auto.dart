import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';


class Autocomplete extends StatefulWidget {
  @override
  _AutocompleteState createState() => _AutocompleteState();
}

class _AutocompleteState extends State<Autocomplete> {
 final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
 final TextEditingController _typeAheadController = TextEditingController(); String _selectedCity;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
  key: this._formKey,
  child: Padding(
    padding: EdgeInsets.all(32.0),
    child: Column(
      children: <Widget>[
        Text(
          'What is your favorite city?'
        ),
        TypeAheadFormField(
          textFieldConfiguration: TextFieldConfiguration(
            controller: this._typeAheadController,
            decoration: InputDecoration(
              labelText: 'City'
            )
          ),          
          suggestionsCallback: (pattern) {
            return CitiesService.getSuggestions(pattern);
          },
          itemBuilder: (context, suggestion) {
            return ListTile(
              title: Text(suggestion),
            );
          },
          transitionBuilder: (context, suggestionsBox, controller) {
            return suggestionsBox;
          },
          onSuggestionSelected: (suggestion) {
            this._typeAheadController.text = suggestion;
          },
          validator: (value) {
            if (value.isEmpty) {
              return 'Please select a city';
            }
          },
          onSaved: (value) => this._selectedCity = value,
        ),
        SizedBox(height: 10.0,),
        RaisedButton(
          child: Text('Submit'),
          onPressed: () {
            if (this._formKey.currentState.validate()) {
              this._formKey.currentState.save();
              Scaffold.of(context).showSnackBar(SnackBar(
                content: Text('Your Favorite City is ${this._selectedCity}')
              ));
            }
          },
        )
      ],
    ),
  ),
)
   );
  }
}