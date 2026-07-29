import BraidGroupsArtinGroupsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BraidGroupsArtinGroupsCanonicalLaneLean

structure BraidGroupPackage (n : ℕ) where
  generators : Fin (n-1) → Type
  relations : Prop
  presentationSatisfied : Prop

structure BraidGroupEvidence {n : ℕ} (B : BraidGroupPackage n) where
  generatorsDefined : True
  relationsHeld : B.relations
  presentationClosed : B.presentationSatisfied

def BraidGroupClosed {n : ℕ} (B : BraidGroupPackage n) : Prop :=
  B.relations ∧ B.presentationSatisfied

theorem braid_group_closed_from_evidence {n : ℕ} (B : BraidGroupPackage n) (E : BraidGroupEvidence B) :
    BraidGroupClosed B := by
  exact And.intro E.relationsHeld E.presentationClosed

end BraidGroupsArtinGroupsCanonicalLaneLean
end HautevilleHouse