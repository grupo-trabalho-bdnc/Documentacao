# Documentacao do Trabalho de ETL - Banco de Dados Não-Convencionais

## Grupo :

- Joel Lopes Cunha de Souza
- Gabriel Vieira de Carvalho
- Anderson Paixao Dos Reis
- Lucas Fernandes Ramos
- Walber Capaci de Araujo
- Daniel Muniz de Carvalho

## Instruçôes
1. Executar o script DDL contido no arquivo StarSchemaPostgres.sql
2. Abrir o arquivo KNIME_project_BDNC.knwf no ambiente Knime
3. Configurar a conexão com o Sakila através do Node/Atividade "MySQL Connector"
4. Configurar a conexão com o Esquema Estrela no PostgreSQL através do Node/Atividade "PostgreSQL Connector"
5. Executar ambos os Nodes: MySQL Connector e PostgreSQL connector.
6. Seguir o workflow, começando pela execução do caminho mais acima:
   - Os quatro primeiros caminhos(de cima para baixo) populam as dimensões do Esquema Estrela:
     - Customer
     - Movie
     - Time
     - Region
   -  O último caminho no workflow(de cima para baixo) popula a tabela fato do Esquema.
7. Ao fim do processo de workflow, após sua realização completa, o esquema estrela terá recebido sua primeira carga e o processo de ETL terá terminado. 
