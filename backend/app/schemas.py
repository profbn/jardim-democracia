from pydantic import BaseModel
from typing import Optional

class MulherBase(BaseModel):
    nome: str
    peri: str
    categoria: str
    cor: str
    bio: str
    feitos: str

class MulherCreate(MulherBase):
    pass

class MulherUpdate(BaseModel):
    nome: Optional[str] = None
    peri: Optional[str] = None
    categoria: Optional[str] = None
    cor: Optional[str] = None
    bio: Optional[str] = None
    feitos: Optional[str] = None

class MulherResponse(MulherBase):
    id: int

    class Config:
        from_attributes = True

class Token(BaseModel):
    access_token: str
    token_type: str

class TokenData(BaseModel):
    email: Optional[str] = None