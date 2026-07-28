import BibasicFunctionsMultipleBasesCanonicalLaneLean.BibasicAdmissibleClass

namespace HautevilleHouse
namespace BibasicFunctionsMultipleBasesCanonicalLaneLean

structure BibasicHypergeometricSeries where
  base1 : ℕ → ℚ
  base2 : ℕ → ℚ
  parameters : List ℚ
  radiusOfConvergence : ℚ
  converges : Prop

structure BibasicSeriesEvidence (s : BibasicHypergeometricSeries) where
  convergenceRadiusClosed : s.radiusOfConvergence > 0
  convergenceClosed : s.converges

def BibasicSeriesClosed (s : BibasicHypergeometricSeries) : Prop :=
  s.radiusOfConvergence > 0 ∧ s.converges

theorem bibasic_series_closed_from_evidence (s : BibasicHypergeometricSeries) (e : BibasicSeriesEvidence s) : BibasicSeriesClosed s := by
  exact And.intro e.convergenceRadiusClosed e.convergenceClosed

end BibasicFunctionsMultipleBasesCanonicalLaneLean
end HautevilleHouse
