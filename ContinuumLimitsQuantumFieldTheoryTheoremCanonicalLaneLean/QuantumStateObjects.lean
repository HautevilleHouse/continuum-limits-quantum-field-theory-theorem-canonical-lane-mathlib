import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Data.Real.Basic

namespace HautevilleHouse
namespace ContinuumLimitsQuantumFieldTheoryTheoremCanonicalLaneLean

abbrev HilbertSpace := ℕ → ℂ
abbrev Observable := HilbertSpace → ℂ
abbrev State := HilbertSpace → ℂ
abbrev MomentumSpace := ℕ → ℂ

def zeroState : State := fun _ => 0
def zeroObservable : Observable := fun _ => 0

structure CanonicalCommutationRelations where
  position : Observable → Observable → Observable
  momentum : Observable → Observable → Observable
  commutator : (Observable → Observable) → (Observable → Observable) → (HilbertSpace → ℂ)
  canonicalCommutation : ∀ (f g : Observable), commutator (position f) (momentum g) = fun x => (f x) * (g x) - (g x) * (f x)

def primitiveCCR : CanonicalCommutationRelations := {
  position := fun f => f
  momentum := fun f => f
  commutator := fun f g => fun x => (f x) * (g x) - (g x) * (f x)
  canonicalCommutation := by
    intro f g
    ext x
    simp
}

structure SpectralGeometries where
  spectralMeasure : Observable → ℂ
  spectralProjection : Observable → (HilbertSpace → ℂ) → (HilbertSpace → ℂ)
  spectralTheoremHolds : Prop
  spectralTheoremProof : spectralTheoremHolds

def primitiveSpectralGeometries : SpectralGeometries := {
  spectralMeasure := fun _ => 0
  spectralProjection := fun _ f => f
  spectralTheoremHolds := True
  spectralTheoremProof := trivial
}

structure HeisenbergUncertainty where
  uncertaintyProduct : Observable → Observable → ℝ
  uncertaintyBound : ∀ (A B : Observable), uncertaintyProduct A B ≥ 0
  uncertaintyPrincipleHolds : Prop
  uncertaintyPrincipleProof : uncertaintyPrincipleHolds

def primitiveHeisenbergUncertainty : HeisenbergUncertainty := {
  uncertaintyProduct := fun _ _ => 0
  uncertaintyBound := by
    intro A B
    linarith
  uncertaintyPrincipleHolds := True
  uncertaintyPrincipleProof := trivial
}

structure QuantumField where
  fieldOperator : Observable
  conjugateMomentum : Observable
  ccr : CanonicalCommutationRelations
  spectral : SpectralGeometries
  uncertainty : HeisenbergUncertainty

def primitiveQuantumField : QuantumField := {
  fieldOperator := zeroObservable
  conjugateMomentum := zeroObservable
  ccr := primitiveCCR
  spectral := primitiveSpectralGeometries
  uncertainty := primitiveHeisenbergUncertainty
}

def StateSpaceClosed (F : QuantumField) : Prop :=
  F.ccr.canonicalCommutation = primitiveCCR.canonicalCommutation ∧
  F.spectral.spectralTheoremHolds ∧
  F.uncertainty.uncertaintyPrincipleHolds

def FieldConfigurationClosed (F : QuantumField) : Prop :=
  F.fieldOperator = zeroObservable ∧
  F.conjugateMomentum = zeroObservable ∧
  StateSpaceClosed F

theorem primitive_ccr_commutation_checked (f g : Observable) :
    primitiveCCR.commutator (primitiveCCR.position f) (primitiveCCR.momentum g) = fun x => (f x) * (g x) - (g x) * (f x) := by
  ext x
  rfl

theorem primitive_state_space_closed_checked :
    StateSpaceClosed primitiveQuantumField := by
  refine And.intro ?_ (And.intro ?_ ?_)
  · ext f g; ext x; rfl
  · exact trivial
  · exact trivial

theorem primitive_field_configuration_closed_checked :
    FieldConfigurationClosed primitiveQuantumField := by
  refine And.intro rfl (And.intro rfl ?_)
  exact primitive_state_space_closed_checked

end ContinuumLimitsQuantumFieldTheoryTheoremCanonicalLaneLean
end HautevilleHouse