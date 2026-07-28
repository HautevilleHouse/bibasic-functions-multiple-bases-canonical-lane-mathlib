import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BibasicFunctionsMultipleBasesCanonicalLaneLean.BibasicFunction

namespace HautevilleHouse
namespace BibasicFunctionsMultipleBasesCanonicalLaneLean

structure TransformationFormulaPackage {P : BibasicFunctionPackage} (Q : BibasicFunctionPackage) where
  sourceSeries : BibasicFunctionClosed P → Prop
  targetSeries : BibasicFunctionClosed Q → Prop
  transformationIdentity : Prop
  transformationIdentityTerm : transformationIdentity

structure TransformationFormulaEvidence {P Q : BibasicFunctionPackage} (T : TransformationFormulaPackage Q) where
  transformationIdentityClosed : T.transformationIdentity

def TransformationFormulaClosed {P Q : BibasicFunctionPackage} (T : TransformationFormulaPackage Q) : Prop :=
  T.transformationIdentity

theorem transformation_closed_from_evidence {P Q : BibasicFunctionPackage} (T : TransformationFormulaPackage Q) (E : TransformationFormulaEvidence T) : TransformationFormulaClosed T := by
  exact E.transformationIdentityClosed

end BibasicFunctionsMultipleBasesCanonicalLaneLean
end HautevilleHouse