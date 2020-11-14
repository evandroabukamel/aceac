import 'package:aceac/screens/components/atoms/body.dart';
import 'package:aceac/screens/components/atoms/go_back.dart';
import 'package:flutter/material.dart';

class AboutView extends StatelessWidget {
  AboutView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Body(
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          GoBack(onPressed: () => Navigator.pop(context)),
          SizedBox(
            height: 20,
          ),
          Text(
            'Informações sobre o projeto',
            style: Theme.of(context).textTheme.headline1,
          ),
          SizedBox(
            height: 20,
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text:
                      'Sabe-se que em tempos de pandemia os níveis de ansiedade da população de forma '
                      'geral estão mais altos, principalmente para os profissionais de saúde que estão na linha '
                      'de frente. Pensando nisso, o autocuidado se faz necessário para promover o bem estar e, '
                      'dentre as formas de chegar a esse ponto há o exercício físico, uma vez que este é capaz '
                      'de liberar substâncias que auxiliam tanto na saúde física quanto na saúde mental. Esse '
                      'app é o produto final fruto da disciplina de Projeto Integrador III da UniFTC, cujo '
                      'objetivo é encontrar soluções para desenvolver o autocuidado em profissionais da '
                      'saúde.',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
