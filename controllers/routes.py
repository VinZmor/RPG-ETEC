from flask import render_template, request, redirect, url_for
from models.database import Bestiario, Antepassado, Habilidade, Poder, db

def init_app(app):
    @app.route('/', methods=['GET'])
    @app.route('/<int:id>', methods=['GET'])
    def etec_rpg (id=None):
        
        rpg_bestiario = Bestiario.query.all()
        rpg_antepassado = Antepassado.query.all()
        rpg_habilidade = Habilidade.query.all()
        rpg_poder = Poder.query.all()
        return render_template('Wiki.html', rpg_bestiario=rpg_bestiario, rpg_antepassado=rpg_antepassado, rpg_habilidade=rpg_habilidade, rpg_poder=rpg_poder)
    
