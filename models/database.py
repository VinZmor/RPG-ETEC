from flask_sqlalchemy import SQLAlchemy

db = SQLAlchemy()


class Bestiario(db.Model):
    __tablename__ = 'bestiario'

    id = db.Column(db.Integer, primary_key=True)
    nome = db.Column(db.String(150), nullable=False)
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
    __tablename__ = 'antepassado'

    id = db.Column(db.Integer, primary_key=True)
    pericia = db.Column(db.String(150))
    equipamento = db.Column(db.String(150))
    credito = db.Column(db.Integer)
    descricao = db.Column(db.String(150))

    def __init__(self, pericia, equipamento, credito, descricao):
        self.pericia = pericia
        self.equipamento = equipamento
        self.credito = credito
        self.descricao = descricao


class Habilidade(db.Model):
    __tablename__ = 'habilidade'

    id = db.Column(db.Integer, primary_key=True)

    def __init__(self):
        pass


class Equipamento(db.Model):
    __tablename__ = 'equipamento'

    id = db.Column(db.Integer, primary_key=True)
    nome = db.Column(db.String(30))
    custo = db.Column(db.Integer)
    volume = db.Column(db.Float(1,1))
    descricao = db.Column(db.String(300))

    def __init__(self, nome, custo, descricao, volume):
        self.nome = nome
        self.custo = custo
        self.descricao = descricao
        self.volume = volume


class Poder(db.Model):
    __tablename__ = 'poder'

    id = db.Column(db.Integer, primary_key=True)
    nome = db.Column(db.String(150))
    requisito = db.Column(db.String(150))
    custo = db.Column(db.String(150))
    descricao = db.Column(db.String(150))

    def __init__(self, nome, requisito, custo, descricao):
        self.nome = nome
        self.requisito = requisito
        self.custo = custo
        self.descricao = descricao