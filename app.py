# Importando 
from flask import Flask, render_template
import pymysql.cursors
from controllers import routes
import pymysql
from models.database import db

# Carregando o Flask 
app = Flask(__name__, template_folder='views')

DB_NAME = 'etec_rpg'
app.config['DATABASE_NAME'] = DB_NAME

# endereço do banco
app.config['SQLALCHEMY_DATABASE_URI'] = f'mysql://root@localhost/{DB_NAME}'

# Chamando as rotas
routes.init_app(app)

# Iniciando o servidor
if __name__ == '__main__':
    # Conectando ao MySQL e criando o banco de dados com suas tabelas
    connection = pymysql.connect(host='localhost',
                                 user='root',
                                 password='',
                                 charset='',
                                 cursorclass=pymysql.cursors.DictCursor)
    try:
        with connection.cursor() as cursor:
            cursor.execute(f"CREATE DATABASE IF NOT EXISTS {DB_NAME}")
            print("O banco de dados está criado!")
    except Exception as error:
        print(f"Erro ao criar o banco: {error}")
    finally:
        connection.close()
        
    # Criando as tabelas:
    db.init_app(app=app)
    with app.test_request_context():
        db.create_all()
    
    # Rodando o projeto    
    app.run(host='localhost', port=5000, debug=True)
