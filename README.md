# api_integrare
Processo Seletivo Integrare: Laravel - Restfull<br>

<b>Instruções para execução</b><br>

1 - Clonar o projeto para a pasta do "htdocs" do XAMPP Version 7.2.10<br>
2 - Criar um schema MySQL com o nome "integrare<br>
3 - Editar o arquivo .env com so dados de conexão com o MySQL, veja abaixo.(nesse caso foi usado as credênciais default)<br>
    DB_CONNECTION=mysql<br>
    DB_HOST=127.0.0.1<br>
    DB_PORT=3306<br>
    DB_DATABASE=integrare<br>
    DB_USERNAME=root<br>
    DB_PASSWORD=<br>
    
4 - Executar no WorkBench ou importar para no phpMyAdmin o arquivo: "db_integrare.sql" que está na raiz deste projeto<br>
5 - No prompt de comando(Windows) navegar até a pasta onde o projeto foi clonado, dentro de htdocs<br>
6 - Excute o comando "php artisan serve" e certifique-se de que o servidor start no endereço: http://localhost:8000/ , é importante que<br>
    que seja o esse endereço, para funcionar o front-end.<br>
7 - Copie a pasta "front" que está na raiz deste projeto, para qualquer pasta(o desenvolvimento foi feito do Desktop, não é necessário<br> 
    que seja executado em um servidor). <br>
8 - Execute qualquer .html dentro da pasta "front" no browser, de preferencia o Chrome.<br>

OBS: Qualquer dúvida estou a disposição.<br><br><br>

Att: Gesiel Diniz da Silva