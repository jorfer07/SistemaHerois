package modelo;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import modelo.Heroi;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2016-07-05T16:38:27")
@StaticMetamodel(Editora.class)
public class Editora_ { 

    public static volatile SingularAttribute<Editora, Integer> codigo;
    public static volatile ListAttribute<Editora, Heroi> heroiList;
    public static volatile SingularAttribute<Editora, Date> datafundacao;
    public static volatile SingularAttribute<Editora, String> nome;

}