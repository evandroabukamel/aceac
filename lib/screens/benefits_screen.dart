import 'package:aceac/models/benefit.dart';
import 'package:aceac/screens/views/benefits_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

///
/// Screen telling benefits and curiosities.
///
class BenefitsScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BenefitsScreen();
  }
}

class _BenefitsScreen extends State<BenefitsScreen> {
  final Benefit about = Benefit(
    title: 'Sobre a ginástica laboral',
    description:
        'A ginástica laboral é planejada e aplicada no ambiente de trabalho '
        'durante o expediente buscando criar um espaço, no qual os trabalhadores, '
        'por livre e espontânea vontade, exerçam várias atividades e exercícios '
        'físicos, que são muito mais do que um condicionamento mecanicista, '
        'repetitivo e autômato. A ginástica labora deve ser bem planejada e variada, '
        'já que é uma pausa ativa no trabalho e serve para quebrar o ritmo da tarefa '
        'que o trabalhador desempenha, funcionando como ruptura motora.',
  );

  final List<Benefit> benefits = [
    Benefit(
        title: 'Resposta imune',
        description:
            '1º Ao praticarmos alguma atividade física, ocorre uma resposta '
            'natural do organismo denominada estresse físico e que vai atuar em '
            'vários pontos numa complexa sequência de eventos denominada resposta '
            'imune. Dentro desta, determinados parâmetros imunes (como número de '
            'células, função celular e resposta celular) vão responder '
            'diferentemente ao tipo de atividade física realizada. Em geral, '
            'a natureza e a magnitude das mudanças ocorridas vão depender de diversos '
            'fatores, sendo os principais: \n'
            '\n• Tipo de atividade física, a intensidade e a duração da mesma; '
            '\n• Nível de condicionamento e passado atlético do indivíduo; '
            '\n• Fatores ambientais; '
            '\n• Horário de realização da atividade física. '
            '\n\nA prática constante de atividades físicas (como em um programa de '
            'treinamento) promove as mesmas mudanças no número e função das células '
            'circulantes do sistema imune, observadas durante atividade física imediata.'
            '\n\nProf. Dr. Turíbio Leite de Barros Neto'),
    Benefit(
        title: 'Concentrando-se no exercício',
        description:
            '2º A evidência sugere que, concentrando-se realmente em seu corpo '
            'e como se sente à medida que se exercita, você pode realmente ajudar '
            'seu sistema nervoso e começar a emitir resposta ao estímulo de '
            'imobilização que caracteriza o trauma. Em vez de pensar em outras coisas, '
            'preste muita atenção às sensações físicas em suas articulações e músculos, '
            'até mesmo o seu interior enquanto seu corpo se move. Exercícios que '
            'envolvem movimento cruzado e que envolvem os braços e as pernas – '
            'como caminhar (especialmente na areia), correr, nadar, musculação ou dançar '
            '– são algumas de suas melhores escolhas.'
            '\n\nFonte: Serviço de Fisioterapia do Hospital Santa Mônica e Helpguide.org'),
    Benefit(
        title: 'Ações sobre a função cognitiva',
        description:
            '3º A ação do exercício físico sobre a função cognitiva pode ser '
            'direta ou indireta. Além disso, estudiosos tem sugerido alguns '
            'mecanismos que seriam responsáveis por mediar os efeitos do exercício '
            'sobre as funções cognitivas. Dessa forma, acredita-se que o exercício físico '
            'poderia aumentar o fluxo sanguíneo cerebral e, consequentemente, de '
            'oxigênio e outros substratos energéticos, proporcionando assim a '
            'melhora da função cognitiva. Outra hipótese que tem sido formulada '
            'diz respeito aos efeitos do estresse oxidativo sobre o Sistema Nervoso '
            'Central, de modo que a prática de exercício físico aeróbico poderia aumentar '
            'a atividade de enzimas antioxidantes de forma semelhante ao que acontece '
            'em outros tecidos como no músculo esquelético, aumentando a capacidade de '
            'defesa contra os danos provocados por espécies reativas de oxigênio.'
            '\n\nAlém disso, não pode ser descartada a hipótese de que o exercício físico, '
            'por si só, aumenta a liberação de diversos neurotransmissores como aumento '
            'nas concentrações de norepinefrina e seus precursores, aumento nas '
            'concentrações de serotonina e ß-endorfinas após uma sessão aguda de '
            'exercício. Mesmo após um período de treinamento, uma sessão aguda de '
            'exercício aumenta a concentração de norepinefrina em seres humanos e '
            'outros animais. Estudos demonstraram que o exercício físico aumenta a '
            'densidade vascular no córtex cerebelar de roedores submetidos a '
            'exercício físico, além de manter a integridade cerebrovascular, evitando '
            'a diminuição da circulação cerebral por efeitos adversos.'
            '\n\nFonte: https://www.redalyc.org/pdf/842/84217984006.pdf'),
  ];

  @override
  Widget build(BuildContext context) {
    return BenefitsView(
      about: about,
      benefits: benefits,
    );
  }
}
