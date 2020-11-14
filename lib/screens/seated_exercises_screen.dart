import 'package:aceac/models/exercise.dart';
import 'package:aceac/screens/views/seated_exercises_view.dart';
import 'package:flutter/material.dart';

class _SeatedExercisesScreen extends State<SeatedExercisesScreen> {
  final String exercisePlan = 'OBJETIVO: Saúde e bem estar. Relaxamento total.'
      '\nEquipamentos: Local de trabalho, cadeiras, etc.'
      '\nTempo em cada exercício: entre 15 e 30 segundos.'
      '\nTempo total: Cerca de 15 minutos'
      '\n\nCONTEÚDO'
      '\n\nAlongamento de Pescoço:'
      '\n• Espreguiçar (braços para cima);'
      '\n• Puxando pescoço para baixo;'
      '\n• Olhando para cima (coluna ereta).'
      '\n\nAlongamento de Membros Superiores:'
      '\n• Alongamento de Tríceps (mão nas costas);'
      '\n• Braço estendido parado, segurar na região do cotovelo;'
      '\n• Rotação de punhos (sentido horário e anti-horário);'
      '\n• Alongar punhos (puxando a palma da mão para cima e depois o dorso da mão para baixo).'
      '\n\nAlongamento de Membros Inferiores (pode ser feito em Duplas ou com ajuda de cadeiras):'
      '\n• Agachamento;'
      '\n• Flexão de joelhos;'
      '\n• Flexão de quadril;'
      '\n• Alongamento de panturrilha;'
      '\n• Alongamento de posteriores de coxa (alcance até os pés).'
      '\n\n';

  final List<Exercise> exercises = [
    Exercise(
        imagePath: 'assets/images/seated/pos01.png',
        description: 'Incline a cabeça para baixo e segure com as duas mãos.'),
    Exercise(
        imagePath: 'assets/images/seated/pos02.png',
        description: 'Incline a cabeça para trás, mantendo a boca fechada e o pescoço esticado.'),
    Exercise(
        imagePath: 'assets/images/seated/pos03.png',
        description: 'Com uma das mãos, segure o cotovelo oposto e empurre-o em direção ao meio '
            'das costas. Repita o exercício com o outro braço.'),
    Exercise(
        imagePath: 'assets/images/seated/pos04.png',
        description: 'Mantenha um dos braços esticados para o lado oposto. Alongue-o com a ajuda '
            'do outro braço. Repita o movimento com o outro braço.'),
    Exercise(
        imagePath: 'assets/images/seated/pos05.png',
        description: 'Puxe a cabeça para o lado e cuide para não levar os ombros. Repita o '
            'exercício para o outro lado.'),
    Exercise(
        imagePath: 'assets/images/seated/pos06.png',
        description: 'Entrelace os dedos e na ponta dos pés, estique os braços para cima.'),
    Exercise(
        imagePath: 'assets/images/seated/pos07.png',
        description: 'Estique o braço para frente e dobre o punho para baixo, com a mão '
            'virada para fora. Pressione levemente os dedos até sentir o braço alongar. '
            'Repita o movimento com a mão virada para dentro. Faça nos dois braços.'),
    Exercise(
        imagePath: 'assets/images/seated/pos08.png',
        description: 'Puxe a perna para trás, segurando a ponta do pé. Repita o exercício '
            'com a outra perna.'),
    Exercise(
        imagePath: 'assets/images/seated/pos09.png',
        description: 'Com uma perna esticada à frente, incline o tronco para baixo, tentando '
            'encostar a mão na ponta do pé. A outra perna permanece levemente flexionada. '
            'Repita o exercício com a outra perna.'),
    Exercise(
        imagePath: 'assets/images/seated/pos10.png',
        description: 'Em uma cadeira, gire o tronco para um dos lados e olhe para trás. Repita '
            'o exercício para o outro lado.'),
    Exercise(
        imagePath: 'assets/images/seated/pos11.png',
        description: 'Permaneça sentado e dobre uma perna em cima da outra. Em seguida, '
            'incline o corpo para baixo e deixe os braços soltos.'),
    Exercise(
        imagePath: 'assets/images/seated/pos12.png',
        description: 'Com o corpo de lado para uma parede, estique os braços para trás, mantendo '
            'na altura do ombro. Repita o exercício no outro braço.'),
    Exercise(
        imagePath: 'assets/images/seated/pos13.png',
        description: 'Apóie as mãos numa cadeira e mantenha os braços estidados.'),
    Exercise(
        imagePath: 'assets/images/seated/pos14.png',
        description: 'Ainda sentado, apóie um pé em cima do outro mantendo a perna de baixo '
            'levemente flexionada e a de cima esticada. Leve os braços em direção a pronta do pé. '
            'Repita o exercícios com as pernas invertidas.'),
    Exercise(
        imagePath: 'assets/images/seated/pos15.png',
        description: 'Permaneça sentado e dobre uma perna em cima da outra. Em seguida, encline '
            'o corpo para baixo e deixe os braços soltos.'),
  ];

  @override
  Widget build(BuildContext context) {
    return SeatedExercisesView(
      exercisePlan: exercisePlan,
      exercises: exercises,
    );
  }
}

///
/// Exercises screen where the user can choose between seated or stand-up.
///
class SeatedExercisesScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SeatedExercisesScreen();
  }
}
