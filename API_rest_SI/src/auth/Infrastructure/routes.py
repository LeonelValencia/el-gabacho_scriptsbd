from .. import auth
from flask import request, jsonify
from auth.Application.funciones import iniciar_sesion

@auth.route('/login', methods=['POST'])
def login():
    try:
        data = request.get_json()
        username = data.get('usuario')
        password = data.get('contrasena')
        
        if not username or not password:
            return jsonify({'error': 'Missing username or password'}), 400
        
        sesion= iniciar_sesion(username, password)
        return sesion
    except Exception as e:
        print(e)
        return jsonify({'error': 'Error en el login'}), 500

# @auth.route('/signup', methods=['POST'])
# def signup():
#     data = request.get_json()
#     username = data.get('username')
#     password = data.get('password')
#     if not username or not password:
#         return jsonify({'error': 'Missing username or password'}), 400
#     user = Usuario.query.filter_by(usuario=username).first()
#     if user is not None:
#         return jsonify({'error': 'Username already exists'}), 400
#     user = Usuario(usuario=username)
#     user.set_password(password)
#     user.save()
#     return jsonify({'message': 'User created successfully'})

@auth.route('/logout', methods=['POST'])
def logout():
    return jsonify({'message': 'User logged out successfully'})