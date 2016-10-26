package dao;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import modelo.Equipe;

public class EquipeDAO {
    EntityManager em;
    
    public EquipeDAO() throws Exception {
        EntityManagerFactory emf;
        emf = Conexao.getConexao();
        em = emf.createEntityManager();
    }
    
    public void incluir(Equipe obj) throws Exception {
        try {
            em.getTransaction().begin();
            em.persist(obj);
            em.getTransaction().commit();
        } catch (RuntimeException e) {
            em.getTransaction().rollback();
            throw e;
        } finally {
            em.close();
        }
    }

    public List<Equipe> listar() throws Exception {
        return em.createNamedQuery("Equipe.findAll").getResultList();
    }
    public List<Equipe> listar(String filtro) throws Exception{
        return em.createNamedQuery("Equipe.findFilter").setParameter("filtro","%" + filtro + "%").getResultList();
    }
    
    public void alterar(Equipe obj) throws Exception {
        
        try {
            em.getTransaction().begin();
            em.merge(obj);
            em.getTransaction().commit();
        } catch (RuntimeException e) {
            em.getTransaction().rollback();
            throw e;
        } finally {
            em.close();
        }
    }
    
    public void excluir(Equipe obj) throws Exception {
        
        try {
            em.getTransaction().begin();
            em.remove(obj);
            em.getTransaction().commit();
        } catch (RuntimeException e) {
            em.getTransaction().rollback();
        } finally {
            em.close();
        }
    }
    public Equipe buscarPorChavePrimaria(Integer codigo){
        return em.find(Equipe.class, codigo);
        }

    public void fechaEmf() {
        Conexao.closeConexao();
    }
}