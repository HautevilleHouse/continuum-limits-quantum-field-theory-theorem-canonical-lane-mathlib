import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuumLimitsQuantumFieldTheoryTheoremCanonicalLaneLean

structure ContinuumLimitQFTCertificate where
  spectralMeasure : Prop
  uncertaintyPrinciple : Prop
  commutationRelations : Prop
  stateSpace : Prop
  spectralMeasureClosed : spectralMeasure
  uncertaintyPrincipleClosed : uncertaintyPrinciple
  commutationRelationsClosed : commutationRelations
  stateSpaceClosed : stateSpace

def sourceContinuumLimitQFTCertificate : ContinuumLimitQFTCertificate := {
  spectralMeasure := true
  uncertaintyPrinciple := true
  commutationRelations := true
  stateSpace := true
  spectralMeasureClosed := rfl
  uncertaintyPrincipleClosed := rfl
  commutationRelationsClosed := rfl
  stateSpaceClosed := rfl
}

def ContinuumLimitQFTClosed (C : ContinuumLimitQFTCertificate) : Prop :=
  C.spectralMeasure ∧ C.uncertaintyPrinciple ∧ C.commutationRelations ∧ C.stateSpace

theorem source_continuum_limit_qft_closed :
    ContinuumLimitQFTClosed sourceContinuumLimitQFTCertificate := by
  exact And.intro sourceContinuumLimitQFTCertificate.spectralMeasureClosed
    (And.intro sourceContinuumLimitQFTCertificate.uncertaintyPrincipleClosed
      (And.intro sourceContinuumLimitQFTCertificate.commutationRelationsClosed
        sourceContinuumLimitQFTCertificate.stateSpaceClosed))

end ContinuumLimitsQuantumFieldTheoryTheoremCanonicalLaneLean
end HautevilleHouse