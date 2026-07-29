import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BraidGroupsArtinGroupsCanonicalLaneLean

structure ArtinGroupPresentation where
  I : Type
  CoxeterMatrix : I → I → ℕ
  generators : List String
  relations : List String
  coxeterRelationValid : Prop

structure ArtinPresentationEvidence (A : ArtinGroupPresentation) where
  coxeterRelationValidClosed : A.coxeterRelationValid

def ArtinPresentationClosed (A : ArtinGroupPresentation) : Prop :=
  A.coxeterRelationValid

theorem artin_presentation_closed_from_evidence (A : ArtinGroupPresentation)
    (E : ArtinPresentationEvidence A) : ArtinPresentationClosed A := by
  exact E.coxeterRelationValidClosed

end BraidGroupsArtinGroupsCanonicalLaneLean
end HautevilleHouse
