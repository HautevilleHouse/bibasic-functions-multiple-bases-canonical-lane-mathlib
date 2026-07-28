import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BibasicFunctionsMultipleBasesCanonicalLaneLean.BibasicObjects

namespace HautevilleHouse
namespace BibasicFunctionsMultipleBasesCanonicalLaneLean

structure BibasicShiftedFactorialPackage where
  bases : List ℝ
  shift : ℕ → ℝ
  factorialProduct : Type u
  infiniteConvergence : Prop
  finiteRepresentation : Prop

structure BibasicShiftedFactorialEvidence (P : BibasicShiftedFactorialPackage) where
  infiniteConvergenceClosed : P.infiniteConvergence
  finiteRepresentationClosed : P.finiteRepresentation

def BibasicShiftedFactorialClosed (P : BibasicShiftedFactorialPackage) : Prop :=
  P.infiniteConvergence ∧ P.finiteRepresentation

theorem bibasic_shifted_factorial_closed_from_evidence
    (P : BibasicShiftedFactorialPackage) (E : BibasicShiftedFactorialEvidence P) :
    BibasicShiftedFactorialClosed P := by
  exact And.intro E.infiniteConvergenceClosed E.finiteRepresentationClosed

end BibasicFunctionsMultipleBasesCanonicalLaneLean
end HautevilleHouse