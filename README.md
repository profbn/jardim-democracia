<<<<<<< HEAD
# jardim-democracia
# 🌸 Jardim Digital da Democracia Feminina (v1.0.1)
=======
# 🌸 Jardim Digital da Democracia Feminina (v1.0.1)

Aplicação Web Full-Stack desenvolvida para registrar, catalogar e homenagear a trajetória política, social e cultural de mulheres marcantes da história do Ceará. O projeto conta com uma API RESTful em **Python (FastAPI)**, persistência relacional em **PostgreSQL 15** e interface interativa no **Frontend (HTML/CSS/JS)** servida via proxy reverso com **Nginx**, orquestrada inteiramente com **Docker Compose**.

---

## 🔌 Mapeamento de Portas e Serviços de Acesso

A aplicação expõe os seguintes serviços e portas no ambiente host (`localhost`):

| Serviço | Endereço de Acesso | Porta Host (Externa) | Porta Container (Interna) | Descrição / Função |
| --- | --- | --- | --- | --- |
| **Frontend Web** | [http://localhost](http://localhost) | `80` (variável `FRONTEND_PORT`) | `80` | Interface visual do Jardim Digital via Nginx |
| **Backend API** | [http://localhost:8000](http://localhost:8000) | `8000` (variável `BACKEND_PORT`) | `8000` | Endpoints RESTful em FastAPI |
| **Documentação Swagger** | [http://localhost:8000/docs](http://localhost:8000/docs) | `8000` | `8000` | Interface interativa de testes de rotas |
| **Healthcheck API** | [http://localhost:8000/health](http://localhost:8000/health) | `8000` | `8000` | Verificação de status do servidor e banco |
| **PostgreSQL** | `localhost:5432` | `5432` (variável `POSTGRES_PORT`) | `5432` | Acesso direto ao banco de dados relacional |

---

## 📋 Changelog - Versão 1.0.1

* **Fix de Tipagem no Backend:** Correção do erro `NameError: name 'Optional' is not defined` através da importação de `from typing import Optional` em `app/crud.py`.
* **Refatoração do Frontend:** Separação e modularização total dos arquivos em `index.html`, `style.css` e `app.js`.
* **População Completa (Seed):** Carga inicial automática do banco PostgreSQL com todos os 22 perfis cadastrados.
* **Endpoint `/health`:** Diagnóstico de conectividade e status operacional da aplicação e base de dados.
* **Resiliência do Nginx:** Configuração do proxy reverso encaminhando chamadas `/api/` e `/health` sem problemas de CORS no navegador.

---

## 🛠️ Arquitetura e Tecnologias

* **Frontend:** HTML5, CSS3 puro, JavaScript ES6+ (Fetch API).
* **Backend:** Python 3.10+, FastAPI, SQLAlchemy, Pydantic v2, Uvicorn.
* **Banco de Dados:** PostgreSQL 15 Alpine.
* **Servidor Web / Proxy:** Nginx Alpine.
* **Orquestração:** Docker & Docker Compose.

---

## 📁 Estrutura do Projeto

```text
jardim-democracia/
├── .env                  # Arquivo de variáveis de ambiente reais (não comitado)
├── .env.example          # Modelo de variáveis de ambiente
├── .gitignore            # Exclusões do versionamento Git
├── docker-compose.yml    # Orquestração dos containers Docker
├── README.md             # Documentação oficial do projeto
├── backend/
│   ├── Dockerfile
│   ├── requirements.txt  # Dependências Python
│   └── app/
│       ├── __init__.py
│       ├── database.py   # Conexão e sessão SQLAlchemy
│       ├── models.py     # Modelo da tabela no PostgreSQL
│       ├── schemas.py    # Validação Pydantic
│       ├── crud.py       # Funções de leitura e escrita
│       ├── main.py       # Rotas e instância FastAPI
│       └── seed.py       # Script de carga inicial (22 mulheres)
└── frontend/
    ├── Dockerfile
    ├── nginx.conf        # Proxy reverso e rotas do Nginx
    ├── index.html        # Estrutura da aplicação
    ├── style.css         # Estilização visual e animações
    └── app.js            # Lógica de integração e Fetch API

```

---

## ⚙️ Configuração das Variáveis de Ambiente (`.env`)

Crie o arquivo `.env` na raiz do projeto copiando o modelo de referência:

```bash
cp .env.example .env

```

Conteúdo padrão do arquivo `.env`:

```env
# Banco de Dados PostgreSQL
POSTGRES_DB=jardim_db
POSTGRES_USER=postgres
POSTGRES_PASSWORD=postgrespassword
POSTGRES_PORT=5432

# String de Conexão SQLAlchemy
DATABASE_URL=postgresql://postgres:postgrespassword@db:5432/jardim_db

# Mapeamento de Portas da Aplicação
BACKEND_PORT=8000
FRONTEND_PORT=80

```

---

## 🚀 Como Executar o Projeto

### 1. Execução com Docker Compose (Recomendado)

1. **Subir todos os containers com reconstrução:**
```bash
docker compose up --build -d

```


2. **Verificar a execução dos serviços:**
```bash
docker compose ps

```


3. **Ver os logs dos containers em tempo real:**
```bash
docker compose logs -f

```


4. **Parar a aplicação:**
```bash
docker compose down

```


*(Para resetar o banco de dados e excluir os volumes persistentes, use `docker compose down -v`)*

---

### 2. Execução Local para Desenvolvimento (Sem Docker)

#### **Backend (Python)**

```bash
cd backend
python -m venv venv

# Linux / macOS
source venv/bin/activate
# Windows
venv\Scripts\activate

pip install -r requirements.txt
python -m app.seed
uvicorn app.main:app --reload --port 8000

```

#### **Frontend**

Abra o arquivo `frontend/index.html` diretamente no navegador ou utilize a extensão **Live Server** no VS Code.

---

## 📌 Endpoints da API

| Método | Rota | Descrição | Parâmetros |
| --- | --- | --- | --- |
| `GET` | `/health` | Diagnóstico de integridade da API e banco de dados | Nenhum |
| `GET` | `/api/mulheres` | Retorna a lista de mulheres cadastradas | `pesquisa` (query), `categoria` (query) |
| `POST` | `/api/mulheres` | Cadastra um novo registro no banco | Body JSON (`MulherCreate`) |
| `GET` | `/docs` | Documentação interativa Swagger UI | Nenhum |
>>>>>>> e75be63 (primeiro crud bassico teste)
