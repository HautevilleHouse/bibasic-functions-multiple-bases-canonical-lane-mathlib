import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BibasicFunctionsMultipleBasesCanonicalLaneLean.BibasicHypergeometricSeries

namespace HautevilleHouse
namespace BibasicFunctionsMultipleBasesCanonicalLaneLean

structure BibasicShiftOperator (S : BibasicSeries) where
  shiftParameter : ℚ
  shiftedSeries : BibasicSeries
  commutationRelation : Prop
  shiftInvertible : Prop

structure BibasicShiftEvidence (S : BibasicSeries) (Op : BibasicShiftOperator S) where
  commutationClosed : Op.commutationRelation
  invertibilityClosed : Op.shiftInvertible

structure BibasicShiftClosed (S : BibasicSeries) (Op : BibasicShiftOperator S) : Prop where
  commutation : Op.commutationRelation
  invertibility : Op.shiftInvertible

theorem bibasic_shift_closed_from_evidence (S : BibasicSeries) (Op : BibasicShiftOperator S) (E : BibasicShiftEvidence S Op) : BibasicShiftClosed S Op := by
  exact ⟨E.commutationClosed, E.invertibilityClosed⟩

end BibasicFunctionsMultipleBasesCanonicalLaneLean
end HautevilleHouse