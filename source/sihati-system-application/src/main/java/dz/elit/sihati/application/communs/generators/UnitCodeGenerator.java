package dz.elit.sihati.application.communs.generators;

public class UnitCodeGenerator {

    public static String generate(String structureActivityCode, String lastUnitCode, String wilayaCode) {
        try {
            StringBuilder code = new StringBuilder(structureActivityCode);

            if (lastUnitCode != null) {
                String seq = lastUnitCode.substring(lastUnitCode.indexOf('.') + 1, 8);
                int num = Integer.parseInt(seq) + 1;
                String seqNumber = "OR." + String.format("%05d", num);
                code.append(seqNumber);
            } else {
                String seqNumber = "OR." + String.format("%05d", 1);
                code.append(seqNumber);
            }

            code.append(wilayaCode);

            return code.toString();
        } catch (Exception ex) {

            return "OR.00000";

        }
    }

    public static String generateDomainCode(String lastDomainCode) {

        if (lastDomainCode != null) {
            String maxCode = lastDomainCode.substring(3);
            int intCode = Integer.parseInt(maxCode) + 1;
            return "D."+String.format("%04d",intCode);
        }
        return "D.0000";
    }
}
