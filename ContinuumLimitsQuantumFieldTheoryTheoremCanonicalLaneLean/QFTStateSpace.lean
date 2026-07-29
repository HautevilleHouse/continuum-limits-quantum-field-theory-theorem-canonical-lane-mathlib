import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuumLimitsQuantumFieldTheoryTheoremCanonicalLaneLean

structure QFTStateSpace where
  hilbertSpaceDimension : Nat
  innerProductDefined : Prop
  completeness : Prop
  innerProductDefinedProof : innerProductDefined
  completenessProof : completeness

def primitiveQFTStateSpace : QFTStateSpace := {
  hilbertSpaceDimension := 2
  innerProductDefined := True
  completeness := True
  innerProductDefinedProof := by trivial
  completenessProof := by trivial
}

end ContinuumLimitsQuantumFieldTheoryTheoremCanonicalLaneLean
end HautevilleHouse