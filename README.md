## Projeto Encurtador de URLs

Implemente um site, utilizando Ruby e de preferêcia MariaDB (substituto completo do MySQL),
ou qualquer outro serviço de banco de dados, que forneça um serviço simples de encurtamento
de URLs (semelhante ao [TinyURL](tinyurl.com)).

### O projeto deve conter duas páginas:

**/**: contém um formulário, onde o usuário insere a URL que deseja encurtar.
Quando o formulário for submetido, o sistema deve criar o hash para a URL,
salvar o hash e a URL no banco de dados, na tabela que terá seu esquema descrito posteriormente.
Após isso, o sistema deve renderizar novamente a página **/**,
mas abaixo do formulário deve exibir a URL curta retornada, que terá o formato:

http://host/URL_CURTA,

onde URL_CURTA representa o hash gerado, que deve ter seis caracteres e estar
codificado em base64. Para gerar o hash utilize  o algoritmo sha-1.
Para obter apenas os 6 primeiros caracteres do hash utilize uma função de substring
e para codificar o hash em base64 utilize o algoritmo de encode em base64.

**/:URL_CURTA**: esta é a página que realiza o redirecionamento das URLs curtas.
Essa página recebe um parâmetro nomeado :URL_CURTA
(não é um parâmetro query string, mas do sistema de roteamento da sua aplicação),
via método GET. Isso significa que a URL será no formato **http://host/URL_CURTA**,
onde URL_CURTA é um hash de 6 caracteres. Essa página deve buscar no banco de dados
a URL que corresponde ao hash passado como parâmetro e realizar o redirecionamento
para a URL correspondente, também armazenada na tabela. Caso o hash seja inválido,
uma mensagem de erro deverá ser exibida, informando que nenhuma página foi encontrada.
