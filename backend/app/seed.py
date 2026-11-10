import os
import secrets
from app.database import SessionLocal, engine, Base
from app import models, auth

MULHERES_INICIAIS = [
    {
        "nome": "Bárbara de Alencar",
        "peri": "11/02/1760 - 18/08/1832",
        "categoria": "politica",
        "cor": "#b22222",
        "bio": "Líder política cearense nascida no Crato...",
        "feitos": "É considerada uma das primeiras presas políticas do Brasil..."
    },
    {
        "nome": "Maria Tomásia Figueira Lima",
        "peri": "1826 - 1902",
        "categoria": "ativismo",
        "cor": "#4b2c20",
        "bio": "Maria Tomásia foi uma importante líder abolicionista...",
        "feitos": "Fundadora da Sociedade Cearense Libertadora..."
    },
    {
        "nome": "Maria da Penha",
        "peri": "01/02/1945 - Presente",
        "categoria": "ativismo",
        "cor": "#ff1493",
        "bio": "Biofarmacêutica cearense e ativista internacional...",
        "feitos": "Inspirou a criação da Lei Maria da Penha..."
    }
]

def seed_db():
    Base.metadata.create_all(bind=engine)
    db = SessionLocal()
    try:
        # 1. Cadastro Inicial das Mulheres
        if db.query(models.Mulher).count() == 0:
            for item in MULHERES_INICIAIS:
                mulher = models.Mulher(**item)
                db.add(mulher)
            db.commit()
            print("🌱 Base de dados inicializada com as personalidades!")
        else:
            print("ℹ️ Registos de mulheres já existentes no banco.")

        # 2. Cadastro Inicial do Administrador Segura
        admin_email = os.getenv("ADMIN_EMAIL", "admin@jardimdemocracia.org.br")
        admin_password = os.getenv("ADMIN_PASSWORD")
        gerada_auto = False

        if not admin_password:
            admin_password = secrets.token_urlsafe(16)
            gerada_auto = True

        if db.query(models.Usuario).filter(models.Usuario.email == admin_email).count() == 0:
            admin_user = models.Usuario(
                email=admin_email,
                hashed_password=auth.get_password_hash(admin_password)
            )
            db.add(admin_user)
            db.commit()
            
            print("\n" + "="*50)
            print("🔐 USUÁRIO ADMINISTRADOR CRIADO COM SUCESSO!")
            print(f"📧 E-mail: {admin_email}")
            if gerada_auto:
                print(f"🔑 Senha Gerada (128-bits): {admin_password}")
                print("⚠️ ATENÇÃO: Copie esta senha! Ela não será exibida novamente.")
            print("="*50 + "\n")
        else:
            print("ℹ️ Usuário administrador já cadastrado.")

    except Exception as e:
        db.rollback()
        print(f"❌ Erro no seed: {e}")
    finally:
        db.close()

if __name__ == "__main__":
    seed_db()