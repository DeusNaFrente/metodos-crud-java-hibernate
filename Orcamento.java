package br.com.iris.model;

import br.com.iris.dao.ItcDao;
import br.com.iris.dao.ItemComissionadoDao;
import br.com.iris.dao.ItemEntregaDao;
import br.com.iris.dao.ItemLogEquipeDao;
import br.com.iris.dao.ItemLogRetiradaDao;
import br.com.iris.dao.ItemOrcDao;
import br.com.iris.dao.ItemTransporteDao;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;

@Entity
@Table(name = "orcamento", catalog = "milton")
public class Orcamento implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)

    private int id;

    private boolean logtime;
    private boolean logretirada;
    private boolean logentrega;
    private boolean logtransporte;
    private String  situacao;

    public boolean isLogtime() {
        return logtime;
    }

    public void setLogtime(boolean logtime) {
        this.logtime = logtime;
    }

   

    public boolean isLogretirada() {
        return logretirada;
    }

    public void setLogretirada(boolean logretirada) {
        this.logretirada = logretirada;
    }

    public boolean isLogentrega() {
        return logentrega;
    }

    public void setLogentrega(boolean logentrega) {
        this.logentrega = logentrega;
    }

    public boolean isLogtransporte() {
        return logtransporte;
    }

    public void setLogtransporte(boolean logtransporte) {
        this.logtransporte = logtransporte;
    }

    public String getSituacao() {
        return situacao;
    }

    public void setSituacao(String situacao) {
        this.situacao = situacao;
    }
    
    

    @OneToOne
    @JoinColumn(name = "idempresa")
    private Cliente cliente;

    @OneToOne
    @JoinColumn(name = "idcontato")
    private Contato contato;

    @OneToOne
    @JoinColumn(name = "idvendedor")
    private Vendedor vendedor;

    @OneToOne
    @JoinColumn(name = "idformapgt")
    private Formapgto formapgto;

    @OneToOne
    @JoinColumn(name = "idcondpgt")
    private Condpgto condpgto;

    @OneToOne
    @JoinColumn(name = "idveiculo")
    private Veiculo veiculo;

    @OneToOne
    @JoinColumn(name = "idcustovariavel")
    private Custovariavel custovariavel;

    @OneToOne
    @JoinColumn(name = "idfornecedor")
    Fornecedor fornecedor;

    @OneToOne
    @JoinColumn(name = "idcomissionado")
    Comissionado comissionado;

    @OneToOne
    @JoinColumn(name = "idtransporte")
    private Transporte transporte;

    @OneToOne
    @JoinColumn(name = "identrega")
    private Entrega entrega;

    @OneToOne
    @JoinColumn(name = "idlogequipe")
    private Logequipe logequipe;
    
    @OneToOne
    @JoinColumn(name = "idlogretira")
    private Logretirada logretira;

    @Transient
    private List<Itc> itensCustoVariavel;

    @Transient
    private List<ItemComissionado> itensC;

    @Transient
    private List<ItemOrc> itens;

    @Transient
    private List<ItemTransporte> itensT;

    @Transient
    private List<ItemEntrega> itensE;

    @Transient
    private List<ItemLogEquipe> itensTime;
    
    @Transient
    private List<ItemLogRetirada> itensRetira;

    private String nomeorc;
    private String logistica;
    private int prazoentrega;
    private int validade;
    private String faturamento;
    @Temporal(TemporalType.DATE)
    private Date logdataentrega;
    private int logprazoentrega;
    private int custotransportadora;
    private int despesaentrega;
    private int custocorreio;
    private String tipodecusto;
    private double valor;

    public Condpgto getCondpgto() {
        return condpgto;
    }

    public void setCondpgto(Condpgto condpgto) {
        this.condpgto = condpgto;
    }

    public Formapgto getFormapgto() {
        return formapgto;
    }

    public void setFormapgto(Formapgto formapgto) {
        this.formapgto = formapgto;
    }

    public String getFaturamento() {
        return faturamento;
    }

    public void setFaturamento(String faturamento) {
        this.faturamento = faturamento;
    }

    public String getLogistica() {
        return logistica;
    }

    public void setLogistica(String logistica) {
        this.logistica = logistica;
    }

    public int getPrazoentrega() {
        return prazoentrega;
    }

    public void setPrazoentrega(int prazoentrega) {
        this.prazoentrega = prazoentrega;
    }

    public int getValidade() {
        return validade;
    }

    public void setValidade(int validade) {
        this.validade = validade;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Cliente getCliente() {
        return cliente;
    }

    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
    }

    public String getNomeorc() {
        return nomeorc;
    }

    public Contato getContato() {
        return contato;
    }

    public void setContato(Contato contato) {
        this.contato = contato;
    }

    public Vendedor getVendedor() {
        return vendedor;
    }

    public void setVendedor(Vendedor vendedor) {
        this.vendedor = vendedor;
    }

    public void setNomeorc(String nomeorc) {
        this.nomeorc = nomeorc;
    }

    public List<ItemOrc> getItens() {

        if (itens == null) {
            if (this.getId() != 0) {
                itens = new ItemOrcDao().getByOrcamento(this);
            } else {
                itens = new ArrayList<>();
            }
        }
        return itens;
    }

    public List<Itc> getItensCustoVariavel() {
        if (itensCustoVariavel == null) {
            if (this.getId() != 0) {
                itensCustoVariavel = new ItcDao().getByOrcamento(this);
            } else {
                itensCustoVariavel = new ArrayList<>();
            }
        }
        return itensCustoVariavel;
    }

    public void setItensCustoVarivel(List<Itc> itensCustoVarivel) {
        this.itensCustoVariavel = itensCustoVarivel;
    }

    public void setItens(List<ItemOrc> itens) {
        this.itens = itens;
    }

   
    public Date getLogdataentrega() {
        return logdataentrega;
    }

    public void setLogdataentrega(Date logdataentrega) {
        this.logdataentrega = logdataentrega;
    }

    public int getLogprazoentrega() {
        return logprazoentrega;
    }

    public void setLogprazoentrega(int logprazoentrega) {
        this.logprazoentrega = logprazoentrega;
    }

    public Veiculo getVeiculo() {
        return veiculo;
    }

    public void setVeiculo(Veiculo veiculo) {
        this.veiculo = veiculo;
    }

    public int getCustotransportadora() {
        return custotransportadora;
    }

    public void setCustotransportadora(int custotransportadora) {
        this.custotransportadora = custotransportadora;
    }

    public int getDespesaentrega() {
        return despesaentrega;
    }

    public void setDespesaentrega(int despesaentrega) {
        this.despesaentrega = despesaentrega;
    }

    public Custovariavel getCustovariavel() {
        return custovariavel;
    }

    public void setCustovariavel(Custovariavel custovariavel) {
        this.custovariavel = custovariavel;
    }

    public Fornecedor getFornecedor() {
        return fornecedor;
    }

    public void setFornecedor(Fornecedor fornecedor) {
        this.fornecedor = fornecedor;
    }

    public int getCustocorreio() {
        return custocorreio;
    }

    public void setCustocorreio(int custocorreio) {
        this.custocorreio = custocorreio;
    }

    public String getTipodecusto() {
        return tipodecusto;
    }

    public void setTipodecusto(String tipodecusto) {
        this.tipodecusto = tipodecusto;
    }

    public Comissionado getComissionado() {
        return comissionado;
    }

    public void setComissionado(Comissionado comissionado) {
        this.comissionado = comissionado;
    }

    public List<ItemComissionado> getItensC() {

        if (itensC == null) {
            if (this.getId() != 0) {
                itensC = new ItemComissionadoDao().getByOrcamento(this);
            } else {
                itensC = new ArrayList<>();
            }
        }

        return itensC;
    }

    public List<ItemTransporte> getItensT() {

        if (itensT == null) {
            if (this.getId() != 0) {
                itensT = new ItemTransporteDao().getByOrcamento(this);

            } else {
                itensT = new ArrayList<>();
            }

        }

        return itensT;

    }

    public void setItensT(List<ItemTransporte> itensT) {
        this.itensT = itensT;
    }

    public List<ItemEntrega> getItensE() {
        if (itensE == null) {
            if (this.getId() != 0) {
                itensE = new ItemEntregaDao().getByOrcamento(this);
            } else {
                itensE = new ArrayList<>(); //criar item transporte
            }
        }
        return itensE;
    }

    public void setItensE(List<ItemEntrega> itensE) {
        this.itensE = itensE;
    }

    public void setItensC(List<ItemComissionado> itensC) {
        this.itensC = itensC;
    }

    public double getValor() {
        return valor;
    }

    public void setValor(double valor) {
        this.valor = valor;
    }

    public Transporte getTransporte() {
        return transporte;

    }

    public void setTransporte(Transporte transporte) {
        this.transporte = transporte;
    }

    public Entrega getEntrega() {
        return entrega;
    }

    public void setEntrega(Entrega entrega) {
        this.entrega = entrega;
    }

    public Logequipe getLogequipe() {
        return logequipe;
    }

    public void setLogequipe(Logequipe logequipe) {
        this.logequipe = logequipe;
    }

    

    public List<ItemLogEquipe> getItensTime() {
        if (itensTime == null) {
            if (this.getId() != 0) {
                itensTime = new ItemLogEquipeDao().getByOrcamento(this);
                
            } else {
                itensTime = new ArrayList<>();
            }
        }
        return itensTime;
    }

    public void setItensTime(List<ItemLogEquipe> itensTime) {
        this.itensTime = itensTime;
    }

    public Logretirada getLogretira() {
        return logretira;
    }

    public void setLogretira(Logretirada logretira) {
        this.logretira = logretira;
    }

    public List<ItemLogRetirada> getItensRetira() {
        if (itensRetira == null) {
            if (this.getId() != 0) {
                itensRetira = new ItemLogRetiradaDao().getByOrcamento(this);
                
            } else {
                itensRetira = new ArrayList<>();
            }
        }
        return itensRetira;
    }

    public void setItensRetira(List<ItemLogRetirada> itensRetira) {
        this.itensRetira = itensRetira;
    }
    
    
    
    
    
    

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 53 * hash + this.id;
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final Orcamento other = (Orcamento) obj;
        if (this.id != other.id) {
            return false;
        }
        return true;
    }

}
