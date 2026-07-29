import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BraidGroupsArtinGroupsCanonicalLaneLean

structure BraidNormalForm (n : ℕ) where
  normalFormType : Type u
  uniqueness : Prop
  geodesicRepresentation : Prop
  uniquenessClosed : uniqueness
  geodesicRepresentationClosed : geodesicRepresentation

structure BraidNormalFormEvidence (n : ℕ) (B : BraidNormalForm n) where
  uniquenessClosed : B.uniquenessClosed
  geodesicRepresentationClosed : B.geodesicRepresentationClosed

def BraidNormalFormClosed (n : ℕ) (B : BraidNormalForm n) : Prop :=
  B.uniqueness ∧ B.geodesicRepresentation

theorem braid_normal_form_closed_from_evidence (n : ℕ) (B : BraidNormalForm n)
    (E : BraidNormalFormEvidence n B) : BraidNormalFormClosed n B := by
  exact And.intro E.uniquenessClosed E.geodesicRepresentationClosed

end BraidGroupsArtinGroupsCanonicalLaneLean
end HautevilleHouse