import BraidGroupsArtinGroupsCanonicalLaneLean.CoxeterPresentation

namespace HautevilleHouse
namespace BraidGroupsArtinGroupsCanonicalLaneLean

structure GarsideMonoid (G : Type) [Monoid G] where
  delta : G
  divisorSet : Set G
  atoms : Set G
  finiteDivisorSet : Finset G
  greedinessProperty : Prop
  normalFormExists : Prop

structure GarsideStructure (n : ℕ) (P : ArtinGroupPresentation n) where
  monoid : GarsideMonoid (P.generators 0)  -- simplified, actually need group
  normalFormAlgorithm : Prop
  uniqueness : Prop
  conjugacySolved : Prop

structure GarsideEvidence (n : ℕ) (P : ArtinGroupPresentation n) (G : GarsideStructure n P) where
  normalFormAlgorithmClosed : G.normalFormAlgorithm
  uniquenessClosed : G.uniqueness
  conjugacySolvedClosed : G.conjugacySolved

def GarsideStructureClosed (n : ℕ) (P : ArtinGroupPresentation n) (G : GarsideStructure n P) : Prop :=
  G.normalFormAlgorithm ∧ G.uniqueness ∧ G.conjugacySolved

theorem garside_structure_closed_from_evidence (n : ℕ) (P : ArtinGroupPresentation n)
    (G : GarsideStructure n P) (E : GarsideEvidence n P G) : GarsideStructureClosed n P G := by
  exact And.intro E.normalFormAlgorithmClosed (And.intro E.uniquenessClosed E.conjugacySolvedClosed)

end BraidGroupsArtinGroupsCanonicalLaneLean
end HautevilleHouse