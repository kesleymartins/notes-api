# Notes App - API


#### Tecnologias
---

[ruby 3.2.1](https://www.ruby-lang.org/pt/)

[rails 7.0.4](https://rubyonrails.org/)

[sqlite](https://www.sqlite.org/index.html)



#### Endpoints
---
```sh
# GET /notes
retorna lista de notas

# POST /notes/:id
cria uma nota

# PUT /notes/:id
atualiza uma nota e retorna lista atualizada

# DELETE /notes/:id
remote uma nota
```



#### Configuração do projeto

---
```sh
# Instala as dependências
bundle install

# roda as migrações
rails db:migrate

# abre o servidor
rails s
```