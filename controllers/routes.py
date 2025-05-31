from flask import render_template, request
from models.database import Bestiario, db

def init_app(app):
    @app.route('/wikiBestiario', methods=['GET'])
    @app.route('/wikiBestiario/<int:id>', methods=['GET'])
    def home(id=None):
        if id:
            bestiariowiki = [Bestiario.query.get(id)]
        else:
            bestiariowiki = Bestiario.query.all()

        return render_template('Wiki.html', bestiariowiki=bestiariowiki)
