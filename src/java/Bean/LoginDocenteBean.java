
package Bean;

/**
 *
 * @author MIGUEL
 */
public class LoginDocenteBean {
    private String  Apel_P, Apel_M, Nomb_D, SEXO, EmailD,DirecD;
    private int dniDoc,TelefD;

    public String getApel_P() {
        return Apel_P;
    }

    public void setApel_P(String Apel_P) {
        this.Apel_P = Apel_P;
    }

    public String getApel_M() {
        return Apel_M;
    }

    public void setApel_M(String Apel_M) {
        this.Apel_M = Apel_M;
    }

    public String getNomb_D() {
        return Nomb_D;
    }

    public void setNomb_D(String Nomb_D) {
        this.Nomb_D = Nomb_D;
    }

    public String getSEXO() {
        return SEXO;
    }

    public void setSEXO(String SEXO) {
        this.SEXO = SEXO;
    }

    public String getEmailD() {
        return EmailD;
    }

    public void setEmailD(String EmailD) {
        this.EmailD = EmailD;
    }

    public String getDirecD() {
        return DirecD;
    }

    public void setDirecD(String DirecD) {
        this.DirecD = DirecD;
    }

    public int getDniDoc() {
        return dniDoc;
    }

    public void setDniDoc(int dniDoc) {
        this.dniDoc = dniDoc;
    }

    public int getTelefD() {
        return TelefD;
    }

    public void setTelefD(int TelefD) {
        this.TelefD = TelefD;
    }
    
}
