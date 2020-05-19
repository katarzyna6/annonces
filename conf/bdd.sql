#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: user
#------------------------------------------------------------

CREATE TABLE user(
        id_user      Int  Auto_increment  NOT NULL ,
        nick         Varchar (200) NOT NULL ,
        nom          Varchar (200) NOT NULL ,
        prenom       Varchar (200) NOT NULL ,
        email        Varchar (200) NOT NULL ,
        password     Varchar (200) NOT NULL ,
        autorisation Bool NOT NULL
	,CONSTRAINT user_PK PRIMARY KEY (id_user)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: annonce
#------------------------------------------------------------

CREATE TABLE annonce(
        id_annonce  Int  Auto_increment  NOT NULL ,
        title       Varchar (200) NOT NULL ,
        description Varchar (250) NOT NULL ,
        id_user     Int NOT NULL
	,CONSTRAINT annonce_PK PRIMARY KEY (id_annonce)

	,CONSTRAINT annonce_user_FK FOREIGN KEY (id_user) REFERENCES user(id_user)
)ENGINE=InnoDB;
