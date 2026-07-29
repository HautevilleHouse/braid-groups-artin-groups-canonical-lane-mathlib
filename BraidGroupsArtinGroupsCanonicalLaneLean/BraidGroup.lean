import BraidGroupsArtinGroupsCanonicalLaneLean.CoxeterPresentation

/-!
# Braid Group Package
-/

namespace HautevilleHouse
namespace BraidGroupsArtinGroupsCanonicalLaneLean

structure BraidGroupPackage {M : CoxeterMatrix} (P : CoxeterPresentationPackage M) where
  braidGroup : Type u
  generators : List (braidGroup)
  braidRelations : Prop
  pureBraidSubgroup : Type v
  centerDescription : Prop
  bnsInvariant : Prop

def BraidGroupClosed {M : CoxeterMatrix} {P : CoxeterPresentationPackage M} (B : BraidGroupPackage P) : Prop :=
  B.braidRelations ∧ B.centerDescription ∧ B.bnsInvariant

structure BraidGroupEvidence {M : CoxeterMatrix} {P : CoxeterPresentationPackage M} (B : BraidGroupPackage P) where
  braidRelationsClosed : B.braidRelations
  centerDescriptionClosed : B.centerDescription
  bnsInvariantClosed : B.bnsInvariant

theorem braid_group_closed_from_evidence
    {M : CoxeterMatrix} {P : CoxeterPresentationPackage M}
    (B : BraidGroupPackage P) (E : BraidGroupEvidence B) : BraidGroupClosed B := by
  exact And.intro E.braidRelationsClosed
    (And.intro E.centerDescriptionClosed E.bnsInvariantClosed)

end BraidGroupsArtinGroupsCanonicalLaneLean
end HautevilleHouse