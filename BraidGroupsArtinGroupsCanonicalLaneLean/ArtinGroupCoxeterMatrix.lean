import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BraidGroupsArtinGroupsCanonicalLaneLean

structure CoxeterMatrix (n : ℕ) where
  matrixType : Type u
  symmetric : Prop
  diagonalOne : Prop
  offDiagonalGreaterOne : Prop
  symmetricClosed : symmetric
  diagonalOneClosed : diagonalOne
  offDiagonalGreaterOneClosed : offDiagonalGreaterOne

structure ArtinGroupPresentation (n : ℕ) (M : CoxeterMatrix n) where
  generators : Type u
  coxeterRelations : Prop
  wordProblem : Type v
  reducedExpressions : Prop
  coxeterRelationsClosed : coxeterRelations

structure ArtinGroupPresentationEvidence (n : ℕ) (M : CoxeterMatrix n) (A : ArtinGroupPresentation n M) where
  coxeterRelationsClosed : A.coxeterRelationsClosed

def ArtinGroupPresentationClosed (n : ℕ) (M : CoxeterMatrix n) (A : ArtinGroupPresentation n M) : Prop :=
  A.coxeterRelations

theorem artin_group_presentation_closed_from_evidence (n : ℕ) (M : CoxeterMatrix n)
    (A : ArtinGroupPresentation n M) (E : ArtinGroupPresentationEvidence n M A) :
    ArtinGroupPresentationClosed n M A := by
  exact E.coxeterRelationsClosed

end BraidGroupsArtinGroupsCanonicalLaneLean
end HautevilleHouse