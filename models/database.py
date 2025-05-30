from flask_sqlalchemy import SQLAlchemy

db = SQLAlchemy()

# Criando o Model (classe)
class Lista(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    topico = db.Column(db.String(150))
    conteudo = db.Column(db.Integer)
    
    # Método construtor da classe
    def __init__(self, conteudo, topico):
        self.conteudo = conteudo
        self.topico = topico
        