# 🌸 Jardim Digital da Democracia Feminina (v1.0.2)

Aplicação Web Full-Stack desenvolvida para registrar, catalogar e homenagear a trajetória política, social e cultural de mulheres marcantes da história do Ceará. Conta com uma API RESTful em **Python (FastAPI)** autenticada via **JWT**, banco relacional **PostgreSQL 15**, painel administrativo estático em **HTML/CSS/JS** e infraestrutura via **Docker Compose** e **Nginx**.

---

## 🔌 Mapeamento de Portas e Serviços de Acesso

| Serviço | Endereço de Acesso | Porta Host (Externa) | Porta Container (Interna) | Função |
| :--- | :--- | :--- | :--- | :--- |
| **Frontend Web** | [http://localhost](http://localhost) | `80` (`FRONTEND_PORT`) | `80` | Interface pública do Jardim Digital |
| **Painel Admin** | [http://localhost/admin.html](http://localhost/admin.html) | `80` | `80` | Gestão de conteúdo autenticada |
| **Backend API** | [http://localhost:8000](http://localhost:8000) | `8000` (`BACKEND_PORT`) | `8000` | API RESTful em FastAPI |
| **Documentação Swagger** | [http://localhost:8000/docs](http://localhost:8000/docs) | `8000` | `8000` | Documentação e testes de rotas |
| **Healthcheck API** | [http://localhost:8000/health](http://localhost:8000/health) | `8000` | `8000` | Teste de integridade do servidor |
| **PostgreSQL** | `localhost:5432` | `5432` (`POSTGRES_PORT`) | `5432` | Banco de dados relacional |

---

## 📋 Changelog - Versão 1.0.2

- **Segurança & JWT:** Autenticação via tokens JWT baseada em e-mail (`ADMIN_EMAIL`).
- **Geração Automática de Senha 128-bits:** Geração de senha forte com `secrets.token_urlsafe(16)` exibida nos logs do container caso `ADMIN_PASSWORD` esteja vazia.
- **CRUD Completo:** Suporte a endpoints protegidos de atualização (`PUT /api/mulheres/{id}`) e remoção (`DELETE /api/mulheres/{id}`).
- **Painel Administrativo:** Interface `admin.html` para login e gerenciamento dinâmico.
- **CI/CD Automatizado:** Workflow `.github/workflows/deploy-frontend.yml` para deploy do frontend no GitHub Pages.

---

## ⚙️ Configuração do Ambiente (`.env`)

Crie o arquivo `.env` na raiz do projeto copiando a estrutura do modelo:

```bash
cp .env.example .env