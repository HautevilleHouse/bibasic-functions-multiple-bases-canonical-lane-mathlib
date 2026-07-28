import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BibasicFunctionsMultipleBasesCanonicalLaneLean.BibasicHypergeometricSeries

namespace HautevilleHouse
namespace BibasicFunctionsMultipleBasesCanonicalLaneLean

structure BibasicMellinTransform (S : BibasicSeries) where
  contour : ℂ → ℂ
  integrand : ℂ → ℂ
  integralValue : ℂ
  convergesAbsolutely : Prop
  reproducesSeries : Prop

structure BibasicMellinEvidence (M : BibasicMellinTransform) where
  convergenceClosed : M.convergesAbsolutely
  reproductionClosed : M.reproducesSeries

structure BibasicMellinClosed (M : BibasicMellinTransform) : Prop where
  convergence : M.convergesAbsolutely
  reproduction : M.reproducesSeries

theorem bibasic_mellin_closed_from_evidence (M : BibasicMellinTransform) (E : BibasicMellinEvidence M) : BibasicMellinClosed M := by
  exact ⟨E.convergenceClosed, E.reproductionClosed⟩

end BibasicFunctionsMultipleBasesCanonicalLaneLean
end HautevilleHouse