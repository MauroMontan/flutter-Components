import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final myFormKey = GlobalKey<FormState>();
    final Map<String, String> formValues = {
      "first_name": "Mauro",
      "lastname": "Anastacio",
      "email": "mauroanastacio@outlook.es",
      "password": "12345",
      "role": "admon"
    };

    return Scaffold(
        appBar: AppBar(
          title: const Text("inputs"),
        ),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Form(
                key: myFormKey,
                child: Column(children: [
                  CustomTextField(
                      hintText: "Nombre",
                      labelText: "Nombre",
                      formPropery: "first_name",
                      formValues: formValues,
                      helperText: "deben ser mas de 3 letras",
                      icon: const Icon(Icons.account_circle_sharp)),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextField(
                    hintText: "Apellido",
                    labelText: "Apellido",
                    helperText: "deben ser mas de 3 letras",
                    icon: const Icon(Icons.family_restroom),
                    formPropery: 'lastname',
                    formValues: formValues,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextField(
                      hintText: "Email",
                      labelText: "Email",
                      helperText: "deben ser mas de 3 letras",
                      icon: const Icon(Icons.email),
                      formPropery: "email",
                      formValues: formValues,
                      type: TextInputType.emailAddress),
                  CustomTextField(
                      isPassword: true,
                      hintText: "Password",
                      formPropery: "password",
                      formValues: formValues,
                      labelText: "Password",
                      helperText: "deben ser mas de 3 letras",
                      icon: const Icon(Icons.password)),
                  DropdownButtonFormField(
                      value: "admin",
                      isDense: true,
                      items: const [
                        DropdownMenuItem(value: "admin", child: Text("admin")),
                        DropdownMenuItem(
                            value: "student", child: Text("Student")),
                        DropdownMenuItem(
                            value: "developer", child: Text("developer")),
                      ],
                      onChanged: (String? value) {
                        print(value);
                        formValues["role"] = value ?? "admin";
                      }),
                  ElevatedButton(
                      onPressed: () {
                        FocusScope.of(context).requestFocus(FocusNode());
                        if (!myFormKey.currentState!.validate()) {
                          print("formulario no valido ");

                          return;
                        }

                        print(formValues);
                      },
                      child: const SizedBox(
                        width: double.infinity,
                        child: Center(
                          child: Text("send"),
                        ),
                      ))
                ]),
              )),
        ));
  }
}

class CustomTextField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final Icon? suffix;
  final Icon? icon;
  final bool isPassword;
  final String? helperText;
  final TextInputType? type;

  final String formPropery;

  final Map<String, String> formValues;

  const CustomTextField(
      {Key? key,
      this.hintText,
      this.labelText,
      this.helperText,
      this.suffix,
      this.icon,
      this.type,
      this.isPassword = false,
      required this.formPropery,
      required this.formValues})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isPassword,
      decoration: InputDecoration(
        labelText: labelText,
        prefixIcon: icon,
        hintText: hintText,
        helperText: helperText,
        suffixIcon: suffix,
      ),
      keyboardType: type,
      textCapitalization: TextCapitalization.words,
      onChanged: (value) {
        formValues[formPropery] = value;
      },
      validator: (value) {
        if (value == null) return "Este campo es requerido";
        return value.length < 3 ? "minimo de 3 letras" : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
    );
  }
}
