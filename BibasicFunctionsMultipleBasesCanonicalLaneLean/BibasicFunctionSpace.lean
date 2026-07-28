import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BibasicFunctionsMultipleBasesCanonicalLaneLean

structure BibasicFunctionSpacePackage where
  spaceType : Type u
  basis : Type v
  completeness : Prop
  functionalClosed : completeness

end BibasicFunctionsMultipleBasesCanonicalLaneLean
end HautevilleHouse