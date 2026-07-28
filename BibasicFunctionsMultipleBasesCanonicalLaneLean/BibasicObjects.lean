import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BibasicFunctionsMultipleBasesCanonicalLaneLean

structure BibasicSpace where
  baseQ : ℕ → ℝ
  baseQInv : ℕ → ℝ
  multipleBases : List ℝ
  dimension : Nat

structure BibasicAdmittedObject where
  space : BibasicSpace
  qPochhammerSymbol : Type u
  convergenceCondition : Prop
  conclusion : convergenceCondition

def BibasicWitnessClosed (O : BibasicAdmittedObject) : Prop :=
  O.conclusion

end BibasicFunctionsMultipleBasesCanonicalLaneLean
end HautevilleHouse