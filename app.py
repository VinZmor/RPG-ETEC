from flask import Flask, render_template, redirect, url_for, request
from controllers import routes

app = Flask(__name__, template_folder='views')

routes.init_app(app)

if __name__ == '__main__':
    app.run(host='localhost', port=5000, debug=True)
