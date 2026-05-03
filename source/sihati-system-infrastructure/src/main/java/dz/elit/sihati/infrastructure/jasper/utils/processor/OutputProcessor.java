package dz.elit.sihati.infrastructure.jasper.utils.processor;

import dz.elit.sihati.infrastructure.enumration.ReportExportType;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperPrint;

import java.io.OutputStream;
import java.util.jar.JarException;

public interface OutputProcessor {

    void export(JasperPrint jasperPrint, OutputStream outputStream) throws JarException, JRException;


    ReportExportType getExportType();
}
