import BibasicFunctionsMultipleBasesCanonicalLaneLean.BibasicSummationTheorem

namespace HautevilleHouse
namespace BibasicFunctionsMultipleBasesCanonicalLaneLean

structure BibasicTransformationPackage where
  baseOne : ℕ
  baseTwo : ℕ
  parameter : Type u
  transformationFormula : Prop
  baseSwitchingProperty : Prop
  symmetryProperty : Prop

structure BibasicTransformationEvidence (P : BibasicTransformationPackage) where
  transformationFormulaClosed : P.transformationFormula
  baseSwitchingPropertyClosed : P.baseSwitchingProperty
  symmetryPropertyClosed : P.symmetryProperty

def BibasicTransformationClosed (P : BibasicTransformationPackage) : Prop :=
  P.transformationFormula ∧ P.baseSwitchingProperty ∧ P.symmetryProperty

theorem bibasic_transformation_closed_from_evidence (P : BibasicTransformationPackage) (E : BibasicTransformationEvidence P) : BibasicTransformationClosed P :=
  And.intro E.transformationFormulaClosed (And.intro E.baseSwitchingPropertyClosed E.symmetryPropertyClosed)

end BibasicFunctionsMultipleBasesCanonicalLaneLean
end HautevilleHouse