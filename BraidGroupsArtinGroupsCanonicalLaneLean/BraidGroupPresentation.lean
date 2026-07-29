import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BraidGroupsArtinGroupsCanonicalLaneLean

structure ArtinGenerator (n : ℕ) where
  index : Fin (n-1)

structure BraidRelation (n : ℕ) where
  lhs : List (ArtinGenerator n)
  rhs : List (ArtinGenerator n)
  isBraidRelation : Prop

structure BraidGroupPresentation (n : ℕ) where
  generators : List (ArtinGenerator n)
  relations : List (BraidRelation n)
  generatingSet : Prop
  relationSet : Prop
  groupDefined : Prop

structure BraidGroupPresentationEvidence (n : ℕ) (B : BraidGroupPresentation n) where
  generatingSetClosed : B.generatingSet
  relationSetClosed : B.relationSet
  groupDefinedClosed : B.groupDefined

def BraidGroupPresentationClosed (n : ℕ) (B : BraidGroupPresentation n) : Prop :=
  B.generatingSet ∧ B.relationSet ∧ B.groupDefined

theorem braid_group_presentation_closed_from_evidence (n : ℕ)
    (B : BraidGroupPresentation n) (E : BraidGroupPresentationEvidence n B) :
    BraidGroupPresentationClosed n B := by
  exact And.intro E.generatingSetClosed (And.intro E.relationSetClosed E.groupDefinedClosed)

end BraidGroupsArtinGroupsCanonicalLaneLean
end HautevilleHouse