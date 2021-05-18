# CRUD_COBOL_WITH_SCREEN

cores no terminal
- BACKGROUND-COLOR 0 - PRETO
- BACKGROUND-COLOR 1 - AZUL
- BACKGROUND-COLOR 2 - VERDE
- BACKGROUND-COLOR 3 - AZUL MARINHO 
- BACKGROUND-COLOR 4 - VERMELHO
- BACKGROUND-COLOR 5 - ROXO
- BACKGROUD-COLOR 6 -  AMARELO
- BACKGROUD-COLOR 7 -  CINZA


Código	Descrição


00	Conclusão bem-sucedida

02	Apenas arquivos indexados. Causas possíveis: Para uma instrução READ, o valor da chave para a chave atual é igual ao valor da mesma chave no próximo registro na chave de referência atual. Para uma instrução WRITE ou REWRITE, o registro recém-criado criou um valor de chave duplicado para pelo menos uma chave de registro alternativa para a qual duplicatas são permitidas.

04	O comprimento do registro que está sendo processado não está de acordo com os atributos de arquivo fixos para esse arquivo.

05	O arquivo opcional referenciado não está presente no momento em que a instrução OPEN é executada.

06	Tentativa de gravar em um arquivo que foi aberto para entrada.

07	Apenas arquivos sequenciais. Para uma instrução OPEN ou CLOSE com a frase REEL / UNIT, o arquivo referenciado é um meio sem bobina / unidade.

08	Tentativa de ler de um arquivo aberto para saída.

09	Nenhuma sala no diretório ou diretório não existe.

10	Nenhum registro lógico seguinte existe. Você chegou ao final do arquivo.

12	Tentou abrir um arquivo que já está aberto.

13	Arquivo não encontrado. Além disso, verifique se o caminho para o arquivo em questão existe (Micro Focus) .

14	Apenas arquivos relativos. O número de dígitos significativos no número de registro relativo é maior que o tamanho do item de dados de chave relativo descrito para esse arquivo. Muitos arquivos são abertos simultaneamente ( Micro Focus ).

15	Muitos arquivos indexados são abertos ( Micro Focus ).

16	Muitos arquivos de dispositivos estão abertos ( Micro Focus ).

17	Erro de registro: provavelmente comprimento zero ( Micro Focus ).

18	Erro de registro de parte de leitura: EOF antes de EOR ou arquivo aberto no modo errado ( Micro Focus ).

19	Reescreva o erro: abra o modo ou o modo de acesso errado ( Micro Focus ).

20	Dispositivo ou recurso ocupado ( Micro Focus ).

21	Apenas arquivos acessados sequencialmente. Indica um erro de sequência. Os requisitos de chave ascendente de valores de chave de registro sucessivos foram violados ou o valor da chave de registro principal foi alterado por um programa COBOL entre a execução bem-sucedida de uma instrução READ e a execução da próxima instrução REWRITE para esse arquivo.

22	Apenas arquivos indexados e relativos. Indica uma condição de chave duplicada. Foi feita uma tentativa de armazenar um registro que criaria uma chave duplicada no arquivo indexado ou relativo OU uma chave de registro alternativa duplicada que não permite duplicatas.

23	Indica que nenhum registro foi encontrado. Foi feita uma tentativa de acessar um registro, identificado por uma chave, e esse registro não existe no arquivo.Alternativamente, uma operação START ou READ foi tentada em um arquivo de entrada opcional que não está presente.

24	Somente arquivos relativos e indexados. Indica uma violação de limite. Possíveis causas: Tentativa de gravar além dos limites definidos externamente de um arquivo. A tentativa de uma operação WRITE sequencial foi tentada em um arquivo relativo, mas o número de dígitos significativos no número de registro relativo é maior que o tamanho do item de dados de chave relativo descrito para o arquivo.

30	A instrução de E / S foi executada sem êxito como resultado de uma violação de limite para um arquivo seqüencial ou como resultado de um erro de E / S, como um erro de paridade de verificação de dados ou um erro de transmissão.

32	Muitos arquivos indexados abertos. Isso também pode acontecer quando um arquivo sequencial é aberto para entrada e é feita uma tentativa de abrir o mesmo arquivo para saída ( mensagem RTS ( Run Time System) da Micro Focus ).

34	A instrução de E / S falhou devido a uma violação de limite. Essa condição indica que foi feita uma tentativa de gravar além dos limites definidos externamente de um arquivo sequencial.

35	Uma operação OPEN com as frases IO, INPUT ou EXTEND foi tentada em um arquivo não OPCIONAL que não está presente. Tentando abrir um arquivo que não existe. Pode ser necessário mapear o nome do arquivo COBOL para o nome do arquivo físico. (Micro Focus, consulte a diretiva ASSIGN (EXTERNAL)) .

37	Uma operação OPEN foi tentada em um arquivo que não suporta o modo aberto especificado na instrução OPEN.

38	Uma operação OPEN foi tentada em um arquivo previamente fechado com um bloqueio.

39	Um conflito foi detectado entre os atributos de arquivo reais e os atributos especificados para o arquivo no programa. Isso geralmente é causado por um conflito com comprimento de registro, comprimento de chave, posição de chave ou organização de arquivo. Outras causas possíveis são: 1. Índices alternativos são definidos incorretamente (comprimento ou posição da chave, duplicatas ou parâmetros esparsos) . 2. O Modo de Gravação é Variável ou Fixo ou não definido como quando o arquivo foi criado. 3. Para arquivos com registros de comprimento variável, os comprimentos de registro mínimo e máximo para o arquivo real podem não corresponder aos comprimentos de registro mínimo e máximo usados pelo programa

41	Uma operação OPEN foi tentada no arquivo já aberto.

42	Uma operação CLOSE foi tentada no arquivo já fechado.

43	Arquivos no modo de acesso seqüencial. A última declaração de E / S executada para o arquivo, antes da execução de uma instrução DELETE ou REWRITE, não era uma instrução READ.

44	Existe uma violação de limite. Possíveis causas: Tentativa de WRITE ou REWRITE um registro maior que o maior ou menor que o menor registro permitido pela cláusula RECORD IS VARYING do arquivo associado. Tentativa de REESCREVA um registro em um arquivo e o registro não tem o mesmo tamanho do registro que está sendo substituído.

45	Foi feita uma tentativa de REESCREVA um registro em um arquivo e o registro não é do mesmo tamanho que o registro que está sendo substituído. (Micro Focus) Para arquivos sequenciais de linha, isso se refere ao tamanho físico do registro, ou seja, após a remoção de espaço, compactação de tabulação e inserção nula. Nesse caso, o tamanho físico do novo registro pode ser menor que o do registro que está sendo substituído.

46	Uma operação READ sequencial foi tentada em um arquivo aberto no modo INPUT ou IO, mas nenhum próximo registro válido foi estabelecido.

47	Uma operação READ ou START foi tentada em um arquivo não aberto INPUT ou IO.

48	Uma operação WRITE foi tentada em um arquivo não aberto no modo OUTPUT, IO ou EXTEND ou em um arquivo aberto IO no modo de acesso seqüencial.

49	Uma operação DELETE ou REWRITE foi tentada em um arquivo que não é aberto IO.
