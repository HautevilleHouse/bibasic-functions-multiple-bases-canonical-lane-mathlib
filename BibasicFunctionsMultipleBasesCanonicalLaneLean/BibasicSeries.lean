import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BibasicFunctionsMultipleBasesCanonicalLaneLean

structure BibasicSeriesPackage where
  baseP : ℕ
  baseQ : ℕ
  seriesType : Type u
  convergenceCondition : Prop
  sumFormula : Prop
  summationFormulaClosed : Prop

structure BibasicSeriesEvidence (S : BibasicSeriesPackage) where
  convergenceConditionClosed : S.convergenceCondition
  sumFormulaClosed : S.sumFormula

def BibasicSeriesClosed (S : BibasicSeriesPackage) : Prop :=
  S.convergenceCondition ∧ S.sumFormula

theorem bibasic_series_closed_from_evidence (S : BibasicSeriesPackage) (E : BibasicSeriesEvidence S) :
    BibasicSeriesClosed S := by
  exact And.intro E.convergenceConditionClosed E.sumFormulaClosed

end BibasicFunctionsMultipleBasesCanonicalLaneLean
end HautevilleHouse