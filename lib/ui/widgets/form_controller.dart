import 'package:flutter/material.dart';

class FormController extends ChangeNotifier {
  TextEditingController num1Controller = TextEditingController();
  TextEditingController num2Conroller = TextEditingController();

  RegExp numberRegex = RegExp(r"^[+-]?([0-9]+([.][0-9]*)?|[.][0-9]+)$");

  final formKey = GlobalKey<FormState>();

  String result = "0";

  String? validator(String? value){
    if (value!.isNotEmpty && numberRegex.hasMatch(value)){
      return null;
    } else {
      return 'INGRESA UN NUMERO CORRECTO...';
    }
  }

  void sumar(){
    if (formKey.currentState!.validate()) {
      final num1 = double.parse(num1Controller.text);
      final num2 = double.parse(num2Conroller.text);
      result = '${num1 + num2}';
      notifyListeners();
      num1Controller.clear();
      num1Controller.text = result;
      num2Conroller.clear();
    }
  }

  void restar(){
    if (formKey.currentState!.validate()) {
      final num1 = double.parse(num1Controller.text);
      final num2 = double.parse(num2Conroller.text);
      result = '${num1 - num2}';
      notifyListeners();
      num1Controller.clear();
      num1Controller.text = result;
      num2Conroller.clear();
    }
  }

  void multiplicar(){
    if (formKey.currentState!.validate()) {
      final num1 = double.parse(num1Controller.text);
      final num2 = double.parse(num2Conroller.text);
      result = '${num1 * num2}';
      notifyListeners();
      num1Controller.clear();
      num1Controller.text = result;
      num2Conroller.clear();
    }
  }

  void dividir(){
    if (formKey.currentState!.validate()) {
      final num1 = double.parse(num1Controller.text);
      final num2 = double.parse(num2Conroller.text);
      result = '${num1 / num2}';
      notifyListeners();
      num1Controller.clear();
      num1Controller.text = result;
      num2Conroller.clear();
    }
  }

  void limpiar(){
    result = '0';
    notifyListeners();
    num1Controller.clear();
    num2Conroller.clear();
  }
}