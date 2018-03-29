Rails Docker
============

### ToDo

* criar secrets
    * docker/config/etc_nginx_main.d_default.conf
    * criar com valores e colocar como segredo
    * separar por arquivo de configuração (database, email, errbit, application, etc)
* criar volumes persistentes para: (**ESTUDAR**)
    * bundle (para otimizar tempo de compilação de bibliotecas em produção?? testar)
    * assets precompilados, para otimizar código publicado.
    * **ESTUDAR**: como publicar em produção??
        * build forçado em produção? ou build em desenvolvimento e publicação completa!!
* criar testes de vários tipos
* criar imagem de teste ??
* criar script para alteração de imagem de produção para testes??

* https://blog.kontena.io/dockerizing-ruby-application/
* https://github.com/kontena/todo-example


Instalação do Docker
--------------------

### Ubuntu
``` bash
apt install software-properties-common curl

## remove old version
apt remove docker.io
sudo rm /usr/local/bin/docker-compose
sudo rm /usr/bin/docker-compose

sudo curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
chmod a+x /usr/local/bin/docker-compose

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt update

sudo apt-get install docker-ce
docker swarm init
```

### Processo de montagem e publicação

#### Atualização das configurações


``` bash
cp .env.example .env
vim .env
```

O arquivo .env conterá as configurações das variáveis de ambiente 
que serão enviadas para o container durante sua execução.

``` 
# COMMON
DOCKERIZED=true
DB_USERNAME=root
DB_PASSWORD=root
#DB_PORT=3307
DB_DATABASENAME=railsgirls

## DEVELOPMENT
DB_HOST_IP=192.168.1.100
DB_PORT=3306
RAILS_ENV=development
```

Informações deste arquivos:
* COMMON: Configurações comuns
* DB_USERNAME: nome do usuário do banco de dados
* DB_PASSWORD: senha do usuário do banco de dados
* DB_DATABASENAME: Nome do banco de dados

* DEVELOPMENT: configurações para o ambiente de desenvolvimento 
* DB_HOST_IP: IP da máquina onde o banco de dados será acessado
* DB_PORT: Porta da máquina onde o banco de dados será acessado
* RAILS_ENV: (development) Nome do ambiente de desenvolvimento

### Ambiente de desenvolvimento


#### Configuração (Desenvolvimento)


#### Build (Desenvolvimento)

O container de desenvolvimento é composto pela seguinte estrutura:

* ubuntu:16.04
    * ruby_base (railsgirls-dev-base)
        * railsgirls (railsgirls-dev)

* ubuntu:16.04 - Possui a configuração básica dos servidores ubuntu 
* ruby_base (railsgirls-dev-base) - Pussui a pré-compilação das bibliotecas rails
* railsgirls (railsgirls-dev) - Compilação completa do projeto

Para o correto sequenciamento de geração das imagens os seguintes comandos devem ser executados:

``` bash
cd docker/util
./dev_build_base.sh
./dev_build.sh
```

#### Debug remoto (Desenvolvimento - configuração)

O Rubymine possui ligação com dockers para debug.

**ToDo**: Criar link para configuração do Rubymine pra debug de Dockers.

**Validar**: https://blog.jetbrains.com/ruby/2017/06/rubymine-2017-2-eap-5-debugging-with-docker-compose/ 

Incluir no arquivo Gemfile do projeto as seguintes bibliotecas para o debug remoto:
``` bash
...
group :development do

  # docker compose debug
  gem 'ruby-debug-ide'
  gem 'debase'
end
...
```

##### Configuração Rubymine

Inicialmente deve-se configurar como o docer será acessado:

* File/Settings/ "Build, Execution, Deployment"/ Docker
* Add Docker:
    * Connect to Docker Deamon with: unix socket

Em seguida a configuração da execução deste docker, com a localização do Ruby dentro do docker:

* File/Settings, "Language & Frameworks"/"Ruby SDK & Gems"/Add (+)
* Adicionar um remote do tipo Docker Compose. 
    * Server: Docker
    * Configuration files: ./docker/docker-compose.yml
    * Service: Web
    * Ruby interpreter path: ruby

Para acessar o site localmente basta acessar http://0.0.0.0:3001, conforme a definição das configurações de execução do projeto no Rubymine, geralmente na porta 3001 

**Obs.**: Caso haja algum problema na execução do docker remova e adicione novamente novamente a "SDK remota" do docker.

#### Execução (Desenvolvimento)

``` bash
cd docker/util
./dev_up.sh
```
Para acessar o site localmente basta acessar http://0.0.0.0:3002

### Publicação

#### Local

``` bash
sudo vim /etc/hosts
```
Incluir:
``` bash
...
192.168.xxx.xxx   railsgirls.com.br
...
```

``` bash
sudo cp config/local/railsgirls.conf /etc/nginx/sites-enabled/.
```


#### Produção

``` bash
...
```

### Scripts de auxílio

``` bash

```

``` bash
```
