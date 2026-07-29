import BraidGroupsArtinGroupsCanonicalLaneLean.GarsideStructure

namespace HautevilleHouse
namespace BraidGroupsArtinGroupsCanonicalLaneLean

structure NormalFormPackage {B : BraidGroupPackage} {P : ArtinGroupPresentationPackage B}
    {G : GarsideStructurePackage} where
  normalFormUnique : Prop
  greedyAlgorithmTerminates : Prop
  geodesicLengthComputed : Prop

structure NormalFormEvidence {B : BraidGroupPackage} {P : ArtinGroupPresentationPackage B}
    {G : GarsideStructurePackage} (N : NormalFormPackage) where
  normalFormUniqueClosed : N.normalFormUnique
  greedyAlgorithmTerminatesClosed : N.greedyAlgorithmTerminates
  geodesicLengthComputedClosed : N.geodesicLengthComputed

def NormalFormClosed {B : BraidGroupPackage} {P : ArtinGroupPresentationPackage B}
    {G : GarsideStructurePackage} (N : NormalFormPackage) : Prop :=
  N.normalFormUnique ∧ N.greedyAlgorithmTerminates ∧ N.geodesicLengthComputed

theorem normal_form_closed_from_evidence
    {B : BraidGroupPackage} {P : ArtinGroupPresentationPackage B}
    {G : GarsideStructurePackage} (N : NormalFormPackage)
    (E : NormalFormEvidence N) : NormalFormClosed N := by
  exact And.intro E.normalFormUniqueClosed (And.intro E.greedyAlgorithmTerminatesClosed E.geodesicLengthComputedClosed)

end BraidGroupsArtinGroupsCanonicalLaneLean
end HautevilleHouse