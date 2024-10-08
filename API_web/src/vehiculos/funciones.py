from init import db
from vehiculos.modelos import Marca, MarcaSchema, Modelo, ModeloAnio, Anio, ModeloAutoparte
from inventario.modelos import Inventario
from categorias.modelos import Categoria
from sqlalchemy import func, distinct
from sqlalchemy.exc import IntegrityError

marca_schema = MarcaSchema()
marcas_schema = MarcaSchema(many=True) 

# -----------------------------------------------------------------------------------------------------------------------------------
# -----------------------------------------------------------------------------------------------------------------------------------
# CONSULTA PRINCIPAL DE VEHICULOS : MARCAS
# OBTIENE MARCAS CON SU NUMERO DE MODELOS

def get_marcas():
    marcas = db.session.query(
        Marca.idMarca,
        Marca.nombre,
        Marca.urlLogo,
    ).all()

    marcas_list = []
    for marca in marcas:
        marcas_list.append({
            'id': marca.idMarca,
            'nombre': marca.nombre,
            'urlLogo': marca.urlLogo
        })

    return marcas_list

# -----------------------------------------------------------------------------------------------------------------------------------
# -----------------------------------------------------------------------------------------------------------------------------------

# CRUD DE MARCA: BUSCAR POR NOMBRE DE LA MARCA, REALIZAR UNA NUEVA MARCA, EDITAR MARCA Y ELIMINAR MARCA

def get_buscar_marcas_similar(nombremarca):
    marcas = db.session.query(
        Marca.idMarca,
        Marca.nombre,
        Marca.urlLogo,
        db.func.count(Modelo.idModelo).label('numeroModelos')
        ).outerjoin(
            Modelo, Marca.idMarca == Modelo.idMarca
        ).filter(
            Marca.nombre.like(f'%{nombremarca}%')
        ).group_by(
            Marca.idMarca
        ).all()
    
    marcas_list = []
    for marca in marcas:
        marcas_list.append({
            'Id': marca.idMarca,
            'Nombre': marca.nombre,
            'UrlLogo': marca.urlLogo,
            'NumModelos': marca.numeroModelos,
            })
        
        return marcas_list


# -----------------------------------------------------------------------------------------------------------------------------------
# -----------------------------------------------------------------------------------------------------------------------------------
# CONSULTA SECUNDARIA DE VEHICULOS : MARCAS (ID) : MODELOS
# OBTENER MODELOS CON NUMERO DE PRODUCTOS RELACIONADOS MEDIANTE ID DE LA MARCA
def obtener_modelos(idMarca):
    resultados = db.session.query(
        Modelo.idModelo,
        Modelo.nombre.label('nombreModelo'),
        func.group_concat(func.concat(func.coalesce(Anio.anioInicio, ''), '-', func.coalesce(Anio.anioFin, ''))).label('anios')
    ).join(
        Marca, Marca.idMarca == Modelo.idMarca
    ).outerjoin(
        ModeloAnio, Modelo.idModelo == ModeloAnio.idModelo
    ).outerjoin(
        Anio, ModeloAnio.idAnio == Anio.idAnio
    ).outerjoin(
        ModeloAutoparte, ModeloAnio.idModeloAnio == ModeloAutoparte.idModeloAnio
    ).outerjoin(
        Inventario, ModeloAutoparte.idInventario == Inventario.idInventario
    ).outerjoin(
        Categoria, Inventario.idCategoria == Categoria.idCategoria
    ).filter(
        Marca.idMarca == idMarca,
        Categoria.nombre == 'PARABRISAS'
    ).group_by(
        Modelo.idModelo
    ).all()

    modelos_list = []
    for resultado in resultados:
        anios = resultado.anios
        if anios == "-":
            anios_list = []
        else:
            anios_list = anios.split(',')
            if anios_list[0] == '0-0':
                anios_list.pop(0)
                
            anios_list = list(set(anios_list))
            
            anios_list_copy = anios_list.copy()
            for i in range(len(anios_list_copy)): 
                anios = anios_list_copy[i].split('-')
                if anios[0] == anios[1]:
                    anios_list.remove(anios_list_copy[i])
                        
            anios_list.sort()
        modelos_list.append({
            'id': resultado.idModelo,
            'nombre': resultado.nombreModelo,
            'anios': anios_list
        })

    return modelos_list
# -----------------------------------------------------------------------------------------------------------------------------------
# -----------------------------------------------------------------------------------------------------------------------------------
# CRUD DE MODELOS: BUSCAR POR NOMBRE DEL MODELO, REALIZAR UN NUEVO MODELO, EDITAR MODELO Y ELIMINAR MODELO
def get_buscar_modelos_similar(idMarca,nombremodelo):
    resultados = db.session.query(
        Marca.idMarca,
        Modelo.idModelo,
        Modelo.nombre.label('nombreModelo'),
        func.count(distinct(Inventario.idInventario)).label('numeroProductos')
    ).join(
        Modelo, Marca.idMarca == Modelo.idMarca
    ).outerjoin(
        ModeloAnio, Modelo.idModelo == ModeloAnio.idModelo
    ).outerjoin(
        ModeloAutoparte, ModeloAnio.idModeloAnio == ModeloAutoparte.idModeloAnio
    ).outerjoin(
        Inventario, ModeloAutoparte.idInventario == Inventario.idInventario
    ).filter(
        Marca.idMarca == idMarca,
        Modelo.nombre.like(f'%{nombremodelo}%')
    ).group_by(
        Modelo.idModelo
    ).all()

    modelos_list = []
    for resultado in resultados:
        modelos_list.append({
            'IdMarca': resultado.idMarca,
            'Id': resultado.idModelo,
            'Nombre': resultado.nombreModelo,
            'NumProductos': resultado.numeroProductos
            })

    return modelos_list
