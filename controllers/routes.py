from flask import render_template, request, redirect, url_for

def init_app(app):
  
    @app.route('/')
   
    def home():
        return render_template('telaEntrarCampanha.html')
    