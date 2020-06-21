
package UTIL;
import BEAN.SemestreBean;
import java.util.ArrayList;
import java.util.Date;
import java.util.GregorianCalendar;
public class EvaluarFechas 
{
    public static  SemestreBean  EvaluarRangoFechas(String fechaactual1, ArrayList<SemestreBean>  listasemestre)
  {   boolean  estado=false;
      String   anoiniciocad,mesiniciocad,diainiciocad,anofincad,mesfincad,diafincad,anoevaluarcad,mesevaluarcad,diaevaluarcad,fechainicio1,fechafin1;
      int  anoinicio,mesinicio,diainicio,anofin,mesfin,diafin,anoevaluar,mesevaluar,diaevaluar;
      SemestreBean  objSemestre=null;
      try {
          
          for(SemestreBean   obj:listasemestre)
             { 
              fechainicio1=obj.getFECHAINICIO();
              fechafin1=obj.getFECHAFIN();
              anoiniciocad=fechainicio1.substring(0,4);
              anoinicio=Integer.parseInt(anoiniciocad);
              mesiniciocad=fechainicio1.substring(5,7);
              mesinicio=Integer.parseInt(mesiniciocad);
              diainiciocad=fechainicio1.substring(8,10);
              diainicio=Integer.parseInt(diainiciocad);
              anofincad=fechafin1.substring(0,4);
              anofin=Integer.parseInt(anofincad);
              mesfincad=fechafin1.substring(5,7);
              mesfin=Integer.parseInt(mesfincad);
              diafincad=fechafin1.substring(8,10);
              diafin=Integer.parseInt(diafincad);

              anoevaluarcad=fechaactual1.substring(0,4);
              anoevaluar=Integer.parseInt(anoevaluarcad);
              mesevaluarcad=fechaactual1.substring(5,7);
              mesevaluar=Integer.parseInt(mesevaluarcad);
              diaevaluarcad=fechaactual1.substring(8,10);
              diaevaluar=Integer.parseInt(diaevaluarcad);

              GregorianCalendar fechafin = new GregorianCalendar(anofin,mesfin,diafin);
              GregorianCalendar fechaevaluar = new GregorianCalendar(anoevaluar,mesevaluar,diaevaluar);
              GregorianCalendar fechainicio = new GregorianCalendar(anoinicio,mesinicio,diainicio);
              Date fecfin = fechafin.getTime();
              Date fecevaluacion =fechaevaluar.getTime();
              Date fecinicio = fechainicio.getTime();
              long tiempofin=fecfin.getTime() - fecevaluacion.getTime();
              long tiempoinicio=fecevaluacion.getTime()-fecinicio.getTime() ;
              objSemestre=new SemestreBean();
              
           
                if( (tiempoinicio/(3600*24*1000)>=0) &&    (tiempofin/(3600*24*1000)>=0))
                {
                   objSemestre.setCODSEMESTRE(obj.getCODSEMESTRE());
                   objSemestre.setNOMBSEMESTRE(obj.getNOMBSEMESTRE());
                   objSemestre.setFECHAINICIO(obj.getFECHAINICIO());
                   objSemestre.setFECHAFIN(obj.getFECHAFIN());
                   objSemestre.setFECHAACTUAL(fechaactual1);
                   objSemestre.setESTADO(obj.getESTADO());
                   break;
                }else
                {
                   objSemestre.setCODSEMESTRE(0);
                   objSemestre.setNOMBSEMESTRE("-------");
                   objSemestre.setFECHAINICIO("00-00-0000");
                   objSemestre.setFECHAFIN("00-00-0000");
                   objSemestre.setFECHAACTUAL("00-00-0000");
                   objSemestre.setESTADO("A");   
                }
     }
          
          
          
          
      } catch (Exception e) {
          
      }
  
     
      return objSemestre;
   }
}
