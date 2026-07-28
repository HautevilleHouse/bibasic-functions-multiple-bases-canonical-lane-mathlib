import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BibasicFunctionsMultipleBasesCanonicalLaneLean.BibasicHypergeometricSeries

namespace HautevilleHouse
namespace BibasicFunctionsMultipleBasesCanonicalLaneLean

structure BibasicAskeyConnection (S1 S2 : BibasicSeries) where
  dualityMapping : ℚ → ℚ
  connectsViaLimit : Prop
  limitRelation : Prop

structure BibasicAskeyEvidence (C : BibasicAskeyConnection) where
  limitClosed : C.limitRelation
  mappingClosed : C.connectsViaLimit

structure BibasicAskeyClosed (C : BibasicAskeyConnection) : Prop where
  limit : C.limitRelation
  mapping : C.connectsViaLimit

theorem bibasic_askey_closed_from_evidence (C : BibasicAskeyConnection) (E : BibasicAskeyEvidence C) : BibasicAskeyClosed C := by
  exact ⟨E.limitClosed, E.mappingClosed⟩

end BibasicFunctionsMultipleBasesCanonicalLaneLean
end HautevilleHouse