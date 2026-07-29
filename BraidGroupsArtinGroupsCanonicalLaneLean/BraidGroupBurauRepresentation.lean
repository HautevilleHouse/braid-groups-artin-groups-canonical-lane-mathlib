import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BraidGroupsArtinGroupsCanonicalLaneLean

structure BurauRepresentation (n : ℕ) where
  representationSpace : Type u
  linearAction : Type v
  faithfulnessQuestion : Prop
  reducedRepresentation : Type w
  linearActionClosed : linearAction
  reducedRepresentationClosed : reducedRepresentation

structure BurauRepresentationEvidence (n : ℕ) (B : BurauRepresentation n) where
  linearActionClosed : B.linearActionClosed
  reducedRepresentationClosed : B.reducedRepresentationClosed

def BurauRepresentationClosed (n : ℕ) (B : BurauRepresentation n) : Prop :=
  B.linearAction ∧ B.reducedRepresentation

theorem burau_representation_closed_from_evidence (n : ℕ) (B : BurauRepresentation n)
    (E : BurauRepresentationEvidence n B) : BurauRepresentationClosed n B := by
  exact And.intro E.linearActionClosed E.reducedRepresentationClosed

end BraidGroupsArtinGroupsCanonicalLaneLean
end HautevilleHouse