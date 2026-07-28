import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BibasicFunctionsMultipleBasesCanonicalLaneLean

structure BibasicFunctionPackage where
  q : ℂ
  p : ℂ
  order : ℕ
  parameters : List ℂ
  seriesDefined : Prop
  convergenceConditions : Prop
  convergenceConditionsTerm : convergenceConditions

structure BibasicFunctionEvidence (P : BibasicFunctionPackage) where
  seriesDefinedClosed : P.seriesDefined
  convergenceConditionsClosed : P.convergenceConditions

def BibasicFunctionClosed (P : BibasicFunctionPackage) : Prop :=
  P.seriesDefined ∧ P.convergenceConditions

theorem bibasic_function_closed_from_evidence (P : BibasicFunctionPackage) (E : BibasicFunctionEvidence P) : BibasicFunctionClosed P := by
  exact And.intro E.seriesDefinedClosed E.convergenceConditionsClosed

end BibasicFunctionsMultipleBasesCanonicalLaneLean
end HautevilleHouse