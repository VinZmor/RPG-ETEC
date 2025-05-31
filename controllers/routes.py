from flask import render_template, request, redirect, url_for
from models.database import Bestiario, db

def init_app(app):
    @app.route('/wikiBestiario', methods=['GET'])
    @app.route('/wikiBestiario/<int:id>', methods=['GET'])
    def wiki_bestiario(id=None):
        
        rpgbestiario = Bestiario.query.all()
        return render_template('wiki.html', rpgbestiario=rpgbestiario, )
    
