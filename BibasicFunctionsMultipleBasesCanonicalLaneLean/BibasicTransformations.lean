import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BibasicFunctionsMultipleBasesCanonicalLaneLean

structure BibasicTransformationPackage where
  transformationType : Type u
  domainPreservation : Prop
  resultFormula : Prop
  transformationClosed : Prop

structure BibasicTransformationEvidence (T : BibasicTransformationPackage) where
  domainPreservationClosed : T.domainPreservation
  resultFormulaClosed : T.resultFormula

def BibasicTransformationClosed (T : BibasicTransformationPackage) : Prop :=
  T.domainPreservation ∧ T.resultFormula

theorem bibasic_transformation_closed_from_evidence (T : BibasicTransformationPackage) (E : BibasicTransformationEvidence T) :
    BibasicTransformationClosed T := by
  exact And.intro E.domainPreservationClosed E.resultFormulaClosed

end BibasicFunctionsMultipleBasesCanonicalLaneLean
end HautevilleHouse