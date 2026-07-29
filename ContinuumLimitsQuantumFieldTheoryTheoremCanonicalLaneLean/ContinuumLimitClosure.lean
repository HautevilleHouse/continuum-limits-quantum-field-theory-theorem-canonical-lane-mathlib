import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuumLimitsQuantumFieldTheoryTheoremCanonicalLaneLean.ContinuumLimitQFTLayer
import HautevilleHouse.ContinuumLimitsQuantumFieldTheoryTheoremCanonicalLaneLean.SpectralTheoremLayer
import HautevilleHouse.ContinuumLimitsQuantumFieldTheoryTheoremCanonicalLaneLean.UncertaintyPrincipleLayer
import HautevilleHouse.ContinuumLimitsQuantumFieldTheoryTheoremCanonicalLaneLean.StateSpaceLayer
import HautevilleHouse.ContinuumLimitsQuantumFieldTheoryTheoremCanonicalLaneLean.FieldOperatorLayer

namespace HautevilleHouse
namespace ContinuumLimitsQuantumFieldTheoryTheoremCanonicalLaneLean

structure ContinuumLimitClosureCertificate where
  qft : ContinuumLimitQFTCertificate
  spectral : SpectralTheoremCertificate
  uncertainty : UncertaintyPrincipleCertificate
  state : StateSpaceCertificate
  fieldOp : FieldOperatorCertificate
  qftClosed : ContinuumLimitQFTClosed qft
  spectralClosed : SpectralTheoremClosed spectral
  uncertaintyClosed : UncertaintyPrincipleClosed uncertainty
  stateClosed : StateSpaceClosed state
  fieldOpClosed : FieldOperatorClosed fieldOp

def sourceContinuumLimitClosureCertificate : ContinuumLimitClosureCertificate := {
  qft := sourceContinuumLimitQFTCertificate
  spectral := sourceSpectralTheoremCertificate
  uncertainty := sourceUncertaintyPrincipleCertificate
  state := sourceStateSpaceCertificate
  fieldOp := sourceFieldOperatorCertificate
  qftClosed := source_continuum_limit_qft_closed
  spectralClosed := source_spectral_theorem_closed
  uncertaintyClosed := source_uncertainty_principle_closed
  stateClosed := source_state_space_closed
  fieldOpClosed := source_field_operator_closed
}

def ContinuumLimitClosureClosed (C : ContinuumLimitClosureCertificate) : Prop :=
  C.qftClosed ∧ C.spectralClosed ∧ C.uncertaintyClosed ∧ C.stateClosed ∧ C.fieldOpClosed

theorem source_continuum_limit_closure_closed :
    ContinuumLimitClosureClosed sourceContinuumLimitClosureCertificate := by
  exact And.intro sourceContinuumLimitClosureCertificate.qftClosed
    (And.intro sourceContinuumLimitClosureCertificate.spectralClosed
      (And.intro sourceContinuumLimitClosureCertificate.uncertaintyClosed
        (And.intro sourceContinuumLimitClosureCertificate.stateClosed
          sourceContinuumLimitClosureCertificate.fieldOpClosed)))

end ContinuumLimitsQuantumFieldTheoryTheoremCanonicalLaneLean
end HautevilleHouse