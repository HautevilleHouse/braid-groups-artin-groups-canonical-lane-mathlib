import BraidGroupsArtinGroupsCanonicalLaneLean.BraidGroupDefinition

namespace HautevilleHouse
namespace BraidGroupsArtinGroupsCanonicalLaneLean

structure BurauRepresentationPackage {n : ℕ} (B : BraidGroupPackage n) where
  targetGroup : Type
  homomorphism : B.generators → targetGroup
  wellDefined : Prop
  faithful : Prop

structure BurauRepresentationEvidence {n : ℕ} {B : BraidGroupPackage n} (R : BurauRepresentationPackage B) where
  wellDefinedClosed : R.wellDefined
  faithfulClosed : R.faithful

def BurauRepresentationClosed {n : ℕ} {B : BraidGroupPackage n} (R : BurauRepresentationPackage B) : Prop :=
  R.wellDefined ∧ R.faithful

theorem burau_representation_closed_from_evidence {n : ℕ} {B : BraidGroupPackage n} (R : BurauRepresentationPackage B) (E : BurauRepresentationEvidence R) :
    BurauRepresentationClosed R := by
  exact And.intro E.wellDefinedClosed E.faithfulClosed

end BraidGroupsArtinGroupsCanonicalLaneLean
end HautevilleHouse