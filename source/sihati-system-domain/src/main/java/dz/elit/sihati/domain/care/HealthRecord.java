package dz.elit.sihati.domain.care;//package dz.elit.sihati.domain.care.view;
//
//import dz.elit.sihati.domain.reference.Patient;
//import jakarta.persistence.*;
//import lombok.*;
//
//import java.io.Serializable;
//import java.time.LocalDate;
//
//@Entity
//@Table(name = "health_record", schema = "care")
//@Getter
//@Setter
//@Builder
//@NoArgsConstructor
//@AllArgsConstructor
//public class HealthRecord implements Serializable,Cloneable {
//  @Id
//  @Column(name = "id",updatable = false,nullable = false)
//  private Long id;
//
//  @Column(name = "category")
//  private String category;
//
//  @Column(name = "code")
//  private String code;
//
//  @Column(name = "value")
//  private String value;
//
//  @Column(name = "record_date")
//  private LocalDate recordDate;
//
//
//  @ManyToOne(fetch = FetchType.LAZY)
//  @JoinColumn(name = "patient_id")
//  private Patient patient;
//
//
//  public Object clone() throws CloneNotSupportedException {
//    return super.clone();
//  }
//
//}
