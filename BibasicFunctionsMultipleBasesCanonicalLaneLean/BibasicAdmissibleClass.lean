import BibasicFunctionsMultipleBasesCanonicalLaneLean.BibasicHypergeometricSeries

namespace HautevilleHouse
namespace BibasicFunctionsMultipleBasesCanonicalLaneLean

structure BibasicAdmittedObject where
  series : BibasicHypergeometricSeries
  endpointClosed : Prop
  remainderRecorded : Prop
  conclusion : endpointClosed ∨ remainderRecorded

structure AdmissibleClass where
  object : BibasicAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BibasicSeriesClosed A.object.series ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BibasicFunctionsMultipleBasesCanonicalLaneLean
end HautevilleHouse
