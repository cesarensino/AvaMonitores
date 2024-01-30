# AvaMonitores
Script em Shell para Avaliação de Novos Monitores Qualificados por Reputação e Abertura de Salas

#Introdução 
> Este trabalho é uma atividade acadêmica realizada por este aluno para estudos da plataforma Freechains, que foi desenvolvida pelo Professor Francisco Santana, professor do Departamento de Ciência da Computação da UERJ. A aplicação está no repositório https://github.com/Freechains/README, e pode ser baixada para utilização, bem como materiais de ensino, para serem explorados em seus conceitos e formas de trabalho de maneira plena.

Aplicativo em Script, em fase de protótipo, destinado a avaliar e apontar novos candidatos à monitores em novos fóruns de discussão com apoio de um sistema de aprendizagem virtual;

# Manual de Uso
O aplicativo pode ser instalado em qualquer computador e por qualquer usuário que tenha acesso normalizado ao freechains, basta baixar esse script e tornar executavel dentro da pasta /tmp/freechains; É preciso ter um arquivo com chaves públicas e salvar como listah.txt, e é preciso um ambiente em funcionamento do freechains, no caso, o usuario pode seguir as instruções em https://github.com/cesarensino/freechains-simulacao para ter um ambiente funcional da plataforma operando, compativel com esse exercício.

# Descrição das Ações do Script
A aplicação analisa se chaves públicas em lista são participantes de um chat qualquer que o usuário em questão participa também. A partir disso, contabiliza, para cada chave encontrada, o valor de reputação e soma seus valores em cada chat de interesse que a mesma chave for encontrada ou em todos os chats. Ao final da análise, gera uma informaçao indicando o primeiro com mais reputação para formar um novo grupo de discussão iniciando um novo chat público. 
O sistema precisa ser informado da listagem de fóruns em participação do usuário, por isso aplica o comando list. Também é necessário criar fóruns com os pioneiros escolhidos, aplicando o comando join;

# Ações Planejadas para Implementação Futura

- Esta aplicação foi imaginada para operar em conjunto com um sistema virtual de aprendizagem, no caso um Moodle (LMS em PHP) é um sistema compatível, mas não é obrigatório essa forma de uso. No entando, basta informar e baixar, em um campo de dados novo no sistema a informação de chave publica, preenchida pelos próprios usuarios que desejarem, sem precisar revelar dados extras, pois será com ela que eventuais análises e convites podem ocorrer;
- O sistema de reputação servirá para analisar se um usuário tem qualificações para participar como monitor/moderador de um tema de interesse, e se, eventualmente, um determinado usuário não esteja em uma condição de suspensão em um fórum por conta de dislikes; Também é possível, de maneira pouco complexa mas mais custosa, a análise de mensagens através de sua carga de payload para saber se existem mensagens nos fórums inadequadas para o propósito desta atividade;
- Esta aplicação pode ser transportada para outra linguagem de programação, contanto que realize ações relacionadas a execução de comandos externos ao seu ambiente de compilação, e retorne com essas respostas para o trabalho amplo em diferentes sistemas, mais precisamente os que funcionam e java, php e um ambiente de banco de dados;

  
