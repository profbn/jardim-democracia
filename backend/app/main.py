from typing import List, Optional
from fastapi import FastAPI, Depends, Query, status, HTTPException
from fastapi.security import OAuth2PasswordRequestForm
from fastapi.middleware.cors import CORSMiddleware
from sqlalchemy.orm import Session

from app import models, schemas, crud, auth
from app.database import engine, get_db

models.Base.metadata.create_all(bind=engine)

app = FastAPI(title="API Jardim Digital com Autenticação")

app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

# Endpoint de Login (Gera o Token JWT)
@app.post("/api/auth/login")
def login(form_data: OAuth2PasswordRequestForm = Depends(), db: Session = Depends(get_db)):
    user = db.query(models.Usuario).filter(models.Usuario.username == form_data.username).first()
    if not user or not auth.verify_password(form_data.password, user.hashed_password):
        raise HTTPException(
            status_code=status.HTTP_401_UNAUTHORIZED,
            detail="Usuário ou senha incorretos."
        )
    
    token = auth.create_access_token(data={"sub": user.username})
    return {"access_token": token, "token_type": "bearer"}

# Rota PÚBLICA (Qualquer pessoa pode listar/pesquisar)
@app.get("/api/mulheres", response_model=List[schemas.MulherResponse])
def listar_mulheres(
    pesquisa: Optional[str] = Query(None),
    categoria: Optional[str] = Query(None),
    db: Session = Depends(get_db)
):
    return crud.get_mulheres(db, pesquisa=pesquisa, categoria=categoria)

# Rota PROTEGIDA (Apenas administradores autenticados podem cadastrar)
@app.post("/api/mulheres", response_model=schemas.MulherResponse, status_code=status.HTTP_201_CREATED)
def criar_mulher(
    mulher: schemas.MulherCreate, 
    db: Session = Depends(get_db),
    current_user: models.Usuario = Depends(auth.get_current_user) # Exige Token!
):
    return crud.create_mulher(db, mulher)

@app.post("/api/auth/login")
def login(form_data: OAuth2PasswordRequestForm = Depends(), db: Session = Depends(get_db)):
    # O campo form_data.username do OAuth2 é utilizado para receber o e-mail
    user = db.query(models.Usuario).filter(models.Usuario.email == form_data.username).first()
    if not user or not auth.verify_password(form_data.password, user.hashed_password):
        raise HTTPException(
            status_code=status.HTTP_401_UNAUTHORIZED,
            detail="E-mail ou senha incorretos."
        )
    
    token = auth.create_access_token(data={"sub": user.email})
    return {"access_token": token, "token_type": "bearer"}