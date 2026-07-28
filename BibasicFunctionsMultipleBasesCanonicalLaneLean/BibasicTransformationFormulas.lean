import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BibasicFunctionsMultipleBasesCanonicalLaneLean.BibasicHypergeometricSeries

namespace HautevilleHouse
namespace BibasicFunctionsMultipleBasesCanonicalLaneLean

structure BibasicTransformationPackage where
  originalSeries : BibasicSeriesPackage
  transformedSeries : BibasicSeriesPackage
  transformationEquality : Prop
  identityHolds : Prop

structure BibasicTransformationEvidence (T : BibasicTransformationPackage) where
  originalSeriesClosed : BibasicSeriesClosed T.originalSeries
  transformedSeriesClosed : BibasicSeriesClosed T.transformedSeries
  transformationEqualityClosed : T.transformationEquality
  identityHoldsClosed : T.identityHolds

def BibasicTransformationClosed (T : BibasicTransformationPackage) : Prop :=
  BibasicSeriesClosed T.originalSeries ∧ BibasicSeriesClosed T.transformedSeries ∧
  T.transformationEquality ∧ T.identityHolds

theorem bibasic_transformation_closed_from_evidence
    (T : BibasicTransformationPackage) (E : BibasicTransformationEvidence T) :
    BibasicTransformationClosed T := by
  exact And.intro (And.intro E.originalSeriesClosed E.transformedSeriesClosed)
    (And.intro E.transformationEqualityClosed E.identityHoldsClosed)

end BibasicFunctionsMultipleBasesCanonicalLaneLean
end HautevilleHouse