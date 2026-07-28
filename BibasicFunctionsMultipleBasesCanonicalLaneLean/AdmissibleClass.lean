import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BibasicFunctionsMultipleBasesCanonicalLaneLean

structure BibasicAdmittedObject where
  bibasicSeries : Type u
  baseP : ℕ
  baseQ : ℕ
  convergenceDomain : Prop
  summationFormula : Prop
  conclusion : summationFormula

def BibasicWitnessClosed (O : BibasicAdmittedObject) : Prop :=
  O.summationFormula

structure AdmissibleClass where
  object : BibasicAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BibasicWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BibasicFunctionsMultipleBasesCanonicalLaneLean
end HautevilleHouse