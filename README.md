# 📚 Catalog CRUD API

[![Test Coverage](https://codecov.io/gh/JIgor-Silva/catalog_crud/branch/main/graph/badge.svg?token=QV6ER90CHL&style=flat-square&label=Test%20Coverage)](https://codecov.io/gh/JIgor-Silva/catalog_crud)

## 🛠️ Stack Tecnológica

### Core
- **Ruby** 3.3.0
- **Rails** 8.0.2 (API Mode)
- **PostgreSQL** 14+
- **Node.js** 18+

### Principais Dependências
| Tipo           | Tecnologias                          |
|----------------|--------------------------------------|
| **Backend**    | Puma, Solid Queue, Solid Cache       |
| **Frontend**   | Propshaft, esbuild, TailwindCSS      |
| **Testes**     | RSpec, SimpleCov, Capybara           |
| **Qualidade**  | RuboCop, Brakeman                    |
| **Deploy**     | Kamal (Docker)                       |

## 🚀 Pré-requisitos
# Verifique as versões instaladas
### Principais Dependências
| Tipo           | Tecnologias                          |
|----------------|--------------------------------------|
| **ruby**       |  >= 3.3.0                            |
| **rails**      |  >= 18.0.0                           |
| **node**       |  >= 18.0.0                           |
| **npm**        |  >= 9.0.0                            |
| **psql**       |  >= 14.0                             |


# 1. Clone o repositório
git clone https://github.com/JIgor-Silva/catalog_crud.git
### cd catalog_crud

# 2. Instale dependências
### bundle install
### npm install

# 3. Configure o banco de dados
### cp .env.example .env
# Edite o .env com suas credenciais

# 4. Prepare o banco
### rails db:create db:migrate db:seed

# 5. Inicie o servidor
### bin/dev
