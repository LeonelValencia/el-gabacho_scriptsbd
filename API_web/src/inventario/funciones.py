from sqlalchemy import func, case, or_
from sqlalchemy.exc import DBAPIError
from init import db
from inventario.modelos import Inventario, UnidadMedida, Imagenes
from categorias.modelos import Categoria
from vehiculos.modelos import ModeloAutoparte, ModeloAnio, Modelo, Marca, Anio

# OBTENER INFORMACION DE TODOS LOS PRODUTOS ACTIVOS
def get_productos(idMarca, idModelo, anioInicio, anioFin):
    query = db.session.query(
        Inventario.idInventario,
        Inventario.codigoBarras,
        Inventario.nombre,
        Inventario.descripcion,
        Inventario.cantidadActual,
        Inventario.mayoreo,
        Inventario.menudeo,
        Inventario.colocado,
        UnidadMedida.tipoMedida,
        func.coalesce(Categoria.nombre, 'SIN CATEGORIA').label('categoriaNombre'),
        func.coalesce(Imagenes.imgRepresentativa, False).label('imgRepresentativa'),
    ).outerjoin(
        Categoria, Inventario.idCategoria == Categoria.idCategoria
    ).join(
        UnidadMedida, Inventario.idUnidadMedida == UnidadMedida.idUnidadMedida
    ).outerjoin(
        ModeloAutoparte, Inventario.idInventario == ModeloAutoparte.idInventario
    ).outerjoin(
        ModeloAnio, ModeloAutoparte.idModeloAnio == ModeloAnio.idModeloAnio
    ).outerjoin(
        Modelo, ModeloAnio.idModelo == Modelo.idModelo
    ).outerjoin(
        Marca, Modelo.idMarca == Marca.idMarca
    ).outerjoin(
        Anio, ModeloAnio.idAnio == Anio.idAnio
    ).outerjoin(
        Imagenes, Inventario.idInventario == Imagenes.idInventario
    ).filter(
        Inventario.estado == 1,
        Marca.idMarca == idMarca,
        Modelo.idModelo == idModelo,
        Anio.anioInicio == anioInicio,
        Anio.anioFin == anioFin
    ).group_by(
        Inventario.idInventario
    ).all()

    productos_list = []
    for producto in query:
        # Construir la lista de imágenes
        base_path = "C:\\imagenes_el_gabacho\\productosInventario"
        imagen = ""
        if producto.imgRepresentativa:
            imagen = f"{base_path}\\{producto.codigoBarras}_1.webp"

        if not imagen:
            imagen = ''

        productos_list.append({
            'id': producto.idInventario,
            'codigo': producto.codigoBarras,
            'nombre': producto.nombre,
            'descripcion': producto.descripcion,
            'existencias': producto.cantidadActual,
            'precioMayoreo': producto.mayoreo,
            'precioMenudeo': producto.menudeo,
            'precioColocado': producto.colocado,
            'tipoMedida': producto.tipoMedida,
            'categoria': producto.categoriaNombre,
            'imagen': imagen
        })

    return productos_list

# OBTENER INFORMACION DEL PRODUCTO ACTIVO MEDIANTE SU CODIGO DE BARRAS DE MODO PRECISO ---------------------------------------
def get_producto_preciso(codigo_barras):
    query = db.session.query(
        Inventario.idInventario,
        Inventario.codigoBarras,
        Inventario.nombre,
        Inventario.descripcion,
        Inventario.cantidadActual,
        Inventario.mayoreo,
        Inventario.menudeo,
        Inventario.colocado,
        UnidadMedida.tipoMedida,
        func.coalesce(Categoria.nombre, 'SIN CATEGORIA').label('categoriaNombre'),
        func.group_concat(
            func.concat(
                Marca.nombre, ' ', Modelo.nombre, ' ',
                case(
                    (Anio.anioTodo == 1, 'ALL YEARS'),
                    else_=func.concat(
                        func.right(func.coalesce(Anio.anioInicio, ''), 2),
                        '-',
                        func.right(func.coalesce(Anio.anioFin, ''), 2)
                    )
                )
            ).distinct()
        ).label('aplicaciones'),
        func.coalesce(Imagenes.imgRepresentativa, False).label('imgRepresentativa'),
        func.coalesce(Imagenes.img2, False).label('img2'),
        func.coalesce(Imagenes.img3, False).label('img3'),
        func.coalesce(Imagenes.img4, False).label('img4'),
        func.coalesce(Imagenes.img5, False).label('img5')
    ).outerjoin(
        Categoria, Inventario.idCategoria == Categoria.idCategoria
    ).join(
        UnidadMedida, Inventario.idUnidadMedida == UnidadMedida.idUnidadMedida
    ).outerjoin(
        ModeloAutoparte, Inventario.idInventario == ModeloAutoparte.idInventario
    ).outerjoin(
        ModeloAnio, ModeloAutoparte.idModeloAnio == ModeloAnio.idModeloAnio
    ).outerjoin(
        Modelo, ModeloAnio.idModelo == Modelo.idModelo
    ).outerjoin(
        Marca, Modelo.idMarca == Marca.idMarca
    ).outerjoin(
        Anio, ModeloAnio.idAnio == Anio.idAnio
    ).outerjoin(
        Imagenes, Inventario.idInventario == Imagenes.idInventario
    ).filter(
        Inventario.estado == 1,
        Inventario.codigoBarras == codigo_barras
    ).group_by(
        Inventario.idInventario
    ).first()

    # Procesar el campo de aplicaciones
    aplicaciones = query.aplicaciones
    if aplicaciones:
        aplicaciones = [app.strip() for app in aplicaciones.split(',') if app.strip()]
    else:
        aplicaciones = ["SIN NINGUNA APLICACION"]

    # Construir la lista de imágenes
    base_path = "C:\\imagenes_el_gabacho\\productosInventario"
    imagenes = []
    if query.imgRepresentativa:
        imagenes.append(f"{base_path}\\{query.codigoBarras}_1.png")
    if query.img2:
        imagenes.append(f"{base_path}\\{query.codigoBarras}_2.png")
    if query.img3:
        imagenes.append(f"{base_path}\\{query.codigoBarras}_3.png")
    if query.img4:
        imagenes.append(f"{base_path}\\{query.codigoBarras}_4.png")
    if query.img5:
        imagenes.append(f"{base_path}\\{query.codigoBarras}_5.png")

    if not imagenes:
        imagenes.append('SIN IMAGEN')

    producto = {
        'id': query.idInventario,
        'codigo': query.codigoBarras,
        'nombre': query.nombre,
        'descripcion': query.descripcion,
        'existencias': query.cantidadActual,
        'precioMayoreo': query.mayoreo,
        'precioMenudeo': query.menudeo,
        'precioColocado': query.colocado,
        'tipoMedida': query.tipoMedida,
        'categoria': query.categoriaNombre,
        'aplicaciones': aplicaciones,
        'imagenes': imagenes
    }

    return producto

# OBTENER INFORMACION DE PRODUCTOS ACTIVOS MEDIANTE SU CODIGO DE BARRAS DE MODO SIMILITUD ---------------------------------------
def get_productos_similares(codigo_barras):
    query = db.session.query(
        Inventario.idInventario,
        Inventario.codigoBarras,
        Inventario.nombre,
        Inventario.descripcion,
        Inventario.cantidadActual,
        Inventario.cantidadMinima,
        Inventario.precioCompra,
        Inventario.mayoreo,
        Inventario.menudeo,
        Inventario.colocado,
        Inventario.estado,
        UnidadMedida.tipoMedida,
        func.coalesce(Categoria.nombre, 'SIN CATEGORIA').label('categoriaNombre'),
        func.group_concat(
            func.concat(
                Marca.nombre, ' ', Modelo.nombre, ' ',
                case(
                    (Anio.anioTodo == 1, 'ALL YEARS'),
                    else_=func.concat(
                        func.right(func.coalesce(Anio.anioInicio, ''), 2),
                        '-',
                        func.right(func.coalesce(Anio.anioFin, ''), 2)
                    )
                )
            ).distinct()
        ).label('aplicaciones'),
        func.coalesce(Imagenes.imgRepresentativa, False).label('imgRepresentativa'),
        func.coalesce(Imagenes.img2, False).label('img2'),
        func.coalesce(Imagenes.img3, False).label('img3'),
        func.coalesce(Imagenes.img4, False).label('img4'),
        func.coalesce(Imagenes.img5, False).label('img5')
    ).outerjoin(
        Categoria, Inventario.idCategoria == Categoria.idCategoria
    ).join(
        UnidadMedida, Inventario.idUnidadMedida == UnidadMedida.idUnidadMedida
    ).outerjoin(
        ModeloAutoparte, Inventario.idInventario == ModeloAutoparte.idInventario
    ).outerjoin(
        ModeloAnio, ModeloAutoparte.idModeloAnio == ModeloAnio.idModeloAnio
    ).outerjoin(
        Modelo, ModeloAnio.idModelo == Modelo.idModelo
    ).outerjoin(
        Marca, Modelo.idMarca == Marca.idMarca
    ).outerjoin(
        Anio, ModeloAnio.idAnio == Anio.idAnio
    ).outerjoin(
        Imagenes, Inventario.idInventario == Imagenes.idInventario
    ).filter(
        Inventario.estado == 1,
        Inventario.codigoBarras.like(f'%{codigo_barras}%')  # Buscar coincidencias parciales
    ).group_by(
        Inventario.idInventario
    ).all()

    productos = []
    base_path = "C:\\imagenes_el_gabacho\\productosInventario"
    for item in query:
        aplicaciones = item.aplicaciones
        if aplicaciones:
            aplicaciones = [app.strip() for app in aplicaciones.split(',') if app.strip()]
        else:
            aplicaciones = ["SIN NINGUNA APLICACION"]

        imagenes = []
        if item.imgRepresentativa:
            imagenes.append(f"{base_path}\\{item.codigoBarras}_1.png")
        if item.img2:
            imagenes.append(f"{base_path}\\{item.codigoBarras}_2.png")
        if item.img3:
            imagenes.append(f"{base_path}\\{item.codigoBarras}_3.png")
        if item.img4:
            imagenes.append(f"{base_path}\\{item.codigoBarras}_4.png")
        if item.img5:
            imagenes.append(f"{base_path}\\{item.codigoBarras}_5.png")

        if not imagenes:
            imagenes.append('SIN IMAGEN')

        productos.append({
            'idInventario': item.idInventario,
            'codigo': item.codigoBarras,
            'nombre': item.nombre,
            'descripcion': item.descripcion,
            'existencias': item.cantidadActual,
            'cantidadMinima': item.cantidadMinima,
            'precioCompra': item.precioCompra,
            'precioMayoreo': item.mayoreo,
            'precioMenudeo': item.menudeo,
            'precioColocado': item.colocado,
            'tipoMedida': item.tipoMedida,
            'categoria': item.categoriaNombre,
            'aplicaciones': aplicaciones,
            'imagenes': imagenes
        })

    return productos

# OBTENER INFORMACION DE PRODUCTOS ACTIVOS MEDIANTE DICHA INFORMACION DE MODO SIMILITUD
def buscar_inventarios(filtros):
    query = db.session.query(
        Inventario.idInventario,
        Inventario.codigoBarras,
        Inventario.nombre,
        Inventario.descripcion,
        Inventario.cantidadActual,
        Marca.nombre.label('marca'),
        Modelo.nombre.label('modelo'),
        func.concat(func.coalesce(Anio.anioInicio, ''), '-', func.coalesce(Anio.anioFin, '')).label('anioRango')
    ).join(
        Categoria, Inventario.idCategoria == Categoria.idCategoria
    ).outerjoin(
        ModeloAutoparte, Inventario.idInventario == ModeloAutoparte.idInventario
    ).outerjoin(
        ModeloAnio, ModeloAutoparte.idModeloAnio == ModeloAnio.idModeloAnio
    ).outerjoin(
        Modelo, ModeloAnio.idModelo == Modelo.idModelo
    ).outerjoin(
        Marca, Modelo.idMarca == Marca.idMarca
    ).outerjoin(
        Anio, ModeloAnio.idAnio == Anio.idAnio
    )

    if filtros.get('codigoBarras'):
        query = query.filter(Inventario.codigoBarras.like(f"%{filtros['codigoBarras']}%"))
    if filtros.get('nombre'):
        query = query.filter(Inventario.nombre.like(f"%{filtros['nombre']}%"))
    if filtros.get('descripcion'):
        query = query.filter(Inventario.descripcion.like(f"%{filtros['descripcion']}%"))
    if filtros.get('categoria'):
        query = query.filter(Categoria.nombre.like(f"%{filtros['categoria']}%"))
    if filtros.get('marca'):
        query = query.filter(Marca.nombre.like(f"%{filtros['marca']}%"))
    if filtros.get('modelo'):
        query = query.filter(Modelo.nombre.like(f"%{filtros['modelo']}%"))
    if filtros.get('anio'):
        query = query.filter(func.concat(func.coalesce(Anio.anioInicio, ''), '-', func.coalesce(Anio.anioFin, '')) == filtros['anio'])

    resultados = query.all()

    inventarios = []
    for resultado in resultados:
        inventarios.append({
            'idInventario': resultado.idInventario,
            'codigoBarras': resultado.codigoBarras,
            'nombre': resultado.nombre,
            'descripcion': resultado.descripcion,
            'cantidadActual': resultado.cantidadActual,
            'empresa': resultado.empresa,
            'marca': resultado.marca,
            'modelo': resultado.modelo,
            'anioRango': resultado.anioRango,
        })

    return inventarios