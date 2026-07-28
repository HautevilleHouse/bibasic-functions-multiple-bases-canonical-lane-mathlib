import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BibasicFunctionsMultipleBasesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BibasicWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BibasicFunctionsMultipleBasesCanonicalLaneLean
end HautevilleHouse