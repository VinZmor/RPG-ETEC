from datetime import datetime
import json
from flask import render_template, request, jsonify, url_for,  redirect, flash, session
from models.database import Bestiario, Antepassado, Habilidade, Poder, Resposta, Equipamento, Topico, Usuario, db
from werkzeug.security import generate_password_hash, check_password_hash 

def init_app(app):
    # Configuração do JSON Encoder para datas
    class CustomJSONEncoder(json.JSONEncoder):
        def default(self, obj):
            if isinstance(obj, datetime):
                return obj.isoformat()
            return super().default(obj)
    
    app.json_encoder = CustomJSONEncoder

    # Rotas principais
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
        topicos = Topico.query.order_by(Topico.data_criacao.desc()).all()
        return render_template('forum.html', topicos=topicos)
    
    @app.route('/login')
    def login():
        if request.method == 'POST':
                nome =request.form['nome']
                senha =request.form['senha']
                user = Usuario.query.filter_by(nome=nome).first()
                if user and check_password_hash(user.senha, senha):
                    session['user_id'] = user.id
                    session['nome'] = user.nome
                    flash(f'Login realizado com sucesso! Ben-vindo {user.nome}!', 'success')
                    return redirect(url_for('home'))
                else:
                    flash("Falha no login! verifique nome do usuário e senha")
                    return redirect(url_for('login'))
            
        return render_template('login.html')
    
    
    @app.route('/logout', methods=['GET', 'POST'])
    def logout():
            session.clear()
            flash("Você se desconectou", "warning")
            return redirect(url_for('home'))
        
    @app.route('/caduser', methods=['POST']) 
    def caduser():
        # Recebe os dados do formulário
        nome = request.form['nome']
        senha = request.form['senha']
        confirmar_senha = request.form['confirmar_senha']

        # Verifica se o usuário já existe
        usuario_existente = Usuario.query.filter_by(nome=nome).first()
        if usuario_existente:
            flash('Nome de usuário já está em uso.', 'danger')
            return redirect(url_for('login'))

        # Criptografa a senha antes de armazenar
        senha_hash = generate_password_hash(senha).decode('utf-8')

        # Cria um novo usuário
        novo_usuario = Usuario(nome=nome, senha=senha_hash)

        # Adiciona e commita no banco de dados
        db.session.add(novo_usuario)
        db.session.commit()

        flash('Cadastro realizado com sucesso! Você já pode fazer login.', 'success')
        return redirect(url_for('login'))
        
        return render_template('login.html')
    
    @app.route('/respostas')
    def respostas():
        return render_template('respostas.html')

    # API Routes
    @app.route('/api/topicos', methods=['GET', 'POST'])
    def api_topicos():
        if request.method == 'GET':
            topicos = Topico.query.order_by(Topico.data_criacao.desc()).all()
            return jsonify([topico.to_dict() for topico in topicos])
        
        elif request.method == 'POST':
            data = request.get_json()
            novo_topico = Topico(
                autor=data['autor'],
                topico=data['topico'],
                categoria=data['categoria'],
                conteudo=data['conteudo']
            )
            db.session.add(novo_topico)
            db.session.commit()
            return jsonify(novo_topico.to_dict()), 201

    @app.route('/api/topicos/<int:topico_id>', methods=['GET'])
    def api_topico_detalhe(topico_id):
        topico = Topico.query.get_or_404(topico_id)
        return jsonify(topico.to_dict())

    @app.route('/api/topicos/<int:topico_id>/respostas', methods=['GET', 'POST'])
    def api_respostas(topico_id):
        if request.method == 'GET':
            respostas = Resposta.query.filter_by(topico_id=topico_id).order_by(Resposta.data_criacao.asc()).all()
            return jsonify([resposta.to_dict() for resposta in respostas])
        
        elif request.method == 'POST':
            data = request.get_json()
            nova_resposta = Resposta(
                autor=data['autor'],
                conteudo=data['conteudo'],
                topico_id=topico_id
            )
            db.session.add(nova_resposta)
            db.session.commit()
            return jsonify(nova_resposta.to_dict()), 201

    @app.route('/api/estatisticas')
    def api_estatisticas():
        total_topicos = Topico.query.count()
        total_respostas = db.session.query(db.func.count(Resposta.id)).scalar()
        
        # Calcular usuários únicos
        autores_topicos = db.session.query(Topico.autor).distinct()
        autores_respostas = db.session.query(Resposta.autor).distinct()
        usuarios_unicos = set([autor[0] for autor in autores_topicos] + [autor[0] for autor in autores_respostas])
        
        return jsonify({
            'totalTopicos': total_topicos,
            'totalRespostas': total_respostas,
            'totalUsuarios': len(usuarios_unicos)
        })

    @app.route('/api/topicos/filtrar/<categoria>')
    def api_filtrar_topicos(categoria):
        if categoria == 'todos':
            topicos = Topico.query.order_by(Topico.data_criacao.desc()).all()
        else:
            topicos = Topico.query.filter_by(categoria=categoria).order_by(Topico.data_criacao.desc()).all()
        
        return jsonify([topico.to_dict() for topico in topicos])

    @app.route('/api/topicos/buscar/<termo>')
    def api_buscar_topicos(termo):
        topicos = Topico.query.filter(
            (Topico.topico.ilike(f'%{termo}%')) | 
            (Topico.conteudo.ilike(f'%{termo}%')) |
            (Topico.autor.ilike(f'%{termo}%'))
        ).order_by(Topico.data_criacao.desc()).all()
        
        return jsonify([topico.to_dict() for topico in topicos])