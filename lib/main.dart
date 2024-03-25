import 'package:flutter/material.dart';

void main() => runApp(const Aplicacao());

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Soma",
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            SizedBox(
              width: 250,
              child: TextField(
                controller: controller,
                decoration: const InputDecoration(
                  labelText: "N 1",
                ),
              ),
            ),
            SizedBox(
              width: 250,
              child: TextField(
                controller: controller,
                decoration: const InputDecoration(
                  labelText: "N 2",
                ),
              ),
            ),
            SizedBox(
              width: 250,
              child: ElevatedButton(
                  onPressed: () => cumprimenta(context, controller),
                  child: const Text("Resultado: ")),
            ),
          ],
        ),
      ),
    );
  }

//Vê no chatgpt esse código abaixo
  void cumprimenta(BuildContext context, TextEditingController controller) {
    final num1 = int.parse(controller.text);
    final num2 = int.parse(controller.text);
    final resultado = num1 + num2;

    final messagem = "Resultado: $resultado!";

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(messagem)),
    );
  }
}
