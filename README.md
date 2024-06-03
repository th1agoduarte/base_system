# Projeto Laravel & React com Docker para DEVs

## Visão Geral

Este projeto é uma aplicação web composta por um backend em Laravel 11 e um frontend em React 18 com TypeScript. O ambiente de desenvolvimento é configurado utilizando Docker, incluindo serviços adicionais como MySQL, Redis, Apache Kafka, Mailpit e MinIO.

## Estrutura do Projeto

project-root/
│
├── backend/
│ ├── Dockerfile
│ ├── entrypoint.sh
│ ├── <Laravel Project Files>
│
├── frontend/
│ ├── Dockerfile
│ ├── entrypoint.sh
│ ├── <React Project Files>
│
├── nginx/
│ └── nginx.conf
│
├── php/
│ └── php.ini
│
├── docker-compose.yml
└── README.md


## Pré-requisitos

- Docker
- Docker Compose

## Iniciando container de trabalhos
docker compose up --build

## Acessando os Serviços
Frontend React: http://localhost
Backend Laravel: http://localhost/backend
Backend Laravel API: http://localhost/backend/api
Mailpit: http://localhost/mailpit
MinIO: http://localhost/minio
AKHQ (Kafka): http://localhost/akhq



# Extra: Primeiro uso sem Projetos
Caso esteja usando primeira vez e nao tenha projetos nas pasta de backend e frontend, seguir os passos abaixo

## Para criar um projeto Laravel / React
Esse docker file Dockerfile.create-project tem uma Imagen do Php e Node 
Dentro do docker-compose.create-project.yml é usado para mapear os projetos para a imagen

### Comando para criar o projeto Laravel na Ultima Versao dentro da Pasta Backend
docker compose -f docker-compose.create-project.yml run --rm create-project sh -c "npx create-react-app frontend --template typescript"

### Comando para criar o Projeto React com o Template em typescript
docker compose -f docker-compose.create-project.yml run --rm create-project sh -c "npx create-react-app frontend --template typescript"

### Atencao
Se o comando docker compose nao rodar, deve esta com uma versão anterior do docker engine, usar o comando docker-compose

