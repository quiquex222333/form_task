import 'package:flutter/material.dart';
import 'package:form_task/ui/widgets/form_controller.dart';

class FormWidget extends StatelessWidget {
  final FormController controller;
  const FormWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
      child: Form(
        key: controller.formKey,
        child: Column(
          children: [
            AnimatedBuilder(
              animation: controller,
              builder: (context, snapshot) {
                return Text(
                  controller.result,
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700
                  ),
                );
              }
            ),
            TextFormField(
              controller: controller.num1Controller,
              validator: (value) => controller.validator(value),

            ),
            TextFormField(
              controller: controller.num2Conroller,
              validator: (value) => controller.validator(value),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () => controller.sumar(),
                  child: const Text('+')
                ),
                ElevatedButton(
                  onPressed: () => controller.restar(),
                  child: const Text('-')
                ),
                ElevatedButton(
                  onPressed: () => controller.multiplicar(),
                  child: const Text('*')
                ),
                ElevatedButton(
                  onPressed: () => controller.dividir(),
                  child: const Text('/')
                ),
                ElevatedButton(
                  onPressed: () => controller.limpiar(),
                  child: const Text('C')
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}