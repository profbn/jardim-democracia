from typing import List, Optional
from fastapi import FastAPI, Depends, Query, status
from fastapi.middleware.cors import CORSMiddleware
from sqlalchemy.orm import Session
from sqlalchemy import text

from app import models, schemas, crud
from app.database import engine, get_db

models.Base.metadata.create_all(bind=engine)

app = FastAPI(
    title="API Jardim Digital da Democracia Feminina",
    version="1.0.1",
    description="API RESTful para catálogo histórico e biográfico de mulheres cearenses."
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
        return {"status": "ok", "database": "connected", "version": "1.0.1"}
    except Exception as e:
        return {"status": "error", "database": str(e), "version": "1.0.1"}

@app.get("/api/mulheres", response_model=List[schemas.MulherResponse])
def listar_mulheres(
    pesquisa: Optional[str] = Query(None, description="Termo de busca para filtrar por nome, biografia ou feitos"),
    categoria: Optional[str] = Query(None, description="Categoria temática"),
    db: Session = Depends(get_db)
):
    return crud.get_mulheres(db, pesquisa=pesquisa, categoria=categoria)

@app.post("/api/mulheres", response_model=schemas.MulherResponse, status_code=status.HTTP_201_CREATED)
def criar_mulher(mulher: schemas.MulherCreate, db: Session = Depends(get_db)):
    return crud.create_mulher(db, mulher)
