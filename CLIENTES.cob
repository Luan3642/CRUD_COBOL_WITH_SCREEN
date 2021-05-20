       IDENTIFICATION DIVISION.
       PROGRAM-ID.  CLIENTES.
      *********************************
      * OBJETIVO:  SISTEMA DE GESTAO DE CLIENTES
      * AUTHOR  :  LUAN
      *********************************
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT CLIENTES ASSIGN TO
           'C:\Users\luan.magalhaes\Documents\CLIENTES.DAT'
             ORGANIZATION IS INDEXED
             ACCESS MODE IS RANDOM
             FILE STATUS IS CLIENTES-STATUS
             RECORD KEY IS  CLIENTES-CHAVE.
       DATA DIVISION.
       FILE SECTION.
       FD CLIENTES.
       01 CLIENTES-REG.
           05 CLIENTES-CHAVE.
               10 CLIENTES-F0NE PIC 9(9).
           05 CLIENTES-NOME     PIC X(30).
           05 CLIENTES-EMAIL    PIC X(40).


       WORKING-STORAGE SECTION.
       77 WRK-OPCAO  PIC X(1).
       77 WRK-MODULO PIC X(25).
       77 WRK-TECLA PIC X(1).
       77 CLIENTES-STATUS PIC 9(2).
       77 WRK-MSGERRO PIC X(30).


       SCREEN SECTION.
       01 TELA.
            05 LIMPA-TELA.
                10 BLANK SCREEN.
                10 LINE 01 COLUMN 01 PIC X(20) ERASE EOL
                   BACKGROUND-COLOR 3.
                10 LINE 01 COLUMN 25 PIC X(20)
                   BACKGROUND-COLOR 3  FOREGROUND-COLOR 0
                              FROM 'SISTEMA DE CLIENTES '.
                10 LINE 02 COLUMN 01 PIC X(25) ERASE EOL
                   BACKGROUND-COLOR 1 FROM WRK-MODULO.
       01 MENU.
            05 LINE 07 COLUMN 15 VALUE '1 - INCLUIR'.
            05 LINE 08 COLUMN 15 VALUE '2 - CONSULTAR'.
            05 LINE 09 COLUMN 15 VALUE '3 - ALTERAR'.
            05 LINE 10 COLUMN 15 VALUE '4 - EXCLUIR'.
            05 LINE 11 COLUMN 15 VALUE '5 - RELATORIO'.
            05 LINE 12 COLUMN 15 VALUE 'X - SAIDA'.
            05 LINE 13 COLUMN 15 VALUE 'OPCAO......: ' .
            05 LINE 13 COLUMN 28 USING WRK-OPCAO.


       01 TELA-REGISTRO.
           05 CHAVE FOREGROUND-COLOR 2.
               10 LINE 10 COLUMN 10 VALUE 'TELEFONE'.
               10 COLUMN PLUS 2 PIC 9(9) USING CLIENTES-F0NE
                   BLANK WHEN ZEROS.
           05 SS-DADOS.
                10 LINE 11 COLUMN 10 VALUE 'NOME....'.
                10 COLUMN PLUS 2 PIC X(30) USING CLIENTES-NOME.
                10 LINE 12 COLUMN 10 VALUE 'EMAIL....'.
                10 COLUMN PLUS 2 PIC X(40) USING CLIENTES-EMAIL.

       01 MOSTRA-ERRO.
           02 MSG-ERRO.
               10 LINE 16 COLUMN 01 ERASE EOL
                                  BACKGROUND-COLOR 3.
               10 LINE 16 COLUMN 10 PIC X(40)
                           BACKGROUND-COLOR 3
                           FROM WRK-MSGERRO.
               10 COLUMN PLUS 2 PIC X(01) USING WRK-TECLA.

       PROCEDURE DIVISION.
       0001-PRINCIPAL SECTION.
            PERFORM 1000-INICIAR.
            PERFORM 2000-PROCESSAR.
            PERFORM 3000-FINALIZAR.
            STOP RUN.

       1000-INICIAR.
           OPEN I-O CLIENTES
              IF CLIENTES-STATUS = 35 THEN
                   OPEN OUTPUT CLIENTES
                   CLOSE CLIENTES
                   OPEN I-O CLIENTES
              END-IF.
            DISPLAY TELA.
            ACCEPT MENU.
       2000-PROCESSAR.
            EVALUATE WRK-OPCAO
              WHEN 1
               PERFORM 5000-INCLUIR
              WHEN 2
                CONTINUE
              WHEN 3
                CONTINUE
              WHEN 4
                CONTINUE
              WHEN 5
                CONTINUE
              WHEN OTHER
                IF WRK-OPCAO NOT EQUAL 'X'
                    DISPLAY 'ENTRE COM OPCAO CORRETA'
                END-IF
            END-EVALUATE.




       3000-FINALIZAR.
             CLOSE CLIENTES.



       5000-INCLUIR.
             MOVE 'MODULO - INCLUSAO ' TO WRK-MODULO.
             DISPLAY TELA.
             ACCEPT TELA-REGISTRO.
               WRITE CLIENTES-REG
                   INVALID KEY
                       MOVE 'JA EXISTE ' TO WRK-MSGERRO
                       ACCEPT MOSTRA-ERRO
                    END-WRITE.
                   DISPLAY TELA.
               ACCEPT MENU.
