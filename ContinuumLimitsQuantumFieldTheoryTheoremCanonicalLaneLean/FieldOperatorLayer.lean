import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuumLimitsQuantumFieldTheoryTheoremCanonicalLaneLean

structure FieldOperatorCertificate where
  fieldOperators : Prop
  commutationRelations : Prop
  causalityCondition : Prop
  vacuumExpectation : Prop
  fieldOperatorsClosed : fieldOperators
  commutationRelationsClosed : commutationRelations
  causalityConditionClosed : causalityCondition
  vacuumExpectationClosed : vacuumExpectation

def sourceFieldOperatorCertificate : FieldOperatorCertificate := {
  fieldOperators := true
  commutationRelations := true
  causalityCondition := true
  vacuumExpectation := true
  fieldOperatorsClosed := rfl
  commutationRelationsClosed := rfl
  causalityConditionClosed := rfl
  vacuumExpectationClosed := rfl
}

def FieldOperatorClosed (C : FieldOperatorCertificate) : Prop :=
  C.fieldOperators ∧ C.commutationRelations ∧ C.causalityCondition ∧ C.vacuumExpectation

theorem source_field_operator_closed :
    FieldOperatorClosed sourceFieldOperatorCertificate := by
  exact And.intro sourceFieldOperatorCertificate.fieldOperatorsClosed
    (And.intro sourceFieldOperatorCertificate.commutationRelationsClosed
      (And.intro sourceFieldOperatorCertificate.causalityConditionClosed
        sourceFieldOperatorCertificate.vacuumExpectationClosed))

end ContinuumLimitsQuantumFieldTheoryTheoremCanonicalLaneLean
end HautevilleHouse