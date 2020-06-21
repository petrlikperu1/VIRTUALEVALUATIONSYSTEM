package BEAN;

public class AlternativaBean {
    private int     CODPREG;
    private int     CODALTER;
    int     NUMEROALTERNATIVA;
    private String  NUMALTER;
    private String  CLAVEALTER;
    private String  ENUNCIADOALTER;
    private String  IMGALTER;
    private String  ESTADOIMG;
    private String  ESTADOALTER;

    public int getCODPREG() {
        return CODPREG;
    }

    public int getNUMEROALTERNATIVA() {
        return NUMEROALTERNATIVA;
    }

    public void setNUMEROALTERNATIVA(int NUMEROALTERNATIVA) {
        this.NUMEROALTERNATIVA = NUMEROALTERNATIVA;
    }

    public void setCODPREG(int CODPREG) {
        this.CODPREG = CODPREG;
    }

    public int getCODALTER() {
        return CODALTER;
    }

    public void setCODALTER(int CODALTER) {
        this.CODALTER = CODALTER;
    }

    public String getNUMALTER() {
        return NUMALTER;
    }

    public void setNUMALTER(String NUMALTER) {
        this.NUMALTER = NUMALTER;
    }

    public String getCLAVEALTER() {
        return CLAVEALTER;
    }

    public void setCLAVEALTER(String CLAVEALTER) {
        this.CLAVEALTER = CLAVEALTER;
    }

    public String getENUNCIADOALTER() {
        return ENUNCIADOALTER;
    }

    public void setENUNCIADOALTER(String ENUNCIADOALTER) {
        this.ENUNCIADOALTER = ENUNCIADOALTER;
    }

    public String getIMGALTER() {
        return IMGALTER;
    }

    public void setIMGALTER(String IMGALTER) {
        this.IMGALTER = IMGALTER;
    }

    public String getESTADOIMG() {
        return ESTADOIMG;
    }

    public void setESTADOIMG(String ESTADOIMG) {
        this.ESTADOIMG = ESTADOIMG;
    }

    public String getESTADOALTER() {
        return ESTADOALTER;
    }

    public void setESTADOALTER(String ESTADOALTER) {
        this.ESTADOALTER = ESTADOALTER;
    }
}