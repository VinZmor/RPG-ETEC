# Importando o Flask
from flask import Flask, render_template
# Importando o PyMySQL
import pymysql
# Importando as rotas que estão nos controllers
from controllers import routes
# Importando os models
from models.database import db

# Carregando o Flask na variável app
app = Flask(__name__, template_folder='views')

# Chamando as rotas
routes.init_app(app)

# Define o nome do banco de dados
DB_NAME = 'etec_rpg'
# Configura o Flask com o banco definido
app.config['DATABASE_NAME'] = DB_NAME

# Passando o endereço do banco ao Flask
app.config['SQLALCHEMY_DATABASE_URI'] = f'mysql://root:@localhost/{DB_NAME}'

#CHAVE SECRETAPARA O FLASH MENSANGE E TAMBÉM, uma maneira de garantir que a informação está vinda de maneira interna e não externa, garatindo segurança
app.config['SECRET_KEY'] = 'segredo'

#Definir tempo limite de sessão
app.config['PERMANENT-SESSION-LIFETIME'] = 800

# Iniciando o servidor no localhost, porta 5000, modo de depuração ativado
if __name__ == '__main__':
    # Criando os dados de conexão:
    connection = pymysql.connect(host='localhost',
                                 user='root',
                                 password='',
                                 charset='utf8mb4',
                                 cursorclass=pymysql.cursors.DictCursor)
    # Tentando criar o banco
    # Try, trata o sucesso
    try:
        # with cria um recurso temporariamente
        with connection.cursor() as cursor:  # alias
            # Cria o banco de dados (se ele não existir)
            cursor.execute(f"CREATE DATABASE IF NOT EXISTS {DB_NAME}")
            print(f"O banco de dados {DB_NAME} está criado!")
    # Except, trata a falha
    except Exception as e:
        print(f"Erro ao criar o banco de dados: {e}")
    finally:
        connection.close()

    # Passando o flask para SQLAlchemy
    db.init_app(app=app)

    # Criando as tabelas a partir do model
    with app.test_request_context():
        db.create_all()

    # Inicializando a aplicação Flask
    app.run(host='localhost', port=5000, debug=True)
