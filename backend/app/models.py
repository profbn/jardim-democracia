from sqlalchemy import Column, Integer, String, Text
from app.database import Base

class Mulher(Base):
    __tablename__ = "mulheres"

    id = Column(Integer, primary_key=True, index=True)
    nome = Column(String(150), nullable=False, index=True)
    peri = Column(String(50), nullable=False)
    categoria = Column(String(50), nullable=False, index=True)
    cor = Column(String(20), nullable=False)
    bio = Column(Text, nullable=False)
    feitos = Column(Text, nullable=False)

class Usuario(Base):
    __tablename__ = "usuarios"

    id = Column(Integer, primary_key=True, index=True)
    email = Column(String(150), unique=True, nullable=False, index=True)
    hashed_password = Column(String(255), nullable=False)