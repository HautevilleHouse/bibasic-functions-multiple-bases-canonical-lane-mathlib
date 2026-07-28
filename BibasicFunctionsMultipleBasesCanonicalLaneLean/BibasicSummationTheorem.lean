import BibasicFunctionsMultipleBasesCanonicalLaneLean.BibasicObjects

namespace HautevilleHouse
namespace BibasicFunctionsMultipleBasesCanonicalLaneLean

structure BibasicSummationPackage where
  baseOne : ℕ
  baseTwo : ℕ
  parameter : Type u
  sumFormula : Prop
  convergenceChecked : Prop
  evaluationClosed : Prop

structure BibasicSummationEvidence (P : BibasicSummationPackage) where
  sumFormulaClosed : P.sumFormula
  convergenceCheckedClosed : P.convergenceChecked
  evaluationClosedClosed : P.evaluationClosed

def BibasicSummationClosed (P : BibasicSummationPackage) : Prop :=
  P.sumFormula ∧ P.convergenceChecked ∧ P.evaluationClosed

theorem bibasic_summation_closed_from_evidence (P : BibasicSummationPackage) (E : BibasicSummationEvidence P) : BibasicSummationClosed P :=
  And.intro E.sumFormulaClosed (And.intro E.convergenceCheckedClosed E.evaluationClosedClosed)

end BibasicFunctionsMultipleBasesCanonicalLaneLean
end HautevilleHouse