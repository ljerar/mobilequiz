import 'package:flutter/material.dart';

class Question {
  final String questionText;
  final List<String> answers;
  final int correctAnswerIndex;

  const Question({
    required this.questionText,
    required this.answers,
    required this.correctAnswerIndex,
  });
}

class QuizTopic {
  final String title;
  final String description;
  final IconData icon;
  final List<Question> questions;

  const QuizTopic({
    required this.title,
    required this.description,
    required this.icon,
    required this.questions,
  });
}

// Lista de tópicos com 10 perguntas pra cada.

final List<QuizTopic> mockTopics = [
  // Tópico 1: Menstruação
  QuizTopic(
    title: 'Menstruação',
    description: 'Tudo sobre o ciclo menstrual.',
    icon: Icons.water_drop_outlined,
    questions: [
      Question(
        questionText: 'O que é a menstruação?',
        answers: [
          'A liberação de um óvulo pelo ovário',
          'O sangramento mensal, parte do ciclo reprodutivo',
          'O início da gravidez',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'Qual é a duração média de um ciclo menstrual?',
        answers: ['14 dias', '28 dias', '35 dias', '40 dias'],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'O que significa "TPM"?',
        answers: [
          'Tensão Pré-Menstrual',
          'Tempo Pós-Menopausa',
          'Teste Padrão Mensal',
        ],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText: 'Um ciclo menstrual é contado a partir de...',
        answers: [
          'O último dia de sangramento',
          'O primeiro dia de sangramento',
          'O dia da ovulação',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'O que é a ovulação?',
        answers: [
          'O fim do ciclo menstrual',
          'O período de sangramento intenso',
          'A liberação de um óvulo pelo ovário',
        ],
        correctAnswerIndex: 2,
      ),
      Question(
        questionText: 'É possível engravidar durante a menstruação?',
        answers: [
          'Sim, embora menos provável',
          'Não, é impossível',
          'Somente se o ciclo for irregular',
        ],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText: 'O que é um coletor menstrual?',
        answers: [
          'Um tipo de calcinha absorvente',
          'Um copinho de silicone inserido na vagina para coletar o fluxo',
          'Um medicamento para cólica',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'Cólicas menstruais muito fortes são...',
        answers: [
          'Sempre normais, fazem parte',
          'Um sinal de alerta para procurar um médico',
          'Um sinal de gravidez',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'O que é a menarca?',
        answers: [
          'A primeira menstruação',
          'A última menstruação (menopausa)',
          'O período fértil do mês',
        ],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText: 'A cor do sangue menstrual pode variar?',
        answers: [
          'Não, é sempre vermelho vivo',
          'Sim, de vermelho vivo a marrom escuro, e é normal',
          'Sim, mas apenas se houver uma infecção',
        ],
        correctAnswerIndex: 1,
      ),
    ],
  ),
  // Tópico 2: ISTs
  QuizTopic(
    title: 'ISTs',
    description: 'Sobre Infecções Sexualmente Transmissíveis.',
    icon: Icons.shield_outlined,
    questions: [
      Question(
        questionText: 'O que significa a sigla IST?',
        answers: [
          'Infecção Sexualmente Transmissível',
          'Insuficiência Sanguínea Total',
          'Interrupção Sistêmica Temporária',
        ],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText:
            'Qual é a forma MAIS eficaz de prevenir a maioria das ISTs?',
        answers: [
          'Tomar pílula anticoncepcional',
          'Usar preservativo (camisinha)',
          'Lavar-se após a relação',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'Qual destas ISTs é causada por um vírus?',
        answers: ['Sífilis', 'Gonorreia', 'Herpes'],
        correctAnswerIndex: 2,
      ),
      Question(
        questionText: 'A Clamídia e a Gonorreia podem causar infertilidade?',
        answers: [
          'Sim, se não tratadas corretamente',
          'Não, elas afetam apenas a pele',
          'Apenas em homens',
        ],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText:
            'Qual IST é conhecida por ter várias fases (primária, secundária, terciária)?',
        answers: ['HPV', 'Sífilis', 'Candidíase'],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'O HIV é o vírus que causa qual doença?',
        answers: ['Hepatite', 'Herpes', 'AIDS'],
        correctAnswerIndex: 2,
      ),
      Question(
        questionText: 'É possível ter uma IST e não apresentar sintomas?',
        answers: [
          'Sim, muitas ISTs são assintomáticas',
          'Não, todas causam dor ou coceira imediatas',
          'Apenas por alguns dias',
        ],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText:
            'O "sangue no teste" é a única forma de diagnosticar todas as ISTs?',
        answers: [
          'Sim, todas são vistas no exame de sangue',
          'Não, exames de urina, físicos e de secreção também são usados',
          'Sim, e precisa estar em jejum',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'Qual o principal sintoma do Herpes Genital?',
        answers: [
          'Febre alta e tosse',
          'Pequenas bolhas ou feridas dolorosas na região genital',
          'Manchas vermelhas no peito',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'Existe vacina para alguma IST?',
        answers: [
          'Sim, para HPV e Hepatite B',
          'Não, para nenhuma',
          'Sim, apenas para HIV',
        ],
        correctAnswerIndex: 0,
      ),
    ],
  ),
  // Tópico 3: Métodos Contraceptivos
  QuizTopic(
    title: 'Métodos Contraceptivos',
    description: 'Como previnir a gravidez.',
    icon: Icons.event_available_outlined,
    questions: [
      Question(
        questionText: 'Qual método contraceptivo também protege contra ISTs?',
        answers: [
          'Pílula anticoncepcional',
          'DIU de cobre',
          'Preservativo (camisinha)',
        ],
        correctAnswerIndex: 2,
      ),
      Question(
        questionText: 'O que é o DIU?',
        answers: [
          'Um comprimido tomado diariamente',
          'Um Dispositivo Intrauterino',
          'Uma injeção mensal',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'A pílula anticoncepcional age...',
        answers: [
          'Matando os espermatozoides',
          'Principalmente impedindo a ovulação',
          'Criando uma barreira física no útero',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText:
            'A "pílula do dia seguinte" é um método contraceptivo de rotina?',
        answers: [
          'Sim, pode substituir a pílula normal',
          'Não, é um método de emergência',
          'Sim, mas só funciona if tomada pela manhã',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'Qual é um exemplo de método contraceptivo de barreira?',
        answers: ['Laqueadura', 'Pílula', 'Diafragma'],
        correctAnswerIndex: 2,
      ),
      Question(
        questionText: 'A laqueadura é um método...',
        answers: [
          'Facilmente reversível',
          'Hormonal de curta duração',
          'Considerado permanente (esterilização)',
        ],
        correctAnswerIndex: 2,
      ),
      Question(
        questionText:
            'O coito interrompido (retirar o pênis antes de ejacular) é um método seguro?',
        answers: [
          'Sim, 100% eficaz se feito corretamente',
          'Não, é um dos métodos menos eficazes',
          'Sim, se o homem tiver autocontrole',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'O DIU de cobre funciona...',
        answers: [
          'Liberando hormônios para impedir a ovulação',
          'Criando uma reação que impede a fecundação',
          'Apenas engrossando o muco cervical',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'O implante contraceptivo (Implanon) é inserido...',
        answers: ['No útero', 'No braço', 'No ombro'],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText:
            'Métodos "comportamentais" (tabelinha, temperatura basal) são...',
        answers: [
          'Tão eficazes quanto a pílula',
          'Menos eficazes e exigem muito rigor',
          'Impossíveis de funcionar',
        ],
        correctAnswerIndex: 1,
      ),
    ],
  ),
  // Tópico 4: Menopausa
  QuizTopic(
    title: 'Menopausa',
    description: 'A fase de transição hormonal.',
    icon: Icons.elderly_woman_outlined,
    questions: [
      Question(
        questionText: 'O que é a menopausa?',
        answers: [
          'A primeira menstruação',
          'A última menstruação, marcando o fim da fase reprodutiva',
          'Um período de alta fertilidade',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'Qual é um sintoma muito comum da menopausa?',
        answers: [
          'Ondas de calor (fogachos)',
          'Aumento da altura',
          'Crescimento de novos dentes',
        ],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText: 'A menopausa ocorre devido à...',
        answers: [
          'Diminuição dos hormônios (estrogênio e progesterona)',
          'Uma infecção viral',
          'Excesso de exercício físico',
        ],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText: 'O que é o climatério?',
        answers: [
          'O mesmo que menopausa',
          'A fase de transição que antecede e sucede a menopausa',
          'Um sinônimo de TPM',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'Qual a idade média para a menopausa ocorrer?',
        answers: ['20-30 anos', '30-40 anos', '45-55 anos'],
        correctAnswerIndex: 2,
      ),
      Question(
        questionText: 'Terapia de Reposição Hormonal (TRH) é indicada para...',
        answers: [
          'Todas as mulheres, sem exceção',
          'Algumas mulheres, para aliviar sintomas intensos, com avaliação médica',
          'Apenas para prevenir gravidez após os 50',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'A menopausa aumenta o risco de qual condição óssea?',
        answers: ['Osteoporose', 'Artrite', 'Escoliose'],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText: 'O que é "menopausa precoce"?',
        answers: [
          'Menstruar pela primeira vez muito cedo',
          'A menopausa ocorrer antes dos 40 anos',
          'A menopausa ocorrer após os 60 anos',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText:
            'Lubrificantes íntimos são recomendados na menopausa para...',
        answers: [
          'Prevenir ISTs',
          'Combater o ressecamento vaginal',
          'Substituir a higiene diária',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: '"Fogachos" é o nome popular dado para...',
        answers: [
          'Dores de cabeça intensas',
          'Ondas de calor súbitas',
          'Cãibras nas pernas durante a noite',
        ],
        correctAnswerIndex: 1,
      ),
    ],
  ),
  // Tópico 5: Exames Ginecológicos
  QuizTopic(
    title: 'Exames Ginecológicos',
    description: 'A importância da prevenção.',
    icon: Icons.medical_services_outlined,
    questions: [
      Question(
        questionText: 'Qual exame previne o câncer de colo do útero?',
        answers: [
          'Exame de sangue',
          'Papanicolau (Preventivo)',
          'Ultrassom da tireoide',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText:
            'Com que frequência uma mulher adulta deve ir ao ginecologista?',
        answers: [
          'Apenas se sentir dor',
          'A cada 5 anos',
          'Geralmente, uma vez ao ano para check-up',
        ],
        correctAnswerIndex: 2,
      ),
      Question(
        questionText: 'O que o Papanicolau detecta?',
        answers: [
          'Gravidez',
          'Nível de açúcar no sangue',
          'Alterações nas células do colo do útero',
        ],
        correctAnswerIndex: 2,
      ),
      Question(
        questionText:
            'Qual exame é usado para visualizar útero e ovários internamente?',
        answers: ['Raio-X', 'Ultrassom transvaginal', 'Exame de urina'],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'Para fazer o Papanicolau, a mulher NÃO deve...',
        answers: [
          'Estar menstruada ou ter tido relações 48h antes',
          'Ter comido doces',
          'Ter bebido água',
        ],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText: 'A mamografia é um exame para rastrear o quê?',
        answers: ['Problemas no coração', 'Câncer de mama', 'Cistos no ovário'],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText:
            'A partir de qual idade, geralmente, se recomenda a mamografia de rotina?',
        answers: [
          '20 anos',
          '30 anos',
          '40 ou 50 anos, dependendo da orientação',
        ],
        correctAnswerIndex: 2,
      ),
      Question(
        questionText: 'O que é a colposcopia?',
        answers: [
          'Um exame que usa um tipo de microscópio para ver o colo do útero',
          'Uma cirurgia para retirar o útero',
          'Um exame de sangue para ISTs',
        ],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText: 'O autoexame das mamas substitui a mamografia?',
        answers: [
          'Sim, é mais eficaz',
          'Não, mas é importante para o autoconhecimento e detecção de nódulos',
          'Sim, se feito todo dia',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'Exames de sangue ginecológicos podem checar o quê?',
        answers: [
          'Apenas tipo sanguíneo',
          'Níveis hormonais, ISTs (como HIV e Sífilis) e anemia',
          'Apenas a saúde dos ossos',
        ],
        correctAnswerIndex: 1,
      ),
    ],
  ),
  // Tópico 6: HPV
  QuizTopic(
    title: 'HPV',
    description: 'Sobre o Papilomavírus Humano.',
    icon: Icons.coronavirus_outlined,
    questions: [
      Question(
        questionText: 'O que o HPV pode causar?',
        answers: [
          'Apenas gripe',
          'Verrugas genitais e alguns tipos de câncer',
          'Cáries e aftas',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'Existe vacina contra o HPV?',
        answers: [
          'Não, apenas tratamento',
          'Sim, e é muito recomendada para adolescentes',
          'Sim, mas apenas para homens',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'Qual a principal forma de transmissão do HPV?',
        answers: [
          'Pelo ar',
          'Contato sexual (pele/mucosa)',
          'Picada de inseto',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'O uso de preservativo (camisinha) previne 100% o HPV?',
        answers: [
          'Sim, totalmente',
          'Não, pois o vírus pode estar em áreas não cobertas, mas reduz muito o risco',
          'Camisinha não protege contra vírus',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText:
            'Qual exame detecta lesões no colo do útero causadas pelo HPV?',
        answers: ['Exame de sangue', 'Papanicolau', 'Exame de urina'],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'Todos os tipos de HPV causam câncer?',
        answers: [
          'Sim, todos são cancerígenos',
          'Não, existem tipos de baixo risco (causam verrugas) e alto risco (câncer)',
          'Sim, mas apenas em mulheres',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'É possível ter HPV e não ter sintomas?',
        answers: [
          'Sim, a maioria das infecções é assintomática',
          'Não, sempre causa verrugas visíveis',
          'Não, sempre causa febre',
        ],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText: 'O HPV tem cura?',
        answers: [
          'Não, uma vez infectado, é para sempre',
          'Na maioria dos casos, o sistema imunológico elimina o vírus sozinho',
          'Sim, com antibióticos',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'A vacina do HPV é indicada para quem?',
        answers: [
          'Apenas para mulheres adultas',
          'Apenas para quem já teve verrugas',
          'Principalmente para meninas e meninos antes do início da vida sexual',
        ],
        correctAnswerIndex: 2,
      ),
      Question(
        questionText: 'As verrugas genitais do HPV são chamadas de...',
        answers: ['Herpes', 'Condiloma acuminado', 'Sífilis primária'],
        correctAnswerIndex: 1,
      ),
    ],
  ),
  // Tópico 7: Cisto no Ovário
  QuizTopic(
    title: 'Cisto no Ovário',
    description: 'Entendendo os cistos ovarianos.',
    icon: Icons.bubble_chart_outlined,
    questions: [
      Question(
        questionText: 'Cistos no ovário são sempre um sinal de câncer?',
        answers: [
          'Sim, todo cisto é câncer',
          'Não, a grande maioria dos cistos é benigna (funcional)',
          'Apenas se forem grandes',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'Qual exame é mais usado para ver um cisto no ovário?',
        answers: ['Raio-X do peito', 'Ultrassom pélvico', 'Exame de urina'],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'O que é um "cisto funcional"?',
        answers: [
          'Um cisto que precisa de cirurgia',
          'Um cisto relacionado ao ciclo menstrual (ovulação) que somesome sozinho',
          'Um cisto que causa infertilidade',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'Qual o principal sintoma de um cisto ovariano rompido?',
        answers: [
          'Dor pélvica súbita e intensa',
          'Tosse seca',
          'Manchas na pele',
        ],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText:
            'Ter cisto no ovário é o mesmo que ter SOP (Síndrome do Ovário Policístico)?',
        answers: [
          'Sim, são a mesma coisa',
          'Não, a SOP é um distúrbio hormonal; ter um cisto isolado é diferente',
          'Sim, e o tratamento é igual',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'Cistos ovarianos podem causar dor?',
        answers: [
          'Não, são sempre indolores',
          'Sim, especialmente se forem grandes, torcidos ou rompidos',
          'Apenas durante a menstruação',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'O que é um "teratoma"?',
        answers: [
          'Um tipo de cisto que pode conter tecidos (cabelo, dentes)',
          'O hormônio da gravidez',
          'Um cisto que só dá em grávidas',
        ],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText: 'Qual o tratamento para a maioria dos cistos funcionais?',
        answers: [
          'Cirurgia imediata',
          'Quimioterapia',
          'Observação, pois eles costumam desaparecer sozinhos',
        ],
        correctAnswerIndex: 2,
      ),
      Question(
        questionText: 'Cistos no ovário podem afetar a menstruação?',
        answers: [
          'Sim, podem causar atrasos ou irregularidade',
          'Não, não têm relação com o ciclo',
          'Apenas se a mulher estiver grávida',
        ],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText: 'O que é "torção ovariana"?',
        answers: [
          'Uma emergência médica onde o ovário gira, cortando o fluxo de sangue',
          'Um tipo de exercício pélvico',
          'Um sintoma leve da menopausa',
        ],
        correctAnswerIndex: 0,
      ),
    ],
  ),
  // Tópico 8: Endometriose
  QuizTopic(
    title: 'Endometriose',
    description: 'Uma condição crônica.',
    icon: Icons.sick_outlined,
    questions: [
      Question(
        questionText: 'O que é endometriose?',
        answers: [
          'O tecido do útero (endométrio) cresce fora dele',
          'Uma infecção bacteriana',
          'Um tipo de cisto no ovário',
        ],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText: 'Qual é o sintoma mais comum da endometriose?',
        answers: [
          'Dor de cabeça',
          'Tosse seca',
          'Cólica menstrual muito intensa e dor pélvica',
        ],
        correctAnswerIndex: 2,
      ),
      Question(
        questionText: 'A endometriose pode causar infertilidade?',
        answers: [
          'Sim, é uma das causas de dificuldade para engravidar',
          'Não, ela não afeta a fertilidade',
          'Apenas se a mulher tiver mais de 40 anos',
        ],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText: 'Onde os focos de endometriose são mais comuns?',
        answers: [
          'Nos pulmões e cérebro',
          'Nos ovários, trompas e peritônio (membrana da pelve)',
          'Na pele e unhas',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText:
            'Qual o exame de imagem padrão-ouro para mapear a endometriose profunda?',
        answers: [
          'Raio-X de tórax',
          'Exame de urina',
          'Ressonância Magnética da pelve',
        ],
        correctAnswerIndex: 2,
      ),
      Question(
        questionText: 'Endometriose tem cura?',
        answers: [
          'Sim, com antibióticos',
          'Não tem cura definitiva, mas tem tratamento para controlar os sintomas',
          'Sim, basta engravidar',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText:
            'A gravidade da dor na endometriose é sempre proporcional à quantidade de lesões?',
        answers: [
          'Sim, muita dor significa muitas lesões',
          'Não, mulheres com poucas lesões podem ter muita dor, e vice-versa',
          'Sim, é uma relação direta',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'Qual é um sintoma intestinal comum da endometriose?',
        answers: [
          'Dor para evacuar, especialmente durante a menstruação',
          'Azia',
          'Fome excessiva',
        ],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText: 'O tratamento da endometriose pode envolver...',
        answers: [
          'Apenas chás caseiros',
          'Medicamentos (hormônios) e, em alguns casos, cirurgia',
          'Apenas repouso',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'O que é um "endometrioma"?',
        answers: [
          'O sintoma de dor de cabeça',
          'Um cisto de endometriose no ovário (com aspecto de chocolate)',
          'O médico especialista em endometriose',
        ],
        correctAnswerIndex: 1,
      ),
    ],
  ),
  // Tópico 9: Síndrome do Ovário Policístico
  QuizTopic(
    title: 'Síndrome do Ovário Policístico',
    description: 'Conhecida como SOP.',
    icon: Icons.scatter_plot_outlined,
    questions: [
      Question(
        questionText: 'O que é a SOP (Síndrome do Ovário Policístico)?',
        answers: [
          'Uma infecção viral',
          'Um desequilíbrio hormonal',
          'Uma alergia a glúten',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'Qual é um sintoma comum da SOP?',
        answers: [
          'Ciclos menstruais irregulares ou ausentes',
          'Dores nos pés',
          'Visão embaçada',
        ],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText:
            'A SOP está frequentemente associada a qual condição metabólica?',
        answers: ['Resistência à insulina', 'Asma', 'Rinite alérgica'],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText: 'O que é "hirsutismo", um sintoma da SOP?',
        answers: [
          'Queda de cabelo',
          'Aumento de pelos no rosto, peito e costas',
          'Pele seca',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText:
            'Ter "ovários policísticos" no ultrassom é o mesmo que ter SOP?',
        answers: [
          'Sim, é o único critério',
          'Não, é apenas um dos critérios; precisa de outros sintomas (hormonais/clínicos)',
          'Sim, e sempre precisa de cirurgia',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'Qual é a principal causa da SOP?',
        answers: [
          'É complexa, envolvendo fatores genéticos e hormonais',
          'Comer muito doce',
          'Não praticar exercício',
        ],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText: 'O tratamento da SOP foca em...',
        answers: [
          'Apenas tomar pílula anticoncepcional',
          'Controlar os sintomas e melhorar o estilo de vida (dieta/exercício)',
          'Tomar antibióticos',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'A SOP pode dificultar a gravidez?',
        answers: [
          'Não, não afeta a fertilidade',
          'Sim, pois pode impedir a ovulação regular',
          'Sim, mas apenas em mulheres magras',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'Qual outro sintoma de pele é comum na SOP?',
        answers: ['Acne persistente (espinhas)', 'Vitiligo', 'Psoríase'],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText: 'Mulheres com SOP têm maior risco de desenvolver...',
        answers: ['Diabetes tipo 2', 'Gripe', 'Pedra nos rins'],
        correctAnswerIndex: 0,
      ),
    ],
  ),
  // Tópico 10: Puberdade
  QuizTopic(
    title: 'Puberdade',
    description: 'As mudanças no corpo.',
    icon: Icons.escalator_warning_outlined,
    questions: [
      Question(
        questionText: 'O que marca o início da puberdade feminina?',
        answers: [
          'O crescimento dos seios (telarca)',
          'O primeiro beijo',
          'A primeira nota boa na escola',
        ],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText: 'A menarca é...',
        answers: [
          'A primeira menstruação',
          'O crescimento de pelos pubianos',
          'O aumento de peso',
        ],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText:
            'Qual hormônio é o principal responsável pela puberdade feminina?',
        answers: ['Testosterona', 'Estrogênio', 'Cortisol'],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'O que é a "pubarca"?',
        answers: [
          'O surgimento de pelos pubianos',
          'A primeira menstruação',
          'O crescimento dos seios',
        ],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText:
            'É normal a menstruação ser irregular nos primeiros anos após a menarca?',
        answers: [
          'Não, deve ser regular desde o início',
          'Sim, é muito comum levar um tempo para o ciclo regularizar',
          'Apenas se houver alguma doença',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'A puberdade ocorre em que faixa etária, em média?',
        answers: [
          'Entre 5 e 7 anos',
          'Entre 8 e 13 anos',
          'Entre 15 e 18 anos',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'O que é o "estirão do crescimento"?',
        answers: [
          'Um período de rápido aumento na altura',
          'O aumento dos seios',
          'O surgimento da acne',
        ],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText: 'Além dos seios, o que mais muda no corpo feminino?',
        answers: [
          'Alargamento dos quadris e redistribuição de gordura',
          'Diminuição dos pés',
          'Mudança na cor dos olhos',
        ],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText:
            'O surgimento de acne (espinhas) na puberdade é causado por...',
        answers: [
          'Falta de higiene',
          'Alterações hormonais que aumentam a oleosidade da pele',
          'Comer chocolate',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'A puberdade afeta apenas o corpo?',
        answers: [
          'Sim, só o físico',
          'Não, também envolve grandes mudanças emocionais e sociais',
          'Sim, e dura apenas 6 meses',
        ],
        correctAnswerIndex: 1,
      ),
    ],
  ),
  // Tópico 11: Conhecendo o corpo
  QuizTopic(
    title: 'Conhecendo o corpo',
    description: 'Anatomia e autoconhecimento.',
    icon: Icons.accessibility_new_outlined,
    questions: [
      Question(
        questionText: 'A vulva é...',
        answers: [
          'A parte interna (canal vaginal)',
          'A parte externa da genitália feminina (lábios, clitóris)',
          'O mesmo que o útero',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'Onde fica o clitóris?',
        answers: [
          'Dentro do útero',
          'Na parte superior da vulva, focado no prazer',
          'Próximo ao ânus',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'O que é a vagina?',
        answers: [
          'A parte externa que vemos',
          'O canal muscular que liga a vulva ao colo do útero',
          'O órgão que produz óvulos',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'Onde fica o colo do útero (cérvix)?',
        answers: [
          'Na parte de fora da vulva',
          'Na parte de cima do abdômen',
          'No fundo da vagina, sendo a "entrada" para o útero',
        ],
        correctAnswerIndex: 2,
      ),
      Question(
        questionText: 'Quantas aberturas tem a vulva?',
        answers: [
          'Uma (vagina)',
          'Duas (vagina e ânus)',
          'Três (uretra, vagina e ânus)',
        ],
        correctAnswerIndex: 2,
      ),
      Question(
        questionText: 'Por onde sai a urina (xixi)?',
        answers: ['Pela vagina', 'Pela uretra', 'Pelo clitóris'],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'O que são os ovários?',
        answers: [
          'Dois órgãos que armazenam e liberam os óvulos',
          'Os canais que levam o óvulo ao útero',
          'A parte de fora da vulva',
        ],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText: 'O que é o hímen?',
        answers: [
          'Uma membrana fina na entrada da vagina, presente em algumas mulheres',
          'O órgão responsável pelo prazer',
          'O local onde o bebê cresce',
        ],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText: 'O que são as trompas de Falópio?',
        answers: [
          'O mesmo que os ovários',
          'Os canais onde geralmente ocorre a fecundação (encontro do óvulo e espermatozoide)',
          'Os músculos da vagina',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'Onde o bebê se desenvolve durante a gravidez?',
        answers: ['No ovário', 'Na vagina', 'No útero'],
        correctAnswerIndex: 2,
      ),
    ],
  ),
  // Tópico 12: Cesárea vs Parto Normal
  QuizTopic(
    title: 'Cesárea vs Parto Normal',
    description: 'Tipos de parto.',
    icon: Icons.baby_changing_station_outlined,
    questions: [
      Question(
        questionText:
            'Qual tipo de parto geralmente tem uma recuperação mais rápida para a mãe?',
        answers: ['Parto Normal (vaginal)', 'Cesárea', 'Ambos são iguais'],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText: 'A cesárea é...',
        answers: [
          'Sempre a melhor opção',
          'Uma cirurgia abdominal para o nascimento do bebê',
          'Um parto sem dor alguma',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'O que é o "trabalho de parto"?',
        answers: [
          'O processo de contrações que dilatam o colo do útero para o parto normal',
          'A cirurgia de cesárea',
          'Os exames feitos antes do parto',
        ],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText: 'Quando a cesárea é medicamente indicada?',
        answers: [
          'Quando a mãe prefere por medo da dor',
          'Quando há risco para a mãe ou bebê (ex: bebê atravessado, placenta prévia)',
          'Em todas as primeiras gestações',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText:
            'Qual tipo de parto ajuda na liberação de ocitocina (hormônio do amor) naturalmente?',
        answers: ['Parto Normal', 'Cesárea agendada', 'Ambos'],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText: 'O que é a anestesia "epidural"?',
        answers: [
          'Uma anestesia geral (dorme completo)',
          'Uma anestesia local (nas costas) para aliviar a dor do parto normal',
          'Um remédio para dor de cabeça',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'A recuperação da cesárea envolve...',
        answers: [
          'Sair andando no mesmo dia sem dor',
          'Um corte cirúrgico (cicatriz) e cuidados pós-operatórios',
          'Apenas tomar vitaminas',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'O que é "parto humanizado"?',
        answers: [
          'Um parto feito em casa',
          'Um parto com foco no protagonismo da mulher e respeito às suas escolhas',
          'Um parto sem médico',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText:
            'O bebê que nasce de parto normal pode ter benefícios para a imunidade?',
        answers: [
          'Sim, ao passar pelo canal vaginal, ele tem contato com bactérias "boas"',
          'Não, a imunidade é a mesma',
          'Não, é menos higiênico e perigoso',
        ],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText: 'O que é "episiotomia"?',
        answers: [
          'A anestesia do parto',
          'Um corte feito na região do períneo (entre vagina e ânus) durante o parto normal',
          'A primeira amamentação',
        ],
        correctAnswerIndex: 1,
      ),
    ],
  ),
  // Tópico 13: Amamentação
  QuizTopic(
    title: 'Amamentação',
    description: 'Benefícios e desafios.',
    icon: Icons.child_care_outlined,
    questions: [
      Question(
        questionText: 'O colostro é...',
        answers: [
          'O "primeiro leite" (amarelo), rico em anticorpos e nutrientes',
          'Um tipo de fórmula infantil',
          'Uma doença que impede amamentar',
        ],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText: 'A OMS recomenda amamentação exclusiva até...',
        answers: ['Os 3 meses', 'Os 6 meses', 'O primeiro ano'],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'O que é a "pega correta"?',
        answers: [
          'Quando o bebê abocanha apenas o bico do peito',
          'Quando o bebê abocanha a aréola (parte escura) e não só o bico',
          'Quando o bebê usa chupeta',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'Leite materno previne o quê no bebê?',
        answers: [
          'Infecções, alergias e diarreia',
          'Fraturas ósseas',
          'Miopia',
        ],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText: 'O que é "livre demanda" na amamentação?',
        answers: [
          'Amamentar de 3 em 3 horas certinho',
          'Amamentar sempre que o bebê mostrar sinais de fome',
          'Dar fórmula e peito',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'A amamentação traz benefícios para a mãe?',
        answers: [
          'Não, apenas para o bebê',
          'Sim, ajuda o útero a voltar ao tamanho normal e reduz risco de câncer de mama',
          'Sim, mas apenas se for por mais de 2 anos',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'O que é "leite fraco"?',
        answers: [
          'Um problema comum em muitas mães',
          'Um mito; não existe leite fraco, o leite materno é sempre adequado',
          'Leite com pouca gordura',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'O que pode causar fissuras (rachaduras) no mamilo?',
        answers: [
          'O bebê sugar muito forte',
          'A "pega" incorreta do bebê',
          'O leite ser muito grosso',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'O que é a "apojadura"?',
        answers: [
          'A descida do leite (aumento do volume), dias após o parto',
          'O fim da amamentação',
          'O primeiro banho do bebê',
        ],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText: 'Mãe que volta a trabalhar pode continuar amamentando?',
        answers: [
          'Não, ela deve parar (desmamar)',
          'Sim, ela pode ordenar (tirar) e armazenar o leite para o bebê',
          'Apenas se trabalhar em casa',
        ],
        correctAnswerIndex: 1,
      ),
    ],
  ),
  // Tópico 14: Corrimento Vaginal
  QuizTopic(
    title: 'Corrimento Vaginal',
    description: 'O que é normal ou não.',
    icon: Icons.opacity_outlined,
    questions: [
      Question(
        questionText: 'Todo corrimento vaginal é sinal de infecção?',
        answers: [
          'Sim, sempre',
          'Não, existe um corrimento fisiológico (normal) e transparente/branco',
          'Sim, e deve ser tratado com antibiótico',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'Qual sinal no corrimento indica procurar um médico?',
        answers: [
          'Ser transparente e sem cheiro, tipo "clara de ovo"',
          'Cor amarelada/esverdeada, coceira ou cheiro forte',
          'Aumentar um pouco perto da ovulação',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'O corrimento "normal" (fisiológico) serve para...',
        answers: [
          'Limpar e lubrificar a vagina, protegendo contra infecções',
          'É um sinal de doença',
          'É um sinal de gravidez',
        ],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText: 'O que pode alterar o corrimento normal?',
        answers: [
          'Ciclo menstrual (ovulação), excitação, gravidez',
          'Apenas o tipo de comida',
          'Apenas o clima (frio ou calor)',
        ],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText:
            'Corrimento com cheiro forte (como peixe podre) pode ser...',
        answers: ['Normal', 'Candidíase', 'Vaginose Bacteriana'],
        correctAnswerIndex: 2,
      ),
      Question(
        questionText:
            'Corrimento branco, espesso (tipo leite coalhado) e com coceira, pode ser...',
        answers: ['Normal', 'Candidíase', 'Vaginose Bacteriana'],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'Corrimento amarelado-esverdeado e bolhoso pode ser...',
        answers: ['Normal', 'Tricomoníase (uma IST)', 'Ovulação'],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText:
            'Usar "duchas vaginais" (lavar por dentro) é recomendado?',
        answers: [
          'Sim, ajuda na limpeza',
          'Não, desequilibra a flora vaginal e pode causar infecções',
          'Sim, se for com sabonete neutro',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'Usar calcinha de algodão e dormir sem calcinha pode...',
        answers: [
          'Piorar o corrimento',
          'Ajudar a prevenir infecções, pois permite a ventilação',
          'Não faz diferença',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'Corrimento marrom (borra de café) pode ser...',
        answers: [
          'Sinal de ovulação',
          'Início ou fim da menstruação (sangue antigo)',
          'Sinal de gripe',
        ],
        correctAnswerIndex: 1,
      ),
    ],
  ),
  // Tópico 15: Candidíase e Vaginose
  QuizTopic(
    title: 'Candidíase e Vaginose',
    description: 'Infecções comuns.',
    icon: Icons.flare_outlined,
    questions: [
      Question(
        questionText: 'A Candidíase é causada por...',
        answers: ['Um vírus', 'Uma bactéria', 'Um fungo (Candida)'],
        correctAnswerIndex: 2,
      ),
      Question(
        questionText: 'Qual o sintoma clássico da Candidíase?',
        answers: [
          'Coceira intensa e corrimento branco (aspecto de leite coalhado)',
          'Febre alta',
          'Corrimento com cheiro de peixe',
        ],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText: 'A Vaginose Bacteriana é marcada por...',
        answers: [
          'Ausência de corrimento',
          'Corrimento acinzentado com cheiro forte (peixe)',
          'Manchas vermelhas na pele',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'A Vaginose Bacteriana é um desequilíbrio do quê?',
        answers: [
          'Das bactérias "boas" (lactobacilos) da vagina',
          'Dos hormônios da tireoide',
          'Dos níveis de açúcar no sangue',
        ],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText: 'A Candidíase é uma IST?',
        answers: [
          'Sim, sempre',
          'Não, é um desequilíbrio da flora (fungo que já existe ali), embora possa ser transmitida',
          'Sim, e não tem cura',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: 'Qual fator pode piorar a Candidíase de repetição?',
        answers: [
          'Uso de antibióticos, estresse, baixa imunidade, diabetes',
          'Beber muita água',
          'Tomar sol',
        ],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText: 'O tratamento da Candidíase geralmente é feito com...',
        answers: [
          'Antibiótico',
          'Antifúngico (pomada ou comprimido)',
          'Anti-inflamatório',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText:
            'O tratamento da Vaginose Bacteriana geralmente é feito com...',
        answers: ['Antibiótico', 'Antifúngico', 'Apenas repouso'],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText: 'Candidíase causa cheiro forte?',
        answers: [
          'Sim, cheiro de peixe',
          'Geralmente não tem cheiro ou tem cheiro leve (de pão/fermento)',
          'Sim, cheiro de alho',
        ],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText:
            'É possível ter as duas (Candidíase e Vaginose) ao mesmo tempo?',
        answers: [
          'Não, uma impede a outra',
          'Sim, pode acontecer (infecção mista)',
          'Apenas em mulheres grávidas',
        ],
        correctAnswerIndex: 1,
      ),
    ],
  ),
];

// App de teste so pra rodar aqui, tem q intregrar no app atual

void main() {
  runApp(const QuizTestApp());
}

class QuizTestApp extends StatelessWidget {
  const QuizTestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Teste do Quiz',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: const Color(
          0xFFFFF8F8,
        ), // fundo branco, meio rosado (mas o do app ai n precisa ser esse)
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 1,
        ),
        cardTheme: CardThemeData(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: BorderSide(color: Colors.grey.shade200),
          ),
        ),
      ),
      home: const QuizTopicsPage(),
    );
  }
}

// Widgets
// Parte que tem que integrar no codigo atual

// Lista dos quizes

class QuizTopicsPage extends StatelessWidget {
  const QuizTopicsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Escolha um Tópico')),
      body: ListView.builder(
        padding: const EdgeInsets.all(12.0),
        itemCount: mockTopics.length,
        itemBuilder: (context, index) {
          final topic = mockTopics[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8.0),
            child: ListTile(
              leading: Icon(
                topic.icon,
                color: Theme.of(context).primaryColor,
                size: 40,
              ),
              title: Text(
                topic.title,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(topic.description),
              trailing: const Icon(Icons.arrow_forward_ios),
              contentPadding: const EdgeInsets.all(16.0),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => QuizPage(topic: topic),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

// Pagina do quiz

class QuizPage extends StatefulWidget {
  final QuizTopic topic;

  const QuizPage({super.key, required this.topic});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  // Variaveis do quiz
  int _currentQuestionIndex = 0;
  int _score = 0;
  bool _quizFinished = false;

  late List<Question> _questions;

  @override
  void initState() {
    super.initState();
    _questions = widget.topic.questions;
    _questions.shuffle(); // Embaralha as questoes, se quiser da pra remover
  }

  void _answerQuestion(int selectedAnswerIndex) {
    if (_quizFinished) return;

    // Verifica a resposta
    if (selectedAnswerIndex ==
        _questions[_currentQuestionIndex].correctAnswerIndex) {
      _score++;
    }

    // Avanca pra prox questao ou finaliza o quiz
    setState(() {
      if (_currentQuestionIndex < _questions.length - 1) {
        _currentQuestionIndex++;
      } else {
        _quizFinished = true;
      }
    });
  }

  // Reseta o quiz
  void _restartQuiz() {
    setState(() {
      // Embaralha de novo caso escolher refazer o quiz (da pra tirar se quiser tb)
      _questions.shuffle();
      _currentQuestionIndex = 0;
      _score = 0;
      _quizFinished = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.topic.title)),
      body: _quizFinished ? _buildResultsScreen() : _buildQuizScreen(),
    );
  }

  // Build da UI
  Widget _buildQuizScreen() {
    final question = _questions[_currentQuestionIndex];

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Texto das perguntas
            Text(
              'Pergunta ${_currentQuestionIndex + 1}/${_questions.length}',
              style: Theme.of(
                context,
              ).textTheme.headlineSmall?.copyWith(color: Colors.grey.shade700),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16.0),
            Text(
              question.questionText,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 32.0),

            // Botao de resposta
            ...question.answers.asMap().entries.map((entry) {
              int idx = entry.key;
              String answerText = entry.value;

              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: ElevatedButton(
                  onPressed: () => _answerQuestion(idx),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(16.0),
                    textStyle: const TextStyle(fontSize: 18),
                  ),
                  child: Text(answerText),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }

  // Build da tela de resultado
  Widget _buildResultsScreen() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Quiz Finalizado!',
            style: Theme.of(context).textTheme.displaySmall,
          ),
          const SizedBox(height: 24.0),
          Text(
            'Sua Pontuação: $_score / ${_questions.length}',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(height: 32.0),
          ElevatedButton.icon(
            onPressed: _restartQuiz,
            icon: const Icon(Icons.refresh),
            label: const Text('Reiniciar Quiz'),
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(
                horizontal: 24.0,
                vertical: 12.0,
              ),
              textStyle: const TextStyle(fontSize: 20),
            ),
          ),
          const SizedBox(height: 16.0),
          TextButton(
            onPressed: () {
              // Volta pra lista de topicos
              Navigator.pop(context);
            },
            child: const Text('Voltar aos Tópicos'),
          ),
        ],
      ),
    );
  }
}
