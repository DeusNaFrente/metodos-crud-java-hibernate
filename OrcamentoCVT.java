package br.com.iris.model;

import br.com.iris.dao.OrcamentoDao;
import java.io.Serializable;
import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;
import javax.faces.convert.Converter;
import javax.faces.convert.FacesConverter;


@FacesConverter(forClass = Orcamento.class)
public class OrcamentoCVT implements Converter, Serializable {
    private static final long serialVersionUID = 1L;

    @Override
    public Orcamento getAsObject(FacesContext arg0, UIComponent arg1, String arg2) {
        return new OrcamentoDao().getById(Orcamento.class, Integer.parseInt(arg2));  
    }

    @Override
    public String getAsString(FacesContext arg0, UIComponent arg1, Object arg2) {
        return "" + ((Orcamento) arg2).getId();
    }
}
