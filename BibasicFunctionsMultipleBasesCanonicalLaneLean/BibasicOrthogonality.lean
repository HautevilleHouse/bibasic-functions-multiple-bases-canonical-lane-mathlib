import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BibasicFunctionsMultipleBasesCanonicalLaneLean.BibasicTransformationFormulas

namespace HautevilleHouse
namespace BibasicFunctionsMultipleBasesCanonicalLaneLean

structure BibasicOrthogonalityPackage where
  weightFunction : Type u
  measure : Type v
  orthogonalPolynomials : List (ℕ → ℝ)
  orthogonalityRelation : Prop
  recurrenceRelation : Prop

structure BibasicOrthogonalityEvidence (O : BibasicOrthogonalityPackage) where
  orthogonalityRelationClosed : O.orthogonalityRelation
  recurrenceRelationClosed : O.recurrenceRelation

def BibasicOrthogonalityClosed (O : BibasicOrthogonalityPackage) : Prop :=
  O.orthogonalityRelation ∧ O.recurrenceRelation

theorem bibasic_orthogonality_closed_from_evidence
    (O : BibasicOrthogonalityPackage) (E : BibasicOrthogonalityEvidence O) :
    BibasicOrthogonalityClosed O := by
  exact And.intro E.orthogonalityRelationClosed E.recurrenceRelationClosed

end BibasicFunctionsMultipleBasesCanonicalLaneLean
end HautevilleHouse