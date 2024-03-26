importação 'dardo: async';

importação 'pacote:flutter/material.dart';

void main() => runApp(const Aplicacao());

classe Aplicacão estende StatelessWidget {
  const Aplicacao({super. .key});

  @override
 Construção de widget (contexto BuildContext) {
    retorno const MaterialApp(casa: HomePage());
  }
}

classe Página inicial estende Peça de larva sem estado {
  const Página inicial({super. .key});

  @override
 Construção de widget (contexto BuildContext) {
    final num1Controler = TextEditingController();
    final num2Controler = TextEditingController();

 retorno Andaime (
 appBar: AppBar(
 título: const Texto("Pergunta e Resposta"),
 fundoCor: Tema.de(contexto).colorScheme.inversePrimary,
 ),
 corpo: Centro(
 criança: Coluna(
 alinhamento fazer eixo principal: MainAxisAlignment.spaceEvenly,
 crianças: [
 Texto(
              "Soma",
 estilo: Tema.de(contexto).textTheme.headlineLarge,
 ),
 Caixa dimensionada(a)
 larga: 250,
 criança: TextField (Campo de Texto)
 controlador: num1Controler,
 decoração: const Decoração de entrada (
 etiquetaTexto: "número 1 ",
 ),
 ),
 ),
 Destinatário (
 criança: const Texto("+"),
 ),
 Caixa dimensionada(a)
 larga: 250,
 criança: TextField (Campo de Texto)
 controlador: num2Controler,
 decoração: const Decoração de entrada (
 etiquetaTexto: "número 2",
 ),
 ),
 ),
 Caixa dimensionada(a)
 larga: 250,
 criança: ElevatedButton (Botão Elevado)
 onPressionado: () =>
 somar (contexto, num1Controler.text, num2Controler.text),
 criança: const Texto("OK"),
 ),
            )
 ],
 ),
 ),
 );
  }

 void somar (contexto BuildContext, String valor1, valor2) {
    // pega daqui o que o usuario digitou no textfield
    final num1 = int.parse(valor1);
    final num2 = int.parse(valor2);

    final total = num1 + num2;

    final mensagem = "Resultado: $total";

 AndaimeMensageiro.de(contexto).showSnackBar(
      // respondor o ususário
 Lanchonete(
 conteúdo: Texto(mensagem),
 ),
 );
  }
}
