import BraidGroupsArtinGroupsCanonicalLaneLean.ArtinGroupPresentation

namespace HautevilleHouse
namespace BraidGroupsArtinGroupsCanonicalLaneLean

structure GarsideStructurePackage {B : BraidGroupPackage} {P : ArtinGroupPresentationPackage B} where
  garsideElement : Type u
  divisibilityLattice : Prop
  normalFormExists : Prop
  solutionWordProblem : Prop

structure GarsideStructureEvidence {B : BraidGroupPackage} {P : ArtinGroupPresentationPackage B}
    (G : GarsideStructurePackage) where
  garsideElementClosed : True
  divisibilityLatticeClosed : G.divisibilityLattice
  normalFormExistsClosed : G.normalFormExists
  solutionWordProblemClosed : G.solutionWordProblem

def GarsideStructureClosed {B : BraidGroupPackage} {P : ArtinGroupPresentationPackage B}
    (G : GarsideStructurePackage) : Prop :=
  G.divisibilityLattice ∧ G.normalFormExists ∧ G.solutionWordProblem

theorem garside_structure_closed_from_evidence
    {B : BraidGroupPackage} {P : ArtinGroupPresentationPackage B}
    (G : GarsideStructurePackage) (E : GarsideStructureEvidence G) :
    GarsideStructureClosed G := by
  exact And.intro E.divisibilityLatticeClosed (And.intro E.normalFormExistsClosed E.solutionWordProblemClosed)

end BraidGroupsArtinGroupsCanonicalLaneLean
end HautevilleHouse