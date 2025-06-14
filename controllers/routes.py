from flask import render_template, request, redirect, url_for
from models.database import Bestiario, Antepassado, Habilidade, Poder, Equipamento, db

def init_app(app):
    # Criando a primeira rota do site
    @app.route('/')
    # Criando função no Python
    def home():
        return render_template('base.html')
    
    @app.route('/wiki.html', methods=['GET'])
    @app.route('/wiki.html <int:id>', methods=['GET'])
    def wiki(id=None):
        rpg_bestiario = Bestiario.query.all()
        rpg_antepassado = Antepassado.query.all()
        rpg_habilidade = Habilidade.query.all()
        rpg_poder = Poder.query.all()
        rpg_equipamento = Equipamento.query.all() 
        return render_template(
            'wiki.html',
            rpg_bestiario=rpg_bestiario,
            rpg_antepassado=rpg_antepassado,
            rpg_habilidade=rpg_habilidade,
            rpg_poder=rpg_poder,
            rpg_equipamento=rpg_equipamento
        )
