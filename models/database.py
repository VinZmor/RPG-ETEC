from flask_sqlalchemy import SQLAlchemy

db = SQLAlchemy()
from flask_sqlalchemy import SQLAlchemy
from datetime import datetime

db = SQLAlchemy()

class Topico(db.Model):
    __tablename__ = 'topicos'
    
    id = db.Column(db.Integer, primary_key=True)
    autor = db.Column(db.String(100), nullable=False)
    topico = db.Column(db.String(200), nullable=False)
    categoria = db.Column(db.String(50), nullable=False)  # duvida, procurando, sugestao, discussao
    conteudo = db.Column(db.Text, nullable=False)
    data_criacao = db.Column(db.DateTime, default=datetime.utcnow)
    data_atualizacao = db.Column(db.DateTime, default=datetime.utcnow, onupdate=datetime.utcnow)
    
    # Relacionamento com respostas
    respostas = db.relationship('Resposta', backref='topico', lazy=True, cascade='all, delete-orphan')
    
    def to_dict(self):
        return {
            'id': self.id,
            'autor': self.autor,
            'topico': self.topico,
            'categoria': self.categoria,
            'conteudo': self.conteudo,
            'dataCriacao': self.data_criacao.isoformat(),
            'respostas': [resposta.to_dict() for resposta in self.respostas]
        }

class Resposta(db.Model):
    __tablename__ = 'respostas'
    
    id = db.Column(db.Integer, primary_key=True)
    autor = db.Column(db.String(100), nullable=False)
    conteudo = db.Column(db.Text, nullable=False)
    data_criacao = db.Column(db.DateTime, default=datetime.utcnow)
    topico_id = db.Column(db.Integer, db.ForeignKey('topicos.id'), nullable=False)
    
    def to_dict(self):
        return {
            'id': self.id,
            'autor': self.autor,
            'conteudo': self.conteudo,
            'dataCriacao': self.data_criacao.isoformat()
        }

class Antepassado(db.Model):
    __tablename__ = 'antepassados'
    
    id = db.Column(db.Integer, primary_key=True)
    nome = db.Column(db.String(100))
    descricao = db.Column(db.Text)  
    pericia = db.Column(db.String(200))  
    equipamento = db.Column(db.String(200)) 
    credito = db.Column(db.String(50))

class Equipamento(db.Model):
    __tablename__ = 'equipamentos'
    
    id = db.Column(db.Integer, primary_key=True)
    nome = db.Column(db.String(100))
    custo = db.Column(db.String(50))
    volume = db.Column(db.String(50))
    descricao = db.Column(db.Text)  

class Habilidade(db.Model):
    __tablename__ = 'habilidades'
    
    id = db.Column(db.Integer, primary_key=True)
    nome = db.Column(db.String(100))
    condicao = db.Column(db.String(200))  
    descricao = db.Column(db.Text)

class Poder(db.Model):
    __tablename__ = 'poderes'
    
    id = db.Column(db.Integer, primary_key=True)
    nome = db.Column(db.String(100))
    requisito = db.Column(db.String(200))
    custo = db.Column(db.String(100))
    uso = db.Column(db.String(200))
    descricao = db.Column(db.Text)

class Bestiario(db.Model):
    __tablename__ = 'bestiario'
    
    id = db.Column(db.Integer, primary_key=True)
    nome = db.Column(db.String(100))
    descricao = db.Column(db.Text) 
    nd = db.Column(db.String(50))  
    atributos = db.Column(db.String(200))  
    pericias = db.Column(db.String(200))  
    velocidade = db.Column(db.Integer)
    vida = db.Column(db.Integer)
    mental = db.Column(db.Integer)
    energia = db.Column(db.Integer)