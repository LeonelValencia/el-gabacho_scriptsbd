from flask import Blueprint

vehicles = Blueprint('vehiculos', __name__)

from vehiculos import routes