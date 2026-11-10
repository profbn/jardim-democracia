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

class MulherResponse(MulherBase):
    id: int

    class Config:
        from_attributes = True
