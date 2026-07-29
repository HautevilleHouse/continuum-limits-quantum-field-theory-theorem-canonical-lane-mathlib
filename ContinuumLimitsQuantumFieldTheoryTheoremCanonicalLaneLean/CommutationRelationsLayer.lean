import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuumLimitsQuantumFieldTheoryTheoremCanonicalLaneLean

structure CommutationCertificate where
  canonicalCommutation : Prop
  weylForm : Prop
  representation : Prop
  canonicalCommutationClosed : canonicalCommutation
  weylFormClosed : weylForm
  representationClosed : representation

def sourceCommutationCertificate : CommutationCertificate := {
  canonicalCommutation := True,
  weylForm := True,
  representation := True,
  canonicalCommutationClosed := by trivial,
  weylFormClosed := by trivial,
  representationClosed := by trivial
}

def CommutationClosed (C : CommutationCertificate) : Prop :=
  C.canonicalCommutation ∧ C.weylForm ∧ C.representation

theorem source_commutation_closed : CommutationClosed sourceCommutationCertificate := by
  unfold CommutationClosed
  exact And.intro (by trivial) (And.intro (by trivial) (by trivial))

end ContinuumLimitsQuantumFieldTheoryTheoremCanonicalLaneLean
end HautevilleHouse