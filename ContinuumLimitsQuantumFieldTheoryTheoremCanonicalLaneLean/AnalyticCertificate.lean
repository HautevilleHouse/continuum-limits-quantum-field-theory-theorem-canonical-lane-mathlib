import HautevilleHouse.ContinuumLimitsQuantumFieldTheoryTheoremCanonicalLaneLean.SpectralReconstructionLayer

namespace HautevilleHouse
namespace ContinuumLimitsQuantumFieldTheoryTheoremCanonicalLaneLean

structure QFTAnalyticCertificate where
  substrate : QFTSubstrate
  quantumFieldClosed : Prop
  continuumLimitLayerClosed : Prop
  spectralReconstructionLayerClosed : Prop
  canonicalCarriageImported : Prop
  quantumFieldClosedProof : quantumFieldClosed
  continuumLimitLayerClosedProof : continuumLimitLayerClosed
  spectralReconstructionLayerClosedProof : spectralReconstructionLayerClosed
  canonicalCarriageImportedProof : canonicalCarriageImported

def sourceQFTAnalyticCertificate : QFTAnalyticCertificate := {
  substrate := qftSubstrate
  quantumFieldClosed := FieldConfigurationClosed primitiveQuantumField
  continuumLimitLayerClosed := ContinuumLimitClosed sourceContinuumLimitCertificate
  spectralReconstructionLayerClosed := SpectralReconstructionClosed sourceSpectralReconstructionCertificate
  canonicalCarriageImported := commonCoreProjectionLawAvailable ∧ commonCoreCarriageLawAvailable ∧ commonCoreIdempotenceAvailable
  quantumFieldClosedProof := primitive_field_configuration_closed_checked
  continuumLimitLayerClosedProof := source_continuum_limit_closed
  spectralReconstructionLayerClosedProof := source_spectral_reconstruction_closed
  canonicalCarriageImportedProof := And.intro mathlib_common_core_projection_law_checked
    (And.intro mathlib_common_core_carriage_law_checked mathlib_common_core_idempotence_checked)
}

def QFTAnalyticCertificateClosed (C : QFTAnalyticCertificate) : Prop :=
  C.quantumFieldClosed ∧
  C.continuumLimitLayerClosed ∧
  C.spectralReconstructionLayerClosed ∧
  C.canonicalCarriageImported

theorem source_qft_analytic_certificate_closed :
    QFTAnalyticCertificateClosed sourceQFTAnalyticCertificate := by
  exact And.intro sourceQFTAnalyticCertificate.quantumFieldClosedProof
    (And.intro sourceQFTAnalyticCertificate.continuumLimitLayerClosedProof
      (And.intro sourceQFTAnalyticCertificate.spectralReconstructionLayerClosedProof
        sourceQFTAnalyticCertificate.canonicalCarriageImportedProof))

end ContinuumLimitsQuantumFieldTheoryTheoremCanonicalLaneLean
end HautevilleHouse