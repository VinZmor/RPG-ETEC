from flask import Flask, render_template, redirect, url_for, request
from controllers import routes
import pymysql.cursors
import pymysql
from models.database import db

app = Flask(__name__, template_folder='views')

DB_NAME = 'etec_rpg'

app.config['SQLALCHEMY_DATABASE_URI'] = f'mysql+pymysql://root@localhost/{DB_NAME}'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False  

routes.init_app(app)

if __name__ == '__main__':
    try:
        connection = pymysql.connect(
            host='localhost',
            user='root',
            password='',  
            cursorclass=pymysql.cursors.DictCursor
        )

        with connection.cursor() as cursor:
            cursor.execute(f"CREATE DATABASE IF NOT EXISTS {DB_NAME}")
            print(f"Banco de dados '{DB_NAME}' criado ou já existente.")
    except Exception as error:
        print(f"Erro ao criar o banco: {error}")
    finally:
        connection.close()

    db.init_app(app)
    with app.app_context():
        db.create_all()
        print("Tabelas criadas com sucesso!")

    app.run(host='localhost', port=5000, debug=True)
