import BraidGroupsArtinGroupsCanonicalLaneLean.CoxeterPresentation

/-!
# Artin Group Package
-/

namespace HautevilleHouse
namespace BraidGroupsArtinGroupsCanonicalLaneLean

structure ArtinGroupPackage {M : CoxeterMatrix} (P : CoxeterPresentationPackage M) where
  artinGroup : Type u
  generators : List (artinGroup)
  artinRelations : Prop
  pureArtinSubgroup : Type v
  centerDescription : Prop
  krammerRepresentation : Prop
  solutionConjugacyProblem : Prop

def ArtinGroupClosed {M : CoxeterMatrix} {P : CoxeterPresentationPackage M} (A : ArtinGroupPackage P) : Prop :=
  A.artinRelations ∧ A.krammerRepresentation ∧ A.solutionConjugacyProblem

structure ArtinGroupEvidence {M : CoxeterMatrix} {P : CoxeterPresentationPackage M} (A : ArtinGroupPackage P) where
  artinRelationsClosed : A.artinRelations
  krammerRepresentationClosed : A.krammerRepresentation
  solutionConjugacyProblemClosed : A.solutionConjugacyProblem

theorem artin_group_closed_from_evidence
    {M : CoxeterMatrix} {P : CoxeterPresentationPackage M}
    (A : ArtinGroupPackage P) (E : ArtinGroupEvidence A) : ArtinGroupClosed A := by
  exact And.intro E.artinRelationsClosed
    (And.intro E.krammerRepresentationClosed E.solutionConjugacyProblemClosed)

end BraidGroupsArtinGroupsCanonicalLaneLean
end HautevilleHouse