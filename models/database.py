from flask_sqlalchemy import SQLAlchemy

db = SQLAlchemy()

class Antepassado(db.Model):
    __tablename__ = 'antepassado'

    id = db.Column(db.Integer, primary_key=True)
    nome = db.Column(db.String(100))
    descricao = db.Column(db.Text)  
    pericia = db.Column(db.String(200))  
    equipamento = db.Column(db.String(200)) 
    credito = db.Column(db.String(50))

    def __init__(self, pericia, equipamento, credito, descricao, nome):
        self.nome = nome
        self.descricao = descricao
        self.pericia = pericia
        self.equipamento = equipamento
        self.credito = credito


class Equipamento(db.Model):
    __tablename__ = 'equipamento'

    id = db.Column(db.Integer, primary_key=True)
    nome = db.Column(db.String(100))
    custo = db.Column(db.String(50))
    volume = db.Column(db.String(50))
    descricao = db.Column(db.Text)  

    def __init__(self, nome, custo, descricao, volume):
        self.nome = nome
        self.custo = custo
        self.descricao = descricao
        self.volume = volume


class Habilidade(db.Model):
    __tablename__ = 'habilidade'

    id = db.Column(db.Integer, primary_key=True)
    nome = db.Column(db.String(100))
    condicao = db.Column(db.String(200))  
    descricao = db.Column(db.Text)

    def __init__(self, nome, condicao, descricao):
        self.nome = nome
        self.condicao = condicao
        self.descricao = descricao


class Poder(db.Model):
    __tablename__ = 'poder'

    id = db.Column(db.Integer, primary_key=True)
    nome = db.Column(db.String(100))
    requisito = db.Column(db.String(200))
    custo = db.Column(db.String(100))
    uso = db.Column(db.String(200))
    descricao = db.Column(db.Text)

    def __init__(self, nome, requisito, custo, descricao, uso):
        self.nome = nome
        self.requisito = requisito
        self.custo = custo
        self.uso = uso
        self.descricao = descricao


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
