import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BibasicFunctionsMultipleBasesCanonicalLaneLean.BibasicHypergeometricSeries

namespace HautevilleHouse
namespace BibasicFunctionsMultipleBasesCanonicalLaneLean

structure BibasicContiguousRelation (S : BibasicSeries) where
  shiftDirection : ℕ
  coefficients : ℚ × ℚ × ℚ
  relationEquation : Prop
  minimalOrder : ℕ

structure BibasicContiguousEvidence (R : BibasicContiguousRelation) where
  equationClosed : R.relationEquation
  orderMinimal : R.minimalOrder = 1 ∨ R.minimalOrder = 2

structure BibasicContiguousClosed (R : BibasicContiguousRelation) : Prop where
  equationSatisfied : R.relationEquation
  orderChecked : R.minimalOrder = 1 ∨ R.minimalOrder = 2

theorem bibasic_contiguous_closed_from_evidence (R : BibasicContiguousRelation) (E : BibasicContiguousEvidence R) : BibasicContiguousClosed R := by
  exact ⟨E.equationClosed, E.orderMinimal⟩

end BibasicFunctionsMultipleBasesCanonicalLaneLean
end HautevilleHouse