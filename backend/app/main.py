from typing import List, Optional
from fastapi import FastAPI, Depends, Query, status, HTTPException
from fastapi.security import OAuth2PasswordRequestForm
from fastapi.middleware.cors import CORSMiddleware
from sqlalchemy.orm import Session
from sqlalchemy import text

from app import models, schemas, crud, auth
from app.database import engine, get_db

models.Base.metadata.create_all(bind=engine)

app = FastAPI(
    title="API Jardim Digital da Democracia Feminina",
    version="1.0.2",
    description="API RESTful autenticada para catálogo histórico de mulheres cearenses."
)

app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

@app.get("/health", status_code=status.HTTP_200_OK)
def health_check(db: Session = Depends(get_db)):
    try:
        db.execute(text("SELECT 1"))
        return {"status": "ok", "database": "connected", "version": "1.0.2"}
    except Exception as e:
        return {"status": "error", "database": str(e), "version": "1.0.2"}

@app.post("/api/auth/login", response_model=schemas.Token)
def login(form_data: OAuth2PasswordRequestForm = Depends(), db: Session = Depends(get_db)):
    user = db.query(models.Usuario).filter(models.Usuario.email == form_data.username).first()
    if not user or not auth.verify_password(form_data.password, user.hashed_password):
        raise HTTPException(
            status_code=status.HTTP_401_UNAUTHORIZED,
            detail="E-mail ou senha incorretos.",
            headers={"WWW-Authenticate": "Bearer"},
        )
    access_token = auth.create_access_token(data={"sub": user.email})
    return {"access_token": access_token, "token_type": "bearer"}

@app.get("/api/mulheres", response_model=List[schemas.MulherResponse])
def listar_mulheres(
    pesquisa: Optional[str] = Query(None, description="Filtro de busca por termo"),
    categoria: Optional[str] = Query(None, description="Filtro por categoria"),
    db: Session = Depends(get_db)
):
    return crud.get_mulheres(db, pesquisa=pesquisa, categoria=categoria)

@app.get("/api/mulheres/{mulher_id}", response_model=schemas.MulherResponse)
def obter_mulher(mulher_id: int, db: Session = Depends(get_db)):
    mulher = crud.get_mulher_by_id(db, mulher_id)
    if not mulher:
        raise HTTPException(status_code=404, detail="Registro não encontrado.")
    return mulher

@app.post("/api/mulheres", response_model=schemas.MulherResponse, status_code=status.HTTP_201_CREATED)
def criar_mulher(
    mulher: schemas.MulherCreate,
    db: Session = Depends(get_db),
    current_user: models.Usuario = Depends(auth.get_current_user)
):
    return crud.create_mulher(db, mulher)

@app.put("/api/mulheres/{mulher_id}", response_model=schemas.MulherResponse)
def atualizar_mulher(
    mulher_id: int,
    mulher_update: schemas.MulherUpdate,
    db: Session = Depends(get_db),
    current_user: models.Usuario = Depends(auth.get_current_user)
):
    mulher = crud.update_mulher(db, mulher_id, mulher_update)
    if not mulher:
        raise HTTPException(status_code=404, detail="Registro não encontrado.")
    return mulher

@app.delete("/api/mulheres/{mulher_id}", status_code=status.HTTP_204_NO_CONTENT)
def deletar_mulher(
    mulher_id: int,
    db: Session = Depends(get_db),
    current_user: models.Usuario = Depends(auth.get_current_user)
):
    sucesso = crud.delete_mulher(db, mulher_id)
    if not sucesso:
        raise HTTPException(status_code=404, detail="Registro não encontrado.")
    return None