class Config():
    debug= True
    mysql_Host='localhost'
    mysql_user= 'root'
    mysql_password= 'root'
    mysql_db='el_gabacho'
    

    SQLALCHEMY_DATABASE_URI = 'mysql+pymysql://'+mysql_user+':'+mysql_password+'@'+mysql_Host+'/'+mysql_db


configuracion={
    'development':Config
}
