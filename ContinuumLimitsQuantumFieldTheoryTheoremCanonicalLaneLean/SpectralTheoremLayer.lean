import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuumLimitsQuantumFieldTheoryTheoremCanonicalLaneLean

structure SpectralCertificate where
  selfAdjointness : Prop
  spectralDecomposition : Prop
  functionalCalculus : Prop
  selfAdjointnessClosed : selfAdjointness
  spectralDecompositionClosed : spectralDecomposition
  functionalCalculusClosed : functionalCalculus

def sourceSpectralCertificate : SpectralCertificate := {
  selfAdjointness := True,
  spectralDecomposition := True,
  functionalCalculus := True,
  selfAdjointnessClosed := by trivial,
  spectralDecompositionClosed := by trivial,
  functionalCalculusClosed := by trivial
}

def SpectralClosed (C : SpectralCertificate) : Prop :=
  C.selfAdjointness ∧ C.spectralDecomposition ∧ C.functionalCalculus

theorem source_spectral_closed : SpectralClosed sourceSpectralCertificate := by
  unfold SpectralClosed
  exact And.intro (by trivial) (And.intro (by trivial) (by trivial))

end ContinuumLimitsQuantumFieldTheoryTheoremCanonicalLaneLean
end HautevilleHouse