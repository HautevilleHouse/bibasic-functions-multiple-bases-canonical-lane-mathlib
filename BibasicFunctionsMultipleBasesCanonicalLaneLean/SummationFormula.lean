import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BibasicFunctionsMultipleBasesCanonicalLaneLean.BibasicFunction

namespace HautevilleHouse
namespace BibasicFunctionsMultipleBasesCanonicalLaneLean

structure SummationFormulaPackage {P : BibasicFunctionPackage} where
  series : BibasicFunctionClosed P → Prop
  sumValue : ℂ
  summationIdentity : Prop
  summationIdentityTerm : summationIdentity

structure SummationFormulaEvidence {P : BibasicFunctionPackage} (S : SummationFormulaPackage P) where
  summationIdentityClosed : S.summationIdentity

def SummationFormulaClosed {P : BibasicFunctionPackage} (S : SummationFormulaPackage P) : Prop :=
  S.summationIdentity

theorem summation_closed_from_evidence {P : BibasicFunctionPackage} (S : SummationFormulaPackage P) (E : SummationFormulaEvidence S) : SummationFormulaClosed S := by
  exact E.summationIdentityClosed

end BibasicFunctionsMultipleBasesCanonicalLaneLean
end HautevilleHouse