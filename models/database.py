from flask_sqlalchemy import SQLAlchemy

db = SQLAlchemy()   

class Bestiario(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    nome = db.Column(db.String(150))
    descricao = db.Column(db.String(150))
    nd = db.Column(db.String(150))
    atributos = db.Column(db.Integer) 
    pericias = db.Column(db.String(150))
    velocidade = db.Column(db.Integer)
    vida = db.Column(db.Integer)
    mental = db.Column(db.Integer)
    energia = db.Column(db.Integer)

    def __init__(self, nome, descricao, nd, atributos, pericias, velocidade, vida, mental, energia):
        self.nome = nome
        self.descricao = descricao
        self.nd = nd
        self.atributos = atributos
        self.pericias = pericias
        self.velocidade = velocidade
        self.vida = vida
        self.mental = mental
        self.energia = energia

class Antepassado(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    
    def _init_ (self, id):
        self.id = id        
        
class Habilidade(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    
    def _init_ (self, id):
        self.id = id        


class Poder(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    
    def _init_ (self, id):
        self.id = id        


class Equipamento(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    
    def _init_ (self, id):
        self.id = id        

