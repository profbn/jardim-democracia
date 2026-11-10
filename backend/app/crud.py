from typing import Optional
from sqlalchemy.orm import Session
from sqlalchemy import or_
from app import models, schemas

def get_mulheres(db: Session, pesquisa: Optional[str] = None, categoria: Optional[str] = None):
    query = db.query(models.Mulher)
    
    if categoria and categoria.lower() != "todas":
        query = query.filter(models.Mulher.categoria == categoria)
        
    if pesquisa:
        termo = f"%{pesquisa.strip()}%"
        query = query.filter(
            or_(
                models.Mulher.nome.ilike(termo),
                models.Mulher.bio.ilike(termo),
                models.Mulher.feitos.ilike(termo)
            )
        )
        
    return query.order_by(models.Mulher.nome).all()

def create_mulher(db: Session, mulher: schemas.MulherCreate):
    db_mulher = models.Mulher(**mulher.model_dump())
    db.add(db_mulher)
    db.commit()
    db.refresh(db_mulher)
    return db_mulher