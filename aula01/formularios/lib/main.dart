import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Saudacao SENAI',

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),

        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const SaudacaoPage(),
    );
  }
}

class SaudacaoPage extends StatefulWidget {
  const SaudacaoPage({super.key});

  @override
  State<SaudacaoPage> createState() => _SaudacaoPageState();
}

class _SaudacaoPageState extends State<SaudacaoPage> {
  final TextEditingController _controller = TextEditingController();

  String _mensagem = '';

  void _gerarSaudacao() {
    setState(() {
      final nome = _controller.text.trim();

      _mensagem = nome.isEmpty
          ? 'Digite seu nome para continuar.'
          : 'Ola, $nome! Bem-vindo(a) a aula deFlutter da UNIP.';
    });
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Exercicio 4 - Saudacao')),

      body: Padding(
        padding: const EdgeInsets.all(24.0),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: [
            TextField(
              controller: _controller,

              decoration: const InputDecoration(
                labelText: 'Seu nome',

                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 16),

            ElevatedButton(
              onPressed: _gerarSaudacao,

              child: const Text('Gerarsaudacao'),
            ),

            const SizedBox(height: 24),

            if (_mensagem.isNotEmpty)
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),

                  child: Text(
                    _mensagem,
                    style: const TextStyle(fontSize: 18),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
