from typing import Optional, List
from sqlalchemy.orm import Session
from sqlalchemy import or_
from app import models, schemas

def get_mulheres(db: Session, pesquisa: Optional[str] = None, categoria: Optional[str] = None) -> List[models.Mulher]:
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

def get_mulher_by_id(db: Session, mulher_id: int) -> Optional[models.Mulher]:
    return db.query(models.Mulher).filter(models.Mulher.id == mulher_id).first()

def create_mulher(db: Session, mulher: schemas.MulherCreate) -> models.Mulher:
    db_mulher = models.Mulher(**mulher.model_dump())
    db.add(db_mulher)
    db.commit()
    db.refresh(db_mulher)
    return db_mulher

def update_mulher(db: Session, mulher_id: int, mulher_update: schemas.MulherUpdate) -> Optional[models.Mulher]:
    db_mulher = get_mulher_by_id(db, mulher_id)
    if not db_mulher:
        return None
    
    update_data = mulher_update.model_dump(exclude_unset=True)
    for field, value in update_data.items():
        setattr(db_mulher, field, value)
        
    db.commit()
    db.refresh(db_mulher)
    return db_mulher

def delete_mulher(db: Session, mulher_id: int) -> bool:
    db_mulher = get_mulher_by_id(db, mulher_id)
    if not db_mulher:
        return False
    db.delete(db_mulher)
    db.commit()
    return True