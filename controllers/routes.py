from flask import render_template, request, redirect, url_for
from models.database import Bestiario, Antepassado, Habilidade, Poder, Equipamento, Forum, db

def init_app(app):
    
    @app.route('/')
    
    def home():
        return render_template('home.html')
    
    @app.route('/wiki', methods=['GET', 'POST'])
    @app.route('/wiki/<int:id>', methods=['GET', 'POST'])
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

    @app.route('/forum')
    def forum():
        lista = Forum.query.all()
        return render_template('forum.html', lista=lista)
