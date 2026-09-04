import
'package:flutter/material.dart';



void main() {

  runApp(const LoginApp());

}



class LoginApp extends StatelessWidget {

  const LoginApp({super.key});



  @override

  Widget build(BuildContext context) {

    return MaterialApp(

      debugShowCheckedModeBanner: false,

      home: const LoginPage(),

    );

  }

}



class LoginPage extends StatefulWidget {

  const LoginPage({super.key});



  @override

  State<LoginPage> createState()
=> _LoginPageState();

}



class _LoginPageState extends State<LoginPage> {

  final emailController =
TextEditingController();

  final senhaController =
TextEditingController();



  void realizarLogin() {

    if (emailController.text.isEmpty ||

        senhaController.text.isEmpty) {

     
ScaffoldMessenger.of(context).showSnackBar(

        const SnackBar(

          content: Text('Preencha todosos campos.'),

        ),

      );

      return;

    }



   
ScaffoldMessenger.of(context).showSnackBar(

      const SnackBar(

        content: Text('Login realizadocom sucesso!'),

      ),

    );

  }



  @override

  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(

        title: const Text('Login'),

      ),

      body: Padding(

        padding: const
EdgeInsets.all(25),

        child: Column(

          mainAxisAlignment:
MainAxisAlignment.center,

          children: [

            const Icon(

              Icons.account_circle,

              size: 100,

            ),

            const SizedBox(height: 30),

            TextField(

              controller:
emailController,

              decoration: const
InputDecoration(

                labelText: 'E-mail',

                border:
OutlineInputBorder(),

                prefixIcon:
Icon(Icons.email),

              ),

            ),

            const SizedBox(height: 20),

            TextField(

              controller:
senhaController,

              obscureText: true,

              decoration: const
InputDecoration(

                labelText: 'Senha',

                border:
OutlineInputBorder(),

                prefixIcon:
Icon(Icons.lock),

              ),

            ),

            const SizedBox(height: 25),

            SizedBox(

              width: double.infinity,

              child: ElevatedButton(

                onPressed: realizarLogin,

                child: const
Text('Entrar'),

              ),

            ),

            TextButton(

              onPressed: () {},

              child: const Text('Esqueciminha senha'),

            ),

          ],

        ),

      ),

    );

  }

}