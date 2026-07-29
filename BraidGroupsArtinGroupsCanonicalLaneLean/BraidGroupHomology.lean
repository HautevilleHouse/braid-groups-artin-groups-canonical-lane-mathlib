import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BraidGroupsArtinGroupsCanonicalLaneLean.ArtinGroupClassification

namespace HautevilleHouse
namespace BraidGroupsArtinGroupsCanonicalLaneLean

structure BraidGroupHomologyPackage (P : BraidGroupPresentation n) where
  homologyGroups : ℕ → Type
  additivelyGenerated : Prop
  torsionPart : Prop
  freePart : Prop
  homologyComputed : Prop

structure BraidGroupHomologyEvidence {P : BraidGroupPresentation n} (H : BraidGroupHomologyPackage P) where
  additivelyGeneratedClosed : H.additivelyGenerated
  torsionPartClosed : H.torsionPart
  freePartClosed : H.freePart
  homologyComputedClosed : H.homologyComputed

def BraidGroupHomologyClosed {P : BraidGroupPresentation n} (H : BraidGroupHomologyPackage P) : Prop :=
  H.additivelyGenerated ∧ H.torsionPart ∧ H.freePart ∧ H.homologyComputed

theorem braid_group_homology_closed_from_evidence
    {P : BraidGroupPresentation n} (H : BraidGroupHomologyPackage P) (E : BraidGroupHomologyEvidence H) :
    BraidGroupHomologyClosed H := by
  exact And.intro E.additivelyGeneratedClosed
    (And.intro E.torsionPartClosed
      (And.intro E.freePartClosed E.homologyComputedClosed))

end BraidGroupsArtinGroupsCanonicalLaneLean
end HautevilleHouse