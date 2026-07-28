import BibasicFunctionsMultipleBasesCanonicalLaneLean.BibasicAdmissibleClass

namespace HautevilleHouse
namespace BibasicFunctionsMultipleBasesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BibasicSeriesClosed A.object.series

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end BibasicFunctionsMultipleBasesCanonicalLaneLean
end HautevilleHouse
