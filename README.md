# Exemplos (TRIGGERS)
> REPRODUZA OS DOIS EXEMPLOS DADOS NO MYSQL WORKBENCH;
>
> EXECUTE AS ETAPAS E VERIFIQUE SEUS RESULTADOS;
>
> VEJA OS RESULTADOS OBTIDOS A CADA TAREFA REALIZADA E TIRE PRINT’S DOS RESULTADOS;
>
> POR FIM, MONTE UM REPOSITÓRIO REMOTO E PREENCHA O README.MD COM O MODELO LÓGICO MONTADO DO PRIMEIRO EXEMPLO,
> SOMENTE UM PRINT DO MODELO E DENTRO DO SEU REPOSITÓRIO REMOTO FEITO COLOQUE O CÓDIGO SQL DO PRIMEIRO EXEMPLO;
>
> PARA O SEGUNDO EXEMPLO CRIE UMA BRANCH DENTRO DO SEU REPOSITÓRIO REMOTO, NOMEIE A BRANCH COMO EXEMPLO DOIS,
> MODIFIQUE SEU README.MD COM INFORMAÇÕES DO SEGUNDO EXEMPLO E ASSIM COMO O PRIMEIRO TIRE UM PRINT DO MODELO LÓGICO E INSIRA NO README.MD;
>
> REMOVA O SCRIPT DO PRIMEIRO EXEMPLO E INSIRA O CÓDIGO NA BRANCH DO EXEMPLO DOIS;

## Descrição da Atividade 📓
### Exemplo 1
No primeiro exemplo, foi criado um banco de dados chamado "Solicitações" para gerenciar pedidos de clientes. Foi estabelecida uma tabela chamada "Pedidos", onde são registrados os detalhes de cada pedido, incluindo um identificador único, a data do pedido e o nome do cliente. Além disso, uma trigger foi implementada para garantir que a data do pedido seja automaticamente registrada quando um novo registro é adicionado à tabela de pedidos. Dados de exemplo foram inseridos na tabela para ilustrar o funcionamento do sistema. Após isso, uma consulta foi realizada para verificar se os dados foram corretamente inseridos.

### Exemplo 2
No segundo exemplo, foi criado um banco de dados denominado "Locadora", destinado a gerenciar informações sobre filmes. Foi elaborada uma tabela chamada "Filmes" para armazenar dados como título e duração dos filmes. Uma trigger foi implementada para verificar se a duração do filme é válida, garantindo que se o valor for negativo, seja ajustado para nulo. Em seguida, dados fictícios foram inseridos na tabela para representar diferentes filmes e suas durações. Adicionalmente, foi criada uma tabela chamada "Log_deletions" para registrar exclusões de registros da tabela "Filmes", com informações como título, data e usuário que realizou a exclusão. Uma trigger foi configurada para inserir automaticamente um registro nessa tabela de log toda vez que um registro é excluído da tabela de filmes. Por fim, foram realizadas exclusões de registros na tabela de filmes para testar a trigger de log de exclusões, e uma consulta foi feita na tabela de log para verificar os registros registrados.

## Modelo Logico 📈
![image](https://github.com/IsabelaQu/Trigger/assets/124175141/d5d9cead-95af-4f8e-9e40-00087fd49da1)
![image](https://github.com/IsabelaQu/Trigger/assets/124175141/9524f949-d766-4e7f-abe8-5d942c3e6683)

### Exemplo 1
![image](https://github.com/IsabelaQu/Trigger/assets/124175141/2f6f09d8-a3b1-47c7-8bce-96fb1d5a914b)

### Exemplo 2
![image](https://github.com/IsabelaQu/Trigger/assets/124175141/bd63f0ba-72e8-4b6a-86bd-f42c257e61b8)

## Pré-requisitos
My SQL
|---|

<br/>

> [!IMPORTANT]
> Isabela Queiroz Ferreira RA: 236858
