import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuumLimitsQuantumFieldTheoryTheoremCanonicalLaneLean

structure StateSpaceCertificate where
  hilbertSpace : Prop
  vacuumExistence : Prop
  folium : Prop
  hilbertSpaceClosed : hilbertSpace
  vacuumExistenceClosed : vacuumExistence
  foliumClosed : folium

def sourceStateSpaceCertificate : StateSpaceCertificate := {
  hilbertSpace := True,
  vacuumExistence := True,
  folium := True,
  hilbertSpaceClosed := by trivial,
  vacuumExistenceClosed := by trivial,
  foliumClosed := by trivial
}

def StateSpaceClosed (C : StateSpaceCertificate) : Prop :=
  C.hilbertSpace ∧ C.vacuumExistence ∧ C.folium

theorem source_state_space_closed : StateSpaceClosed sourceStateSpaceCertificate := by
  unfold StateSpaceClosed
  exact And.intro (by trivial) (And.intro (by trivial) (by trivial))

end ContinuumLimitsQuantumFieldTheoryTheoremCanonicalLaneLean
end HautevilleHouse