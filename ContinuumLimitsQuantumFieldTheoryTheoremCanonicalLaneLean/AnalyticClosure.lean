import HautevilleHouse.ContinuumLimitsQuantumFieldTheoryTheoremCanonicalLaneLean.AnalyticCertificate
import HautevilleHouse.ContinuumLimitsQuantumFieldTheoryTheoremCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace ContinuumLimitsQuantumFieldTheoryTheoremCanonicalLaneLean

def qftAdmittedObject : AdmittedTheoremObject := {
  object := theoremSpecificObject
  localWitness := "QFT gauge certificate with continuum limit, spectral reconstruction, and endpoint closure."
  bridgeEvidence := "source-derived Lean certificate fields"
  sourceKeyChecked := rfl
  theoremObjectChecked := rfl
}

def qftAdmissibleClass : AdmissibleClass := {
  object := qftAdmittedObject
  endpointSatisfied := FieldConfigurationClosed primitiveQuantumField
  remainderRecorded := formalizationCertificate.theoremBoundaryOpen = true
  gateWitness := Or.inl primitive_field_configuration_closed_checked
}

def QFTAdmittedContinuumLimitClosure : Prop :=
  QFTAnalyticCertificateClosed sourceQFTAnalyticCertificate ∧
  ConstrainedTheoremClosure qftAdmissibleClass

def UnrestrictedClassicalQFTBoundaryCarried : Prop :=
  formalizationCertificate.theoremBoundaryOpen = true ∧
  qftSubstrate.unrestrictedQFTStackCarried = true

theorem qft_admitted_continuum_limit_closure_checked :
    QFTAdmittedContinuumLimitClosure := by
  exact And.intro source_qft_analytic_certificate_closed
    (constrained_theorem_closure qftAdmissibleClass)

theorem unrestricted_classical_qft_boundary_carried_checked :
    UnrestrictedClassicalQFTBoundaryCarried := by
  exact And.intro rfl rfl

end ContinuumLimitsQuantumFieldTheoryTheoremCanonicalLaneLean
end HautevilleHouse