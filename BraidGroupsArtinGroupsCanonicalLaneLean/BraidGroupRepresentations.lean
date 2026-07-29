import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BraidGroupsArtinGroupsCanonicalLaneLean.BraidGroupHomology

namespace HautevilleHouse
namespace BraidGroupsArtinGroupsCanonicalLaneLean

structure BraidGroupRepresentationPackage (P : BraidGroupPresentation n) where
  burauRepresentation : Prop
  ivanovRepresentation : Prop
  krammerBigelowRepresentation : Prop
  linearityEstablished : Prop
  faithfulnessDecided : Prop

structure BraidGroupRepresentationEvidence {P : BraidGroupPresentation n} (R : BraidGroupRepresentationPackage P) where
  burauRepresentationClosed : R.burauRepresentation
  ivanovRepresentationClosed : R.ivanovRepresentation
  krammerBigelowRepresentationClosed : R.krammerBigelowRepresentation
  linearityEstablishedClosed : R.linearityEstablished
  faithfulnessDecidedClosed : R.faithfulnessDecided

def BraidGroupRepresentationClosed {P : BraidGroupPresentation n} (R : BraidGroupRepresentationPackage P) : Prop :=
  R.burauRepresentation ∧ R.ivanovRepresentation ∧ R.krammerBigelowRepresentation ∧ R.linearityEstablished ∧ R.faithfulnessDecided

theorem braid_group_representation_closed_from_evidence
    {P : BraidGroupPresentation n} (R : BraidGroupRepresentationPackage P) (E : BraidGroupRepresentationEvidence R) :
    BraidGroupRepresentationClosed R := by
  exact And.intro E.burauRepresentationClosed
    (And.intro E.ivanovRepresentationClosed
      (And.intro E.krammerBigelowRepresentationClosed
        (And.intro E.linearityEstablishedClosed E.faithfulnessDecidedClosed)))

end BraidGroupsArtinGroupsCanonicalLaneLean
end HautevilleHouse