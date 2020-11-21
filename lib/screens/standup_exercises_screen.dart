import 'package:aceac/models/exercise.dart';
import 'package:aceac/screens/views/typed_exercises_view.dart';
import 'package:flutter/material.dart';

///
/// Exercises screen that shows stand-up exercises.
///
class StandupExercisesScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StandupExercisesScreen();
  }
}

class _StandupExercisesScreen extends State<StandupExercisesScreen> {
  final String exercisePlan = 'OBJETIVO: Saúde e bem estar. Relaxamento total.'
      '\nEquipamentos: Local de trabalho, cadeiras, esteira, etc.'
      '\nTempo em cada exercício: entre 15 e 30 segundos.'
      '\nTempo total: Cerca de 15 minutos'
      '\n\nCONTEÚDO'
      '\n\nAlongamento de Antebraço e Flexores do Punho:'
      '\n• Estende o braço e puxa os dedos para trás.'
      '\n\nAlongamento de Pescoço/ Trapézio:'
      '\n• Puxando a cabeça para um lado e depois para o outro;'
      '\n• Espreguiçar (braços para cima).'
      '\n\nAlongamento de Membros Inferiores (posição deitada):'
      '\n• Puxando a perna com o joelho flexionado (uni e bilateral);'
      '\n• Deitado, com a perna para cima e mantém a posição (uni e bilateral);'
      '\n• Pernas alinhadas, flexiona um dos joelhos e puxa para um lado, mantém posição da coluna ereta.'
      '\n\nAlongamento de Membros Inferiores (posição sentada):'
      '\n• Pernas cruzadas, joga o corpo para um lado e depois para outro;'
      '\n• Pernas estendidas e alcance até a ponta dos dedos;'
      '\n• Pernas cruzadas, alcance o máximo que conseguir.'
      '\n\nAlongamento de Membros Inferiores (posição em pé):'
      '\n• Alongamento de Panturrilha;'
      '\n• Puxando a ponta do pé, joelho flexionado.'
      '\n\n';

  final List<Exercise> exercises = [
    Exercise(imagePath: 'assets/images/standup/pos01.png'),
    Exercise(imagePath: 'assets/images/standup/pos02.png'),
    Exercise(imagePath: 'assets/images/standup/pos03.png'),
    Exercise(imagePath: 'assets/images/standup/pos04.png'),
    Exercise(imagePath: 'assets/images/standup/pos05.png'),
    Exercise(imagePath: 'assets/images/standup/pos06.png'),
    Exercise(imagePath: 'assets/images/standup/pos07.png'),
    Exercise(imagePath: 'assets/images/standup/pos08.png'),
    Exercise(imagePath: 'assets/images/standup/pos09.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return TypedExercisesView(
      title: 'PLANO DE GINÁSTICA LABORAL',
      exercisePlan: exercisePlan,
      exercises: exercises,
    );
  }
}
