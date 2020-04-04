import 'package:flutter/material.dart';

void main() => runApp(MyApp());

//Simple enum for RadioListTitle
enum SuperHeroes { SuperMan, Joker }

class MyApp extends StatelessWidget {
  SuperHeroes _superHeros = SuperHeroes.Joker;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.deepOrange,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text("Input Controls"),
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView(
              children: <Widget>[
                textInputSample(),
                simpleTextField(),
                simpleCheckboxList(),
                simpleRadioList(),
                simpleSwichList(),
                simpleSlider()
              ],
            ),
          ),
        ));
  }

  //TextFormField, which is recommended when there are some kind
  //Of validation and use together with a form
  Widget textInputSample() {
    return TextFormField(
        maxLength: 12,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.orangeAccent, width: 2.0)),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.orangeAccent, width: 2.0)),
          labelText: "Password",
          hintText: "Enter your password",
          icon: Icon(Icons.verified_user),
          enabled: true,
        ));
  }

  //Simple textField, recommended only when validation is not a requirement
  //Does not integrate with Form Widget
  Widget simpleTextField() {
    return TextField(
      maxLength: 12,
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderSide: BorderSide(width: 2.0, color: Colors.orangeAccent)),
          labelText: "password",
          hintText: "type your password",
          icon: Icon(Icons.supervised_user_circle)),
    );
  }

  //Simple CheckboxListTile
  Widget simpleCheckboxList() {
    //Checkbox List without State
    return Column(
      children: <Widget>[
        CheckboxListTile(
          title: Text("Checkbox Option 1"),
          secondary: Icon(Icons.cloud_upload),
          value: false,
          onChanged: (bool newVaue) {},
        ),
        CheckboxListTile(
          title: Text("Checkbox Option 2"),
          secondary: Icon(Icons.cloud_upload),
          value: false,
          onChanged: (bool newVaue) {},
        )
      ],
    );
  }

  //Simple RadioListButton without managed state
  Widget simpleRadioList() {
    return Column(
      children: <Widget>[
        RadioListTile(
          title: Text("SuperMan"),
          value: SuperHeroes.Joker,
          groupValue: _superHeros,
        ),
        RadioListTile(
          title: Text("The Joker"),
          value: SuperHeroes.SuperMan,
          groupValue: _superHeros,
        )
      ],
    );
  }

  Widget simpleSwichList() {
    return Column(
      children: <Widget>[
        SwitchListTile(
          title: Text("Max Still Mode"),
          value: false,
          secondary: Icon(Icons.code),
          onChanged: (bool newValue) {},
        ),
        SwitchListTile(
          title: Text("The Legendary"),
          value: false,
          secondary: Icon(Icons.code),
          onChanged: (bool newValue) {},
        )
      ],
    );
  }

  //Simple Slider Widget
  Widget simpleSlider() {
    return Slider(
      max: 1.0,
      min: 0,
      value: 0.5,
      label: "Volume Dynamics",
      onChanged: (newValue) {},
    );
  }
}
