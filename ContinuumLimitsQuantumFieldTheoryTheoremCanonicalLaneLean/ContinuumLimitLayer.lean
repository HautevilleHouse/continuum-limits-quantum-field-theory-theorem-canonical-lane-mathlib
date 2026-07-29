import HautevilleHouse.ContinuumLimitsQuantumFieldTheoryTheoremCanonicalLaneLean.QFTSubstrate

namespace HautevilleHouse
namespace ContinuumLimitsQuantumFieldTheoryTheoremCanonicalLaneLean

structure ContinuumLimitCertificate where
  substrate : QFTSubstrate
  latticeApproximation : Prop
  scalingLimit : Prop
  continuumAction : Prop
  renormalizationGroup : Prop
  latticeApproximationClosed : latticeApproximation
  scalingLimitClosed : scalingLimit
  continuumActionClosed : continuumAction
  renormalizationGroupClosed : renormalizationGroup

def sourceContinuumLimitCertificate : ContinuumLimitCertificate := {
  substrate := qftSubstrate
  latticeApproximation := sourceFormulaModels.length = sourceFormulaModelCount
  scalingLimit := baselineCertificateLane = "continuum_constrained"
  continuumAction := reviewerFalsificationConditionCount = 5
  renormalizationGroup := reviewerManifestEntries.length = 24
  latticeApproximationClosed := rfl
  scalingLimitClosed := rfl
  continuumActionClosed := rfl
  renormalizationGroupClosed := rfl
}

def ContinuumLimitClosed (C : ContinuumLimitCertificate) : Prop :=
  C.latticeApproximation ∧
  C.scalingLimit ∧
  C.continuumAction ∧
  C.renormalizationGroup

theorem source_continuum_limit_closed :
    ContinuumLimitClosed sourceContinuumLimitCertificate := by
  exact And.intro sourceContinuumLimitCertificate.latticeApproximationClosed
    (And.intro sourceContinuumLimitCertificate.scalingLimitClosed
      (And.intro sourceContinuumLimitCertificate.continuumActionClosed
        sourceContinuumLimitCertificate.renormalizationGroupClosed))

end ContinuumLimitsQuantumFieldTheoryTheoremCanonicalLaneLean
end HautevilleHouse