from flask import Flask, render_template, redirect, url_for, request
from controllers import routes

app = Flask(__name__, template_folder='views')

# Inicializa as rotas do controlador
routes.init_app(app)

# Rota para a página de cadastro


@app.route('/cadastro', methods=['GET', 'POST'])
def cadastro():
    if request.method == 'POST':

        return redirect(url_for('login'))

    return render_template('telaCadastro.html')

# Rota de login (após o cadastro)


@app.route('/login')
def login():

     return render_template('telaLogin.html')

if __name__ == '__main__':
    app.run(host='localhost', port=5000, debug=True)
