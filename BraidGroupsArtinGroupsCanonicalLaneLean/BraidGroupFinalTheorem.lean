import BraidGroupsArtinGroupsCanonicalLaneLean.BraidGroupGateLemmas

namespace HautevilleHouse
namespace BraidGroupsArtinGroupsCanonicalLaneLean

def ConstrainedBraidGroupClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_braid_group_endgame (A : AdmissibleClass) :
    ConstrainedBraidGroupClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BraidGroupsArtinGroupsCanonicalLaneLean
end HautevilleHouse
